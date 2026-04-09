# Keylime Web Tool Documentation

Documentation and presentation slides for the Keylime Web Tool project.

## Presentations

| Directory | Description |
|-----------|-------------|
| `slides/20260226-Keylime-Monitoring-Tool` | Keylime Monitoring Dashboard: comprehensive monitoring & operations tool for the Keylime trust system |
| `slides/20260305-Keylime-Monitoring-Tool-Stakeholders` | Keylime Monitoring Dashboard: stakeholder-oriented overview |

## Building

Requires a TeX Live installation with `pdflatex` and the Beamer package.

Build all presentations:

```sh
cd slides
make
```

Build a single presentation:

```sh
make -C slides/20260226-Keylime-Monitoring-Tool
```

Other targets:

```sh
make clean    # remove auxiliary files
make clobber  # remove auxiliary files and PDFs
make test     # draft-mode compilation check
```

## License

This work is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).