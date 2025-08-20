# frozen_string_literal: true

# Converts Obsidian-style image links to Jekyll-compatible format
# Transforms ![[image.png]] to ![]({{ site.baseurl }}/assets/images/image.png)
# Supports various image formats and preserves alt text when provided
# MUST run before bidirectional_links_generator.rb

class ObsidianImageConverter < Jekyll::Generator
  priority :highest
  
  def generate(site)
    all_notes = site.collections['notes'].docs
    all_pages = site.pages

    all_docs = all_notes + all_pages

    all_docs.each do |doc|
      # Skip pages that aren't in _pages directory
      next if doc.is_a?(Jekyll::Page) && !doc.path.start_with?('_pages/')
      
      convert_obsidian_images(doc)
    end
  end

  private

  def convert_obsidian_images(doc)
    # Pattern to match Obsidian image syntax: ![[image.ext]] or ![[image.ext|alt text]]
    # Supports common image formats: png, jpg, jpeg, gif, webp, svg
    obsidian_image_pattern = /!\[\[([^|\]]+\.(png|jpe?g|gif|webp|svg))(\|([^\]]+))?\]\]/i
    
    doc.content.gsub!(obsidian_image_pattern) do |match|
      image_filename = $1
      alt_text = $4 || File.basename(image_filename, File.extname(image_filename))
      
      # Convert to Jekyll format with proper path
      "![#{alt_text}]({{ site.baseurl }}/_notes/assets/images/#{image_filename})"
    end
  end
end
