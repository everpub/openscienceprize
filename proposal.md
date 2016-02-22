# Research dissemination, 21st century style

Tim Head, Titus Brown, et al.


## Summary

Reproducibility is a main principle of the scientific
method. Publishing scientific results as dynamic and interactive
documents will allow to verify, alter, reuse and credit not only the
results, but the entire analysis path of a scientific work. This new
interactive reusability will increase the transparancy, quality and
educational value of published scientific work.

Sharing research data and code are solved problems. However today
applying this shared code to the shared data requires great technical
expertise.  By not sharing the environment in which the code can be
successfully applied to the data we create a high barrier to
reuse. Research progresses by building on previous research. Having to
reinvent the wheel many times over is a waste of resources. This
project will lower the barrier to reuse by providing a web based way
to create an environment, use it, and then download it for future use.

This project will build the infrastructure required to create and
publish scientific output that is more than a simple, static
document. Allowing others to instantly apply the shared code to the
shared data. To make this a success two things are needed:

1) a web application that allows users to publish their research work
   as an interactive document instead of a static PDF, instantly
   reusable by other researchers.

2) blue prints, tools and best practices guides for creating such a
   publication. 

By publishing executable content and making it as simple as clicking
a "fork" button to try it out the pace of research based on computer
programs will accelerate. Credit and appreciation can be assigned by
:star:ing other people's work. Thereby creating a social web for
science similar to github's social web for code.


## Challenges

The technical
components for creating a reusable and richer publication already
exist:

* Collaborative creation of code is solved by github.

* Describing the environment in which your code runs is solved by
  docker.

* Managing workflows is solved by tools like `make`, `snakemake`, etc.

* Notebooks allow you to describe the narrative of your computations.

* Continous integration helps you spot regressions. If a robot can run
  your analysis, it is reproducible.

* Zenodo makes your code citable and archives it for ever.

* Notebooks allow you to write rich documents combining text, code,
  figures, equations and interactive elements.

What is missing is experience of how to combine them into a working
pipeline and better user interfaces that streamlined for the academic
use-case.

The tools are in widespread use outside of academia, are considered
best practices, and are part of a flourishing ecosystem based on the
idea of interoperability and open source.

Combining all these tools results in an extremely powerful reproducible
science setup. Right now doing this requires a lot more technical
skill than the average researcher has. This project will create blue
prints and training material for setting up a research project that
incorporates the above tools. The materials will be contributed to
existing training initiatives to encourage widescale adoption. A key
deliverable of this project will be a set of tools that provide
a streamlined user interface for these tools, focussing on the
use-case of academia.

For open source projects momentum is king. The guides and advice
created in this project will be opinionated. This steers users towards
the recommended open-source tools. These tools might not be perfect
but having more users generates momentum for those tools which results
in improvement of those tools. This is better than fragmentation which
occurs if individuals go off to build the missing feature in their own
project.

This project will build tools and guides that are useful to scientists
from day one of their analysis (so they use them for purely selfish
reasons) and as a "waste product" allows others to reuse that
particular data analysis.

------------------

# Remove from the proposal

*Stuff below here is for encouraging thought*

What would we have to build to make this a reality. In the following
the word "tool" is used interchangeably to mean an actual software
tool, or documentation, or training material, or best practice guide.

* a tool to get started with your first `Dockerfile`
* syntactic sugar for `docker build && docker run` mounting the
  local directory into the container
* initialising the research environment (as easy to use as `conda
  create`, or virtualenv)
* activating the environment has to be as simple as conda
  env/virtualenv
* connecting to the running container
* a jupyterhub spawner that works with the `Dockerfile`
* examples of how to setup your repo
* tools for using travis/circle CI
* convert markdown to `ipynb` and run it (md is easier to diff)
* a better `thebe` that can protect users from malicious content
* webserver that renders just `paper.ipynb` from a repo, hooks it up
  to something like `tmpnb` for interactivity
* forking and starring publications
* running publications is similar to [kaggle scripts](https://www.kaggle.com/scripts)
* web based way to create an environment, try it and then
  download it
* `openscience fork <XXX>` to locally fork publication `XXX`
* `openscience init` to initialise local directory with new env
* `openscience activate <XXX>` to switch to the environment
  for publication `XXX`
