# GovDeck

GovDeck is a lightweight, Git-friendly presentation system.

## Design principles

- Markdown-first content
- Simple HTML rendering engine
- Human-readable source files
- Fast iteration with AI tools
- Local-first workflow
- Presentation-focused typography
- Clear separation between content and rendering

## Project structure

```text
.
├── index.html
├── content/
│   └── slides.md
├── watch.sh
├── serve.sh
└── README.md
```

## Content workflow

Presentation content lives in:

```text
content/slides.md
```

The rendering engine lives in:

```text
index.html
```

This allows presentation content to evolve independently from the renderer.

## Sample slide format

```markdown
===slide===
# Introduction
## Welcome Session
### 09:00 - 09:15
Overview of the day and key objectives.

===slide===
# Demonstration
## Practical Example
### 09:15 - 09:45
Show how content and rendering are separated.
```

## Local development

Start a web server:

```bash
./serve.sh
```

Open:

```text
http://localhost:8000
```

## Auto deployment

Run:

```bash
./watch.sh
```

The watcher:

- Watches for new `index*.zip` files in Downloads
- Updates project files
- Preserves `.git`
- Preserves local `content/`
- Preserves local assets and working files

## Git

Recommended:

```gitignore
content/
```

This allows local presentation content to remain separate from renderer updates.
