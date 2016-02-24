The Pitch
=========

Reproducibility, reusability, and remixability are fundamental to the
scientific process, should be built into computational science.

We propose to make reusability and composition a first-class citizen in
computational research and publishing by enabling the publication of
dynamic and interactive scientific documents that can be verified, altered,
reused, and cited.

Specifically, we will do this by:

* developing a simple specification for dependencies, code execution,
  data/parameter inputs, and data/paper outputs.  This specification
  will initially be designed to allow services like
  [mybinder](http://mybinder.org/) and
  [everware](https://betatim.github.io/posts/project-everware-reusable-science/)
  to execute workflows;

* implementing command-line software and/or Web interfaces to create,
  configure, and execute (locally or remotely) scientific repositories
  that provide this specification;

* extending the current Jupyter-based systems to also interact with
  R Markdown and work within the R ecosystem more cleanly;

* integrating our implementation with GitHub, continuous integration,
  and pull requests, to facilitate review, interaction, and collaboration;

* integrating our implementation with Zenodo, to provide DOIs for 
  citation;

* prototyping ideas for composition of workflows;

* engaging with the larger academic community including scientists,
  publishers, and librarians around executable papers and workflows
  and specifications for same;