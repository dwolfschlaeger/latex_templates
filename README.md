# A LaTeX thesis template

The [thesis template](https://github.com/dwolfschlaeger/latex_templates/blob/master/thesis_template/) provides styles and shortcuts for a thesis in high energy physics (especially in CMS). It contains known and unknown particles shortcuts, common physics expressions and general styles for references and structure of the thesis. In order to produce the thesis one has to compile the main.tex with the pdflatex compiler using the editor/IDE of your choice (compiling was tested with Kile). The references can be specified in [literatur.bib](https://github.com/dwolfschlaeger/latex_templates/blob/master/thesis_template/BibTex/literatur.bib) with the usual syntax of BibTex and added afterwards in your .tex file using `\cite{}`:

```
@article{PhysRevLett.13.508,
  title = {Broken Symmetries and the Masses of Gauge Bosons},
  author = {Higgs, Peter W.},
  journal = {Phys. Rev. Lett.},
  volume = {13},
  issue = {16},
  pages = {508--509},
  numpages = {0},
  year = {1964},
  month = {Oct},
  publisher = {American Physical Society},
  doi = {10.1103/PhysRevLett.13.508},
  url = {https://link.aps.org/doi/10.1103/PhysRevLett.13.508}
}
```

If you want to add additional shortcuts/commands, add them in [my-definitions.tex](https://github.com/dwolfschlaeger/latex_templates/blob/master/thesis_template/general/my-definitions.tex). There you can use `\newcommand{}` to add new shortcuts. More information on general stylings and usage can be found in the [note for author](https://github.com/dwolfschlaeger/latex_templates/blob/master/thesis_template/general/notes_for_authors.pdf)!
