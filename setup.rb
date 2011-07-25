require 'fileutils'

OLD_FILES_DIR = 'old_files'
DOT_FILES_DIR = 'dot_files'

Dir.glob '*[^setup\.rb]' do |filename| 
  old_file = "../.#{filename}"

  if File.exist?(old_file) or File.symlink?(old_file)
    FileUtils.rm old_file
  end

  File.symlink "#{DOT_FILES_DIR}/#{filename}", old_file
end
