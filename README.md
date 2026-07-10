# GovDeck

GovDeck is a lightweight, Git-friendly presentation system.

## Architecture

- `content/` contains slide content
- `layouts/` contains Vue-style single file slide components
- `index.html` is the runtime renderer

## Structure

```text
.
├── index.html
├── content/
│   └── slides.md
├── layouts/
│   └── agenda-item.slide
├── watch.sh
├── serve.sh
└── README.md
```

## Layout format

```html
<template>
  <h1>{{title}}</h1>
  <div>{{content}}</div>
</template>

<style>
h1 { font-size: 5rem; }
</style>
```

## Slide format

```markdown
===slide===
layout: agenda-item
title: Introduction
speaker: Welcome Session
time: 09:00 - 09:15

Overview of the day.
```

## Development

```bash
./serve.sh
./watch.sh
```

The watcher preserves `.git` and local `content/`.
