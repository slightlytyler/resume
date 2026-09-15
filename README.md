# Tyler Martinez — Résumé

Source for my résumé, built with [RenderCV](https://rendercv.com) and published with GitHub Pages.

**Live site:** https://slightlytyler.github.io/resume/

## How it works

The résumé content and design live entirely in [`Tyler_Martinez_CV.yaml`](Tyler_Martinez_CV.yaml) — a single YAML file with four sections:

- `cv` — content (contact info, experience, summary, etc.)
- `design` — theme, colors, fonts, margins, spacing (currently the `harvard` theme)
- `locale` — language/translation strings
- `settings` — render behavior, output paths

RenderCV turns that YAML into a typeset PDF (via [Typst](https://typst.app)), plus PNG, HTML, and Markdown versions. See the [RenderCV documentation](https://docs.rendercv.com) for the full schema and all theme/design options.

Rendered output is written to [`docs/`](docs/), which is also the folder GitHub Pages serves — so publishing the site is just a matter of re-rendering and pushing.

## Rendering the CV manually

Install RenderCV (requires Python):

```bash
pip3 install "rendercv[full]"
```

(RenderCV's docs suggest `uv tool install "rendercv[full]"` if you have [uv](https://docs.astral.sh/uv/) — `pip3` is the more broadly available option.)

Render:

```bash
rendercv render Tyler_Martinez_CV.yaml
```

This regenerates everything in `docs/`: `Tyler_Martinez_CV.pdf`, `.html`, `.md`, `.typ`, and a PNG preview per page.

Useful variants:

```bash
# Auto re-render whenever the YAML changes
rendercv render Tyler_Martinez_CV.yaml --watch

# Quick PNG-only preview (skip PDF/HTML/Markdown) to check layout/page count fast
rendercv render Tyler_Martinez_CV.yaml --dont-generate-pdf --dont-generate-html --dont-generate-markdown
```

## Deploying to GitHub Pages

GitHub Pages is already configured on this repo to serve from the `main` branch, `/docs` folder. That means deploying is just:

```bash
rendercv render Tyler_Martinez_CV.yaml
git add -A
git commit -m "Update résumé"
git push
```

Pages redeploys automatically on every push to `main` — no separate build step. `docs/index.html` is a small static landing page that embeds `docs/Tyler_Martinez_CV.pdf` (with a download button), falling back to `docs/Tyler_Martinez_CV_1.png` on mobile browsers that can't render embedded PDFs inline.

If Pages ever needs to be re-enabled from scratch (e.g. a new repo) via the API:

```bash
gh api repos/<owner>/<repo>/pages -X POST -f "source[branch]=main" -f "source[path]=/docs"
```

> **Note:** if your GitHub account's primary `<username>.github.io` site has a custom domain configured, GitHub Pages will redirect *every* `<username>.github.io/*` URL — including other project sites like this one — to that custom domain. If that domain doesn't serve the project's path, the site will appear unreachable. Fix by clearing the custom domain on the primary site (`gh api repos/<owner>/<username>.github.io/pages -X PUT -f "cname="`) or giving this project its own custom subdomain via a `docs/CNAME` file.

## Using the RenderCV skill

This repo has the [RenderCV skill](.agents/skills/rendercv/SKILL.md) installed for [Claude Code](https://claude.com/claude-code) (tracked in [`skills-lock.json`](skills-lock.json), sourced from [`rendercv/rendercv-skill`](https://github.com/rendercv/rendercv-skill)). It gives Claude the full RenderCV YAML schema, theme references, and CLI usage so it can edit the CV content/design directly instead of guessing at the format.

To use it, run the slash command inside Claude Code:

```
/rendercv
```

Then just describe what you want changed — content updates, theme swaps, spacing/layout tweaks, new sections, etc. — and Claude will edit `Tyler_Martinez_CV.yaml` and re-render it.

## Repo structure

```
Tyler_Martinez_CV.yaml   # source of truth: content + design + locale + settings
docs/                     # rendered output, served by GitHub Pages
  index.html              #   landing page embedding the PDF
  Tyler_Martinez_CV.pdf   #   rendered résumé
  Tyler_Martinez_CV.html  #   plain HTML/Markdown rendition (from RenderCV)
  Tyler_Martinez_CV.md    #   Markdown rendition
  Tyler_Martinez_CV.typ   #   generated Typst source
  Tyler_Martinez_CV_1.png #   PNG preview (used as mobile fallback)
.agents/skills/rendercv/   # RenderCV skill definition used by Claude Code
skills-lock.json           # pins the installed skill version/source
```
