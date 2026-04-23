# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

Documentation repository for the Keylime Monitoring Dashboard project. Contains LaTeX/Beamer presentations. The formal SRS and SDD have moved to [keylime-webtool/spec](https://github.com/keylime-webtool/spec). Licensed under CC BY-SA 4.0.

## Build Commands

Requires a TeX Live installation with `pdflatex` and the Beamer package. On Fedora, dependencies are installed via `.github/workflows/install-dependencies`.

```bash
cd slides && make              # build all presentations
make -C slides/<presentation>  # build a single presentation
make test                      # draft-mode compilation check (from repo root)
make clean                     # remove auxiliary files
make clobber                   # remove auxiliary files and PDFs
```

Each presentation directory has its own Makefile. The `test` target runs `pdflatex -draftmode` for fast validation without producing a PDF.

## Linting

Markdown files are linted in CI with `markdownlint-cli2`. Configuration is in `.markdownlint-cli2.yaml`. Run locally:

```bash
npx markdownlint-cli2 '**/*.md'
```

## Commit Requirements

All commits must include a `Signed-off-by` line (`git commit -s`). This is enforced by the `.githooks/commit-msg` hook and CI. To install the local hook:

```bash
git config core.hooksPath .githooks
```

## CI Workflows

- **build-doc.yaml** — Builds all presentations on Fedora (latest + rawhide). Uses path filtering: only runs when `slides/`, `Makefile`, or workflow files change.
- **markdown-lint.yaml** — Runs `markdownlint-cli2` on all `*.md` files. Only runs when Markdown or lint config files change.
- **signed-commits.yml** — Enforces `Signed-off-by` on PR commits via org-wide reusable workflow.

## Repository Structure

- **`spec/`** — Redirect to [keylime-webtool/spec](https://github.com/keylime-webtool/spec) where the SRS and SDD now live
- **`slides/`** — LaTeX/Beamer presentations, each in a date-prefixed directory with numbered `.tex` files (`000-` is the main document that `\include`s the rest)
- **`slides/beamerthemeRedHat.sty`** — Shared Red Hat Beamer theme (symlinked from each presentation directory)
- **`slides/fonts/`** — Red Hat Display font family (shared, symlinked)

## Presentation Conventions

- Each presentation lives in `slides/YYYYMMDD-Title/` with a `Makefile`
- The main `.tex` file is always `000-*.tex`; section files are numbered sequentially (`001-`, `002-`, ...)
- Two Beamer themes are used: `Madrid`/`beaver` (original presentation) and the custom `beamerthemeRedHat` (stakeholder and later presentations)
- New presentations must be added to `slides/Makefile`'s `SUBDIRS` list
- The `Makefile` runs `pdflatex` twice (for cross-references) and renames the output to the `PROGRAM` name

## Spec Conventions

The SRS and SDD now live in [keylime-webtool/spec](https://github.com/keylime-webtool/spec). Refer to that repository's CLAUDE.md for spec conventions.
