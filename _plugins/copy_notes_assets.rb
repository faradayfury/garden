# frozen_string_literal: true

# Copies assets from _notes/assets to _site/_notes/assets
# This ensures images are available at the expected URLs

Jekyll::Hooks.register :site, :post_write do |site|
  source_dir = File.join(site.source, '_notes', 'assets')
  dest_dir = File.join(site.dest, '_notes', 'assets')
  
  if Dir.exist?(source_dir)
    FileUtils.mkdir_p(dest_dir)
    FileUtils.cp_r("#{source_dir}/.", dest_dir)
  end
end
