# frozen_string_literal: true

# Copies assets from _notes to _site/_notes recursively
# This ensures images are available at the expected URLs for all blog folders

Jekyll::Hooks.register :site, :post_write do |site|
  source_dir = File.join(site.source, '_notes')
  dest_dir = File.join(site.dest, '_notes')
  
  # Copy all assets recursively, including those in subdirectories
  if Dir.exist?(source_dir)
    FileUtils.mkdir_p(dest_dir)
    
    # Find all asset directories in _notes and its subdirectories
    Dir.glob(File.join(source_dir, '**/assets')).each do |asset_dir|
      # Calculate relative path from _notes directory
      relative_path = asset_dir.sub("#{source_dir}/", '')
      dest_asset_dir = File.join(dest_dir, relative_path)
      
      # Create destination directory structure
      FileUtils.mkdir_p(dest_asset_dir)
      
      # Copy all files from the assets directory
      if Dir.exist?(asset_dir)
        Dir.glob(File.join(asset_dir, '**/*')).each do |file_path|
          next if File.directory?(file_path)
          
          # Calculate relative path within the assets directory
          file_relative_path = file_path.sub("#{asset_dir}/", '')
          dest_file_path = File.join(dest_asset_dir, file_relative_path)
          
          # Create directory structure if needed
          FileUtils.mkdir_p(File.dirname(dest_file_path))
          
          # Copy the file
          FileUtils.cp(file_path, dest_file_path)
        end
      end
    end
  end
end
