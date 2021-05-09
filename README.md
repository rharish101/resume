# My Resume

This repository contains the content of my resume and its LaTeX template.

Here are the latest versions of the PDFs:
- [resume.pdf](https://github.com/rharish101/resume/releases/latest/download/resume.pdf) - The full resume
- [onepage.pdf](https://github.com/rharish101/resume/releases/latest/download/onepage.pdf) - The shortened single-page resume

## Organization
This resume consists of two "formats".
One is the standard resume, while the other is a single page version of the same.

The main content of the resume is stored in TeX files located in the [sections](sections/) directory.
The file [`template.tex`](template.tex) defines the template, the custom commands and environments used by the content TeX files.

## Compilation
Compile the full resume with:
```sh
make
```
or
```sh
make full
```

Compile the single page version with:
```sh
make onepage
```

## Generated PDFs
GitHub Actions is used to automatically generate the PDF for both versions.
This is set up to maintain only one single release, pointing to the latest commit on the `master` branch.
The compiled PDFs will be available in this release as release assets.
Thus, a URL to any of those PDFs will stay the same across multiple commits, while always linking to the latest PDFs.
This is done to avoid tracking the binary PDFs in git.
