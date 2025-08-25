---
layout: page
title: Home
id: home
permalink: /
---

<div class="homepage-container">
  
  <img src="{{ site.baseurl }}/assets/image.png" alt="Header image" style="width: 100%; height: auto; margin-bottom: 56px;" loading="lazy">
  
  <section class="section section-about">
    <div class="section-title">about me</div>
    <p class="section-content">
      i believe the only way to do good work is to care deeply.
      <br><br>
      after three years of leading design at <a href="https://devfolio.co/discover" style="text-decoration: underline;">devfolio</a>, a part of <a href="https://2586labs.com" style="text-decoration: underline;">2586 labs</a> i realized i'd been running so fast that i'd forgotten why i started walking. so i'm on a sabbatical—not to step away from design, but to step deeper into it.
      <br><br>
      i'm drawn to the fundamental questions: what does it mean to design with care? how do constraints create beauty? why do some products feel alive while others feel hollow? i find answers not in trends or best practices, but in the quiet observation of how people actually live and what they genuinely need. i design from empathy, build from first principles, and believe that taking care of people—including yourself—is the foundation of meaningful work.
      <br><br>
      currently, i'm spending my time brewing iced pour overs, reading on substack, journaling, cooking dinner, learning to code, taking pictures and rediscovering what it means to work with both intensity and balance. i'm fascinated by companies like obsidian and mymind—places where philosophy and product are inseparable.
      <br><br>
      if you're building something that puts human needs before growth metrics, or if you simply want to chat about why good design feels like coming home, i'd love to hear from you.
    </p>
  </section>

  <section class="section section-work" id="work">
    <div class="section-title">my work</div>
    <p class="section-description">
      for three years, i led design at <a href="https://ethindia.co" style="text-decoration: underline;">ethindia</a> & <a href="https://devfolio.co/discover" style="text-decoration: underline;">devfolio</a> - a platform with 800k+ builders who've submitted 75k+ projects across 1,300+ hackathons. i worked directly with the ceo and head of engineering, taking projects from initial conversations through research, design, and implementation.
    </p>
    
    <div class="work-list">
      {% assign recent_notes = site.notes | sort: "date" | reverse %}
      {% for note in recent_notes %}
      <div class="work-item">
        <span class="work-date">{% if note.date %}{{ note.date | date: "%m · %Y" }}{% else %}{{ note.last_modified_at | date: "%m · %Y" }}{% endif %}</span>
        <span class="work-spacer"></span>
        <a href="{{ site.baseurl }}{{ note.url }}" class="work-title internal-link">{{ note.title | downcase }}</a>
      </div>
      {% endfor %}
      
      <div style="margin-top: 8px;">
        <span style="color: var(--color-subtext); font-style: italic; text-decoration: none;">more coming soon</span>
      </div>
    </div>
  </section>

  <section class="section section-photography">
    <div class="section-title">photos</div>
    <p class="section-description">
      this is where it all started, i like to document the world i see around myself with my <span class="camera-link" style="text-decoration: underline;">fujifilm x100f</span> and iphone.
    </p>
    
    <div class="photo-grid">
      {% for photo in site.data.photos.photos %}
        <div class="photo-item" 
             data-caption="{{ photo.caption | escape }}" 
             data-location="{{ photo.location | escape }}" 
             data-date="{{ photo.date | escape }}"
             data-bio="{{ photo.bio | escape }}"
             data-src="{{ site.baseurl }}/assets/photos/{{ photo.filename }}"
             onclick="openLightbox(this)">
          <img src="{{ site.baseurl }}/assets/photos/{{ photo.filename }}" 
               alt="{{ photo.alt | escape }}" 
               loading="lazy"
               class="photo-image" />
        </div>
      {% endfor %}
      
      {% comment %}
      Add placeholder divs if we have fewer than 16 photos to maintain grid layout
      {% endcomment %}
      {% assign placeholder_count = 16 | minus: site.data.photos.photos.size %}
      {% if placeholder_count > 0 %}
        {% for i in (1..placeholder_count) %}
          <div class="photo-placeholder"></div>
        {% endfor %}
      {% endif %}
    </div>
  </section>

</div>

<!-- Photo Lightbox -->
<div class="photo-lightbox" id="photoLightbox" onclick="closeLightbox(event)">
  <div class="lightbox-content">
    <button class="lightbox-close" onclick="closeLightbox()">&times;</button>
    <img class="lightbox-image" id="lightboxImage" src="" alt="">
    <div class="lightbox-info" id="lightboxInfo">
      <div class="lightbox-caption" id="lightboxCaption"></div>
      <div class="lightbox-meta" id="lightboxMeta"></div>
      <div class="lightbox-bio" id="lightboxBio"></div>
    </div>
  </div>
</div>

<script>
function openLightbox(element) {
  const lightbox = document.getElementById('photoLightbox');
  const image = document.getElementById('lightboxImage');
  const caption = document.getElementById('lightboxCaption');
  const meta = document.getElementById('lightboxMeta');
  const bio = document.getElementById('lightboxBio');
  const info = document.getElementById('lightboxInfo');
  
  // Get data from clicked photo
  const src = element.dataset.src;
  const captionText = element.dataset.caption;
  const location = element.dataset.location;
  const date = element.dataset.date;
  const bioText = element.dataset.bio;
  
  // Set image
  image.src = src;
  image.alt = captionText;
  
  // Set caption
  caption.textContent = captionText;
  
  // Set meta information
  const metaParts = [];
  if (location) metaParts.push(location);
  if (date) metaParts.push(date);
  meta.textContent = metaParts.join(' • ');
  
  // Set bio
  bio.textContent = bioText;
  
  // Hide info section if no bio
  info.style.display = bioText ? 'block' : 'none';
  
  // Show lightbox
  lightbox.classList.add('show');
  document.body.style.overflow = 'hidden';
}

function closeLightbox(event) {
  // Don't close if clicking on the content
  if (event && event.target.closest('.lightbox-content') && !event.target.classList.contains('lightbox-close')) {
    return;
  }
  
  const lightbox = document.getElementById('photoLightbox');
  lightbox.classList.remove('show');
  document.body.style.overflow = '';
}

// Close on Escape key
document.addEventListener('keydown', function(e) {
  if (e.key === 'Escape') {
    closeLightbox();
  }
});
</script>
