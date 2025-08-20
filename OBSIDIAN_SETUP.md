# Obsidian Integration Setup

This digital garden is configured to work seamlessly with Obsidian. You can edit markdown files in Obsidian, add images, and everything will work automatically when the site builds.

## File Organization

### Images

- **Store all images in**: `_notes/assets/images/`
- **Reference in markdown**: Use Obsidian's `![[image.png]]` syntax
- **Jekyll automatically converts** these to proper HTML during build

### Notes

- **Store all notes in**: `_notes/`
- **Subfolders are supported**: e.g., `_notes/topics/my-note.md`

## Obsidian Configuration

The repository includes an `.obsidian/app.json` file with these settings:

```json
{
  "attachmentFolderPath": "_notes/assets/images",
  "newFileLocation": "_notes",
  "newFileFolderPath": "_notes",
  "useMarkdownLinks": true,
  "alwaysUpdateLinks": true
}
```

### Key Settings Explained

- **attachmentFolderPath**: All images pasted/added will go to `_notes/assets/images/`
- **newFileLocation**: New notes will be created in `_notes/`
- **useMarkdownLinks**: Enables `![[]]` syntax for images
- **alwaysUpdateLinks**: Automatically updates links when you move files

## Workflow

### Adding Images

1. **Paste or drag images into Obsidian** - they'll automatically go to `_notes/assets/images/`
2. **Use Obsidian syntax**: `![[my-image.png]]` or `![[my-image.png|Alt text]]`
3. **Jekyll automatically converts** to: `![Alt text]({{ site.baseurl }}/_notes/assets/images/my-image.png)`

### Creating Notes

1. **Create `.md` files in `_notes/`** or subfolders
2. **Use Obsidian's `[[Note Title]]` syntax** for internal links
3. **Jekyll automatically converts** these to proper HTML links

### Supported Image Formats

- PNG (`.png`)
- JPEG (`.jpg`, `.jpeg`)
- GIF (`.gif`)
- WebP (`.webp`)
- SVG (`.svg`)

## How It Works

### Jekyll Plugins

1. **`obsidian_image_converter.rb`**: Converts `![[image.png]]` to Jekyll format
2. **`bidirectional_links_generator.rb`**: Converts `[[Note Title]]` to Jekyll links

### During Build

1. Jekyll reads your markdown files
2. Plugins convert Obsidian syntax to Jekyll/HTML
3. Images are served from `_notes/assets/images/`
4. Your digital garden works perfectly!

## Best Practices

### File Naming

- Use descriptive names for images
- Avoid spaces in filenames (use `-` or `_`)
- Keep image files reasonably sized

### Organization

- Create subfolders in `_notes/` for different topics
- Keep related images and notes together conceptually
- Use consistent naming conventions

### Git Workflow

- Commit both markdown files and images
- Images in `_notes/assets/images/` are tracked by git
- Your entire digital garden stays in sync

## Troubleshooting

### Images Not Showing

1. Check image is in `_notes/assets/images/`
2. Verify filename in markdown matches exactly
3. Ensure Jekyll build completed successfully

### Links Not Working

1. Check note exists in `_notes/` (or subfolder)
2. Verify filename matches link text
3. Rebuild Jekyll site

### Obsidian Settings Reset

- The `.obsidian/app.json` file should maintain your settings
- If reset, reconfigure:
  - Files & Links > Default location for new attachments: `_notes/assets/images`
  - Files & Links > Default location for new notes: `_notes`

## Example

Create a note in `_notes/my-example.md`:

```markdown
---
title: My Example Note
---

# My Example Note

Here's an image:
![[example-image.png]]

Here's a link to another note:
[[Another Note]]
```

When you paste an image in Obsidian, it automatically:

1. Saves to `_notes/assets/images/example-image.png`
2. Creates the `![[example-image.png]]` reference
3. Jekyll converts to proper HTML when building

Everything just works! 🎉
