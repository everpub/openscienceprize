# Research dissemination, 21st century style

Tim Head, Titus Brown, et al.


## Summary

Reproducibility is a main principle of the scientific method. We
propose to make reproducibility a first-class citizen in computer
aided research by enabling the publication of dynamic and interactive
scientific narratives that can be verified, altered, reused, and
cited. This new interactive reusability will increase the
transparency, quality and educational value of published scientific
work.

We believe that research progresses by building on previous
research. Having to reinvent the wheel many times over is a waste of
resources.

While sharing research data and code are solved problems, applying
this shared code to the shared data requires great technical
expertise.  By not sharing the environment in which the code can be
successfully applied to the data we create a high barrier to reuse.
We will lower the barrier to reuse by providing a web interface that
let's the reader of a journal article create an environment, use it,
and then download it for use in future research.

This project will build the infrastructure required to create and
publish scientific output that is more than a simple, static
document. Allowing others to instantly apply the shared code to the
shared data. To make this a success two things are needed:

1) a web application that allows users to publish their research work
   as an interactive document instead of a static PDF, instantly
   reusable by other researchers; and

2) blue prints, tools and best practices guides for creating such a
   publication. 

By publishing executable content and making it as simple as clicking a
button in your browser to try it out the pace of computer aided
research will accelerate. Credit can be assigned by counting how often
work is reused. Appreciation is signalled by a simple "thumbs
up". Thereby creating a social web for scientific publications similar
to GitHub's social web for code.


## Idea (story mode)

Today scientific results are published as static documents. Limited in
length and content by the requirement of printed journals. In the 17th
century the printed journal was a groundbreaking invention, today we
can do a lot better.

After the completion of a project a research article is submitted for
review to an academic journal and after several iterations either
accepted or rejected by the journal. Editors choose the reviewers who
volunteer their time and expertise. They receive no credit for their
work as their identity is only known to the editor. By virtue of being
limited in length most journal articles use abstraction and high level
descriptions of the research methodology.

If code and data related to the article are being shared they are
usually attached as supplementary material. This material is available
online but requires several clicks to locate. The data is stored in
yet another location. Creating new work based on the shared material is
laborious. Combined with the fact that research code is by its very
nature not made for "consumers", reuse of the tools used to obtain the
new scientific knowledge published in an article is unlikely. Instead
they are reimplemented from scratch or older, less sophisticated
methods are used. Either way the progress of science is slowed down.

XXX Benefits of reusing and building on other research are obvious
... XXX

Reusing someone else's work is risky. You might invest a lot of time
upfront understanding the code and data, hoping to save time in the
long term for your own research, but these savings might never
materialise. Lowering the bar to entry is crucial as it reduces the
risk associated with trying out other researcher's code. We propose
executable papers as a way to achieve just that.

Executable papers can be achieved with a three step program:

 1. automatic execution of code so that we can be sure that this
 code was used to create these results;

 2. provide a simple mechanism for individuals to create a copy of the
 code and make small modifications before re-running the analysis; and

 3. a method for researchers to download the modified executable paper
 to their local computer in order to use it as basis for future
 research projects.

To create novel research findings data, methods and visualisations
from several executable papers can be combined. This significantly
reduces turn around time and increases the rate at which new knowledge
is created. Starting from an existing executable paper is risk free as
we know that it will run and produce the results advertised.

Creating an executable paper is not without cost. However this initial
investment is recuperated through higher citation rates, increased
reputation, and reduced effort at later stages of a research
project. The last point is crucial. Reusability will always be a
second class citizen as long as the tools required do not deliver a
benefit to the author from day one. Therefore this project delivers
tools that make the life of scientists easier and less error
prone. Reusability is merely a side-effect.

There are many social and cultural aspects to creating and sharing
reproducible research. Sufficiently motivated individuals will always
manage to sabotage the system. Changing cultures is a long term
project. This project will create the tools needed to help with this
change in culture.


## Impact

The tools and methods proposed in this project increase the
reproducibility and reusability of research projects. They provide
benefits to researchers from day one of their analysis, long before
publication. The improved reusability encourages other researchers to
build on this research which delivers impact at the time of
publication through faster knowledge generation, higher citation
rates, and gains in reputation. After publication a field of research
benefits from the high level of detail inherent to publishing the
code, data and environment in which it was executed. Allowing
re-analysis, meta-analysis, and use of by now "classic" research
papers for education and outreach.


### Short term user story

The use of executable papers provides a benefit to researchers from
day one. Each of their projects exists in a separate, customisable
environment. They can not interact with each other. No outsiders can
modify the environment. This prevents the "This used to work four
weeks ago and I changed nothing!" scenario, enables rapid sharing with
colleagues, and dramatically reduces the time and effort until new
team members can make contributions to a project.

### Long term user story

Code is to data analysis what maths is to the laws of nature, the most
precise description. Only the publication of code and environment
together allows post hoc analysis for flawed methodology or whether a
result was affected by a certain bug in a computer program used.

### Outreach story

Nobel prize winning lab experiments from 100 years ago can now be
performed over a short time period by undergraduates. This is possible
due to the amazing pace of technological development and the detailed
records about the methods used in the experiments. The dataset of one
Large Electron Positron collider experiment used to be stored on a
distributed system but now can be easily stored on a SSD and analysed
in its entirety on a laptop. In 100 years undergraduates will
routinely rediscover the Higgs boson as the the detailed data analysis
methodology will be recorded in an executable paper.

### Social web of science story

