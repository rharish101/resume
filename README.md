# My Resume

This repository contains the content of my resume and its LaTeX template.

## Organization
This resume consists of two "formats".
One is the standard resume, while the other is a single page version of the same.
The file [`resume.tex`](resume.tex) is the target for the full resume.
The file [`onepage.tex`](onepage.tex) is the target for the single page version.

The main content of the resume is stored in TeX files located in the [sections](sections/) directory.
The file [`template.tex`](template.tex) defines the template, the custom commands and environments used by the content TeX files.

## Compilation
Compile the full resume with:
```sh
latexmk resume.tex
```

Compile the single page version with:
```sh
latexmk onepage.tex
```

## Generated PDFs
GitHub Actions is used to automatically generate the PDF for both versions.
This is set up to maintain only one single release, pointing to the latest commit on the `master` branch.
The compiled PDFs will be available in this release as release assets.
Thus, a URL to any of those PDFs will stay the same across multiple commits, while always linking to the latest PDFs.
This is done to avoid tracking the binary PDFs in git.
