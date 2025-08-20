---
layout: page
title: Home
id: home
permalink: /
---

<div class="homepage-container">
  
  <section class="section section-about">
    <div class="section-title">About</div>
    <p class="section-content">
      Anish, often goes by Faraday; is a multi-disciplinary designer who cares deeply about the craft of building software. He used to head design at <a href="https://devfolio.co/discover" style="text-decoration: underline;">Devfolio</a>, <a href="https://2586labs.com" style="text-decoration: underline;">2586 Labs</a> and now on a sabbatical.
    </p>
  </section>

  <section class="section section-work">
    <div class="section-title">Work & Myself</div>
    <p class="section-description">
      Over the course of last 3 years at Devfolio (2022 - 2025) Anish has worked on countless projects, but only a few have seen the light of being featured here.
    </p>
    
    <div class="work-list">
      {% assign recent_notes = site.notes | sort: "date" | reverse %}
      {% for note in recent_notes %}
      <div class="work-item">
        <span class="work-date">{% if note.date %}{{ note.date | date: "%m · %Y" }}{% else %}{{ note.last_modified_at | date: "%m · %Y" }}{% endif %}</span>
        <span class="work-spacer"></span>
        <a href="{{ site.baseurl }}{{ note.url }}" class="work-title internal-link">{{ note.title }}</a>
      </div>
      {% endfor %}
    </div>
  </section>

  <section class="section section-photography">
    <div class="section-title">Photography</div>
    <p class="section-description">
      This is where it all started, I shoot with a FujiFilm x100F camera. I have been to multiple places throughout the world and I love taking pictures to document.
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