New mechanisms for assigning credit and fame. Public review means
credit for reviewing other people's work. Starring, a simple way of
indicating support, provides a powerful mechanism for sorting a vast
amount of identical research. Forking, the process of creating a
derivative work by making a copy and altering it, facilitates fast
experimentation and tracks credit assignment. The crowd can evaluate
and "bubble to the top" the most interesting and relevant
research. Allowing research to be evaluated at web scale at a far
larger pace than possible with small boards of experts.

### Shared knowledge for data access

Datasets are often tricky to access and not well documented. Having a
executable paper that access a database of interest to the reader
allows the reader to see a working example of how to load and clean
the data. Over the long term this create best practices and shared
knowledge on accessing biomedical databases and the idiosyncrasies of
that data.

### Contentmine

Executable papers can directly produce or be retrofitted to produce
their key results in a format easily ingested by projects like the
Contentmine.


## The State of the Art

The individual technical components required for creating an open,
reusable and rich publication have recently become available to those
following the cutting edge of technology.

Using the NASA Technology readiness levels as a guide open and
reusable science publishing has reached level 3/4. This means that individual
components have been validated in a laboratory setting. This project
will elevate open and reusable science publishing to level 6/7. This
represents a major step in the level of fidelity of the technology,
demonstrating a prototype system, which goes beyond ad-hoc patched
together components, in use in a real-life environment.

Currently assembling the right technological solutions for an open and
reusable publication requires considerable technical skill. Often
beyond the level of expertise of individual scientists. In addition
having to start from scratch is a daunting and high risk
task. Researchers who invest time and resources risk constructing a
solution which in the end is not up to scratch, leading to wasted
effort.

Even if a research team succeeds in assembling a state of the art
approach to sharing their research from scratch, there is no system in
place that allows them to share it with others in a way that lowers
the bar to entry, gives them credit for doing so, and tracks reuse.

Below we list some of the tools available to address each of the
technical challenges:

* Collaborative creation of code is solved by [GitHub](//github.com)

* Describing the environment in which code runs is solved by
  [docker](//docker.com) containers

* Managing workflows is solved by tools like `make`, `snakemake`, etc

* Notebooks (e.g. jupyter, Rmarkdown, ...) allow you to describe the
  narrative of your computations

* Continuous integration helps you spot regressions. If a robot can run
  your analysis, it is reproducible!

* [Zenodo](//zenodo.org) is an open dependable home for science,
  enabling researchers to share and preserve any research outputs in
  any size, any format and from any science. It can be used to make
  your code citable and assign a DOI

* Notebooks allow you to write rich documents combining text,
  code, figures, equations and interactive elements

These tools are in widespread use outside of academia, are considered
best practices, and are part of a flourishing open-source ecosystem
based on the idea of interoperability.

What is missing in academia is the experience of how to combine them
into a working pipeline as well as better user interfaces that are
streamlined for the academic use-case.


## Solution

This project will build a vertically integrated prototype
demonstrating the publication of dynamic and interactive scientific
narratives. The project will be organised as an open-source project
allowing anyone to join and contribute to its development.

![Executable paper UI mock up](https://cloud.githubusercontent.com/assets/1448859/13301888/7217ff8a-db47-11e5-9c5a-51da4527821d.gif "Executable paper UI mock up")


Specifically, we will do this by:

* developing a simple specification for dependencies, code execution,
  data/parameter inputs, and data/paper outputs.  This specification
  will initially be designed to allow services like
  [mybinder](http://mybinder.org/) and
  [everware](https://betatim.github.io/posts/project-everware-reusable-science/)
  to execute workflows;

* implementing command-line software and Web interfaces to create,
  configure, and execute (locally or remotely) scientific repositories
  that provide this specification;

* extending the current Jupyter-based systems to also interact with
  R Markdown and work within the R ecosystem more cleanly;

* integrating our implementation with GitHub, continuous integration,
  and pull requests, to facilitate review, interaction, and collaboration;

* integrating our implementation with Zenodo, to provide DOIs for 
  citation;

* create guides and educational material on how to use the tools;

* prototyping ideas for composition of repositories;

* engaging with the larger academic community including scientists,
  publishers, and librarians around executable papers and workflows
  and specifications for same;

For open source projects momentum is king. The guides, tools, and advice
created in this project will be opinionated. This steers users towards
the recommended open-source tools. These tools might not be perfect
but having more users generates momentum for those tools which results
in improvement of those tools. This is better than fragmentation which
occurs if individuals go off to build the missing feature in a new
project.


## Resource feasibility

The proponents are researchers in data intensive fields. They have
broad technical experience with the individual components required to
construct the working prototype proposed here.

They have a track record of contributing to open-source projects and
growing communities around them. CTB is experienced in teaching highly
technical tools to novices via his involvement with Software
Carpentry. TH has built a [demonstrator](http://everware.xyz) that
allows people to jump right in to others research code. TH
contributes to the jupyter project which forms the core technology
upon which the prototype will be built.


## Budget

The project will be run like an open-source project: anyone can join
and become a contributor to the software, documentation and
specifications we create. Building a community around these projects
is a focus. The prize will be used to cover out of pocket expenses to
achieve this goal:

* Travel and fees for team members to attend workshops, sprints, and
  community events to build contacts and recruit new contributors.

* Organising our own event/workshop to engage with the community and
  build consensus on the specification and use-cases.

Cloud services for a live demonstrator. We will avoid buying physical
objects as it is not clear what should happen with them at the end of
the project.

TH will commit a significant amount of his time (60-80% FTE) to this
project in the next six months. A large part of the budget will go
towards paying for his time.


## Licenses

This project will build on top of a tradition of open source tools. We
will contribute to existing open-source projects under their license. All
newly created material and projects will be licensed under BSD3 for code
and CC4 BY for other material.


## Conclusion

This will be amazing!
