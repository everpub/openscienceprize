# An openscienceprize entry

These are the beginnings of an entry for
[openscienceprize.org](//openscienceprize.org). Join in if you are
interested!

A toolbox that makes reusable/reproducible science a first class
citizen in the academic workflow by being useful already during the
development phase. Reusability as a side effect.


# Tech-y summary

Combining ideas from mybinder, everware, thebe, github, docker,
travis, and zenodo. Useful for researchers from day one. Provide a way
to automate every step. A toolbox, not a framework. Most individual
steps already have fantastic solutions out there, people should use
them! Final step: interactive and re-mixable papers.


# Contributing

Everyone is welcome to contribute. Discussion happens in
[issues](https://github.com/betatim/openscienceprize/issues), and
changes are handled via [pull
requests](https://github.com/betatim/openscienceprize/pulls).

As this is about creating a entry for the open science prize, creating
the entry should happen in the open as well. All the material is
licensed under [CC BY-SA
4.0](//creativecommons.org/licenses/by-sa/4.0/).


# Longer outline of the idea

There is a lot of work going on in the data sharing domain. What is
missing is preserving all the data analyses that are happening. There
are platforms/frameworks for workflow management that force you to use
their tool. There does not seem to be much in the way of data analysis
preservation/sharing which lets you continue using the tools you
already use and is based around the idea of a toolbox instead of a
framework/platform.

This project will build tools that are useful to scientists from day
one (so they use them for purely selfish reasons) and as a "waste
product" allows others to reuse that particular data analysis. We will
achieve this by providing a way to automate every step of an analysis.

* Code sharing is solved by github.

* Describing the environment in which your code runs is solved by docker.

* Managing workflows is solved by tools like `make`, `snakemake`, etc.

* Notebooks allow you to describe the narrative of your computations.

* Continous integration helps you spot regressions. If a robot can run
  your analysis, it is reproducible.

* Zenodo makes your code citable and archives it for ever.

* Notebooks allow you to write rich documents combining text, code,
  figures, equations and interactive elements.

If you combine all these tools you have an extremely good reproducible
science setup. Right now this requires a lot more geek-ness than your
average researcher has. Fixing this is the aim of this project.


# How to make it so

What would we have to build to make this a reality.

* a tool to get started with your first `Dockerfile`
* syntactic sugar for `docker build && docker run` mounting the
  local directory into the container
* connecting to the running container
* a jupyterhub spawner that works with the `Dockerfile`
* examples of how to setup your repo
* tools for using travis/circle CI
* convert markdown to `ipynb` and run it (md is easier to diff)
* a better `thebe` that can protect users from malicious content
* webserver that renders just `paper.ipynb` from a repo, hooks it up
  to something like `tmpnb` for interactivity


# Brain dump points

This is an unordered collection of thoughts. Feel free to add to it.

Build a tool that universities/labs/publishers can use to encourage
re-use of software and provide a completely new kind of research
article, one that is interactive!

* preserving and open access of data is becoming mainstream
* to make sense of data we need lots of documentation and experience
* one source of documentation and experience is the code used to
  analyse the data in the first place
* sharing code is not enough, code only makes sense in the environment
  it runs in
* so far very little effort on sharing code and its environment
* adding re-usability/re-producibility as an after thought does not
  work (misaligned incentives)
* make re-usability a waste product, provide tools that are useful to
  researchers while developing their analysis pipeline that produce
  re-usability as a side effect
* bit rot is everywhere, undetected bit rot is a disaster
* periodically and automatically run a subset of analyses to detect
  bit rot
* researchers use very diverse set of tools, not interested in
  changing them
* need a flexible system that allows composing
* machine readable environment and entry point allow for completely
  new kinds of scholarly communication (-> interactive articles)
* simple syste that can be setup at universities or labs or publishers
* lots of problems already solved (sharing -> git(hub), workflow ->
  make, snakemake, etc), do not reinvent them, instead allow composing
  of these tools
* do not build a platform that people have to adopt to, or at least
  reduce the adoption as much as possible and provide benefits to
  researchers from day one.
* support a model of "bring your own computing", allows users to
  provide their own computing resources instead of beign tied to host.
* BYOC is inherently flexible in terms of how compute power is
  provided