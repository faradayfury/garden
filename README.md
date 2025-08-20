# faraday's garden

A personal website and digital garden showcasing design work, thoughts, and photography. Built with Jekyll and designed for thoughtful exploration of ideas and creative work.

## About

This is my personal space on the internet where I share:

- **Design work**: Case studies and reflections from my time leading design at Devfolio and beyond
- **Photography**: Visual documentation of the world around me, captured with my Fujifilm X100F and iPhone
- **Thoughts**: A growing collection of ideas, insights, and learnings organized as interconnected notes

After three years of leading design at Devfolio, I'm on a sabbatical to step deeper into what it means to design with care. This garden is both a portfolio and a public notebook—a place to think out loud about design, creativity, and the intersection of human needs and technology.

## Features

This digital garden is built on Jekyll with several enhancements:

- **Bidirectional linking**: Connect ideas using `[[double bracket]]` syntax
- **Backlinks**: Automatically generated connections between related notes
- **Link previews**: Hover over links to see note previews
- **Photography gallery**: Curated collection with lightbox viewing
- **Responsive design**: Works beautifully on mobile and desktop
- **Fast loading**: Optimized for performance with compressed assets

## Technical Details

### Built With

- **Jekyll** - Static site generator
- **Liquid** - Templating language
- **Sass** - CSS preprocessing
- **JavaScript** - Interactive elements and graph visualization
- **Vercel** - Deployment platform

### Custom Features

- Photography lightbox with metadata display
- Work timeline with date-based sorting
- Custom Obsidian-style image handling
- Responsive grid layouts
- Dark/light mode support via CSS custom properties

## Development

### Prerequisites

- Ruby 3.0+
- Bundler gem
- Jekyll 4.0+

### Local Setup

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd digital-garden-jekyll-template
   ```

2. **Install dependencies**

   ```bash
   bundle install
   ```

3. **Run the development server**

   ```bash
   bundle exec jekyll serve
   ```

   The site will be available at `http://localhost:4000`

4. **Watch for changes**
   ```bash
   bundle exec jekyll serve --livereload
   ```

### Project Structure

```
├── _config.yml          # Jekyll configuration
├── _data/               # Data files (photos.yml)
├── _includes/           # Reusable template parts
├── _layouts/            # Page layouts
├── _notes/              # Individual notes/posts
│   └── assets/          # Note-specific images
├── _pages/              # Static pages
├── _plugins/            # Custom Jekyll plugins
├── _sass/               # Sass stylesheets
├── assets/              # Global assets (fonts, images)
└── styles.scss          # Main stylesheet
```

## Deployment

This site is configured for **Vercel** deployment:

### Automatic Deployment

1. Connect your repository to Vercel
2. Vercel will automatically build and deploy on every push to main
3. The `vercel.json` configuration handles Jekyll build settings

### Manual Deployment

```bash
# Build the site
bundle exec jekyll build

# Deploy the _site folder to your hosting platform
```

### Environment Variables

No environment variables are required for basic functionality.

## Content Management

### Adding Notes

1. Create a new `.md` file in `_notes/`
2. Add front matter with title and date:
   ```yaml
   ---
   title: Your Note Title
   date: 2024-01-01
   ---
   ```
3. Write your content using Markdown
4. Use `[[Note Title]]` to link to other notes

### Adding Photos

1. Add images to `assets/photos/`
2. Update `_data/photos.yml` with metadata:
   ```yaml
   photos:
     - filename: your-photo.jpg
       caption: "Photo description"
       location: "Location"
       date: "Date taken"
       bio: "Additional context"
       alt: "Alt text for accessibility"
   ```

### Customization

- **Colors**: Edit CSS custom properties in `_sass/_style.scss`
- **Fonts**: Replace font files in `assets/` and update CSS
- **Layout**: Modify templates in `_layouts/` and `_includes/`
- **Content**: Update `_pages/index.md` for homepage content

## License

Source code is available under the [MIT license](LICENSE.md).
