# IMAPP — Lecture Notes

Public, version-controlled lecture notes converted to clean LaTeX documents.

## Spring 2026

- [Symmetry and Groups](semesters/2026-spring/symmetry-and-groups/README.md)
- [General Relativity](semesters/2026-spring/general-relativity/README.md)
- [Quantum Field Theory](semesters/2026-spring/quantum-field-theory/README.md)
- [Particle Physics](semesters/2026-spring/particle-physics/README.md)

## Repository structure

```text
semesters/
└── YYYY-term/
    └── course-name/
        ├── README.md
        └── lectures/
            └── lecture-01-topic/
                ├── README.md
                ├── lecture.tex
                ├── figures/
                ├── source/            # original handwritten Goodnotes PDF
                ├── lecture.pdf        # typeset LaTeX version
                └── references.bib
templates/
└── lecture.tex
scripts/
└── build-all.sh
```

## Naming conventions

- Semester folders use `YYYY-fall`, `YYYY-spring`, or `YYYY-summer`.
- Course folders use lowercase kebab-case, e.g. `quantum-field-theory`.
- Lecture folders use a two-digit number and a short topic, e.g. `lecture-03-path-integrals`.
- Each lecture keeps both the original handwritten source PDF and a separately typeset `lecture.pdf` generated from the LaTeX notes in `lecture.tex`.
- Generated LaTeX auxiliaries are excluded via `.gitignore`; source PDFs, `.tex`, figures, and bibliographies remain tracked.

## How to use the notes

Open the relevant course README to find its lecture index. Each lecture README records the date, topics, source material, and completion status. The LaTeX source is compiled with `latexmk` or `tectonic`.

## Contributing

Corrections and improvements are welcome. Keep notation consistent within a course, cite external sources, and avoid committing private or copyrighted scans.
