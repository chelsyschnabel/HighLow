# High Low site source

This folder holds the source for the High Low GitHub Pages site. The probability version's teacher edition lives in `probability-teacher-edition.qmd`, and every commit to this folder rebuilds three outputs:

- a printable web page
- a Word file (editable)
- a PDF (print)

## Editing

1. Open `probability-teacher-edition.qmd` on GitHub and click the pencil icon.
2. Make your changes and commit.
3. The "Build and publish the High Low site" action runs automatically. Check its progress on the Actions tab.

Text inside `<!-- -->` is a note to yourself and never appears in the outputs.

## One-time setup

1. Copy `site/` and `.github/` into the root of the HighLow repository.
2. In the repository, go to Settings, then Pages, and set Source to "GitHub Actions."
3. Commit. The site publishes at https://chelsyschnabel.github.io/HighLow/

## Previewing on your computer (optional)

Install Quarto from https://quarto.org, then run `quarto preview site` from the repository root.

## Adding pages

Each version of the lesson gets its own page (for example, a future `python-teacher-edition.qmd` or `r-teacher-edition.qmd`). Add the new file to the `render:` list and the navbar in `_quarto.yml`, and link it from `index.qmd`.

## Files

| File | Purpose |
| --- | --- |
| `_quarto.yml` | Site settings, navigation, and the list of pages to build |
| `index.qmd` | Home page |
| `probability-teacher-edition.qmd` | Teacher edition source, probability version only |
| `styles.css` | Print layout for the web page |
| `images/cc-by.png` | License badge |
