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
      image_path = $1
      alt_text = $4 || File.basename(image_path, File.extname(image_path))
      
      # Determine the base path for this document
      if doc.path.include?('/_notes/')
        # Extract the relative path from _notes directory
        relative_path = doc.path.split('/_notes/')[1]
        # Get the directory of the current document relative to _notes
        doc_dir = File.dirname(relative_path)
        
        # If image_path is relative (starts with assets/), use it relative to the document
        if image_path.start_with?('assets/')
          full_image_path = "#{doc_dir}/#{image_path}"
        else
          # If it's just a filename, look in the document's assets folder first,
          # then fall back to the old location
          doc_assets_path = File.join(File.dirname(doc.path), 'assets', image_path)
          if File.exist?(doc_assets_path)
            full_image_path = "#{doc_dir}/assets/#{image_path}"
          else
            full_image_path = "assets/images/#{image_path}"
          end
        end
      else
        # For pages not in _notes, use the old path
        full_image_path = "assets/images/#{image_path}"
      end
      
      # Convert to Jekyll format with proper path
      "![#{alt_text}]({{ site.baseurl }}/_notes/#{full_image_path})"
    end
  end
end
