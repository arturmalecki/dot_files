require 'fileutils'

OLD_FILES_DIR = 'old_files'
DOT_FILES_DIR = 'dot_files'

# Fetch all files without setup.rb file
Dir.glob '*[^setup\.rb]*' do |filename| 
  #Set path to old file
  old_file = "../.#{filename}"
  puts "File: #{old_file}"

  #Delete old file if exist
  if File.exist?(old_file) or File.symlink?(old_file)
    puts "File exists, deleting..."
    FileUtils.rm old_file
  end

  #Create symlink
  puts "Createing new symlink..."
  File.symlink "#{DOT_FILES_DIR}/#{filename}", old_file
  puts "*******************************************"
end
puts "Done"
