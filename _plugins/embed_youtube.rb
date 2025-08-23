# frozen_string_literal: true
class YouTubeEmbedGenerator < Jekyll::Generator
  def generate(site)
    return if !site.config["embed_youtube"]

    all_notes = site.collections['notes'].docs
    all_pages = site.pages
    all_docs = all_notes + all_pages

    all_docs.each do |current_note|
      # Match YouTube URLs in various formats
      # Regular youtube.com URLs
      current_note.content.gsub!(
        /^https?:\/\/(?:www\.)?youtube\.com\/watch\?v=([a-zA-Z0-9_-]+)(?:\S*)?$/i,
        youtube_embed_html('\1')
      )
      
      # YouTube shortlink URLs (youtu.be)
      current_note.content.gsub!(
        /^https?:\/\/youtu\.be\/([a-zA-Z0-9_-]+)(?:\S*)?$/i,
        youtube_embed_html('\1')
      )
      
      # YouTube URLs with additional parameters
      current_note.content.gsub!(
        /^https?:\/\/(?:www\.)?youtube\.com\/watch\?(?:\S*&)?v=([a-zA-Z0-9_-]+)(?:&\S*)?$/i,
        youtube_embed_html('\1')
      )
    end
  end

  private

  def youtube_embed_html(video_id)
    <<~HTML
      <div class="youtube-embed-container" style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 1em 0;">
        <iframe 
          style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" 
          src="https://www.youtube.com/embed/#{video_id}" 
          frameborder="0" 
          allowfullscreen
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
        </iframe>
      </div>
    HTML
  end
end

