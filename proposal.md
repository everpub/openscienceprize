# Reusable research, 21st century style

Tim Head, Titus Brown, et al.


## Summary

Today scientific results are published as static documents. Limited in
length and content by the requirement of printed journals. In the 17th
century the printed journal was a groundbreaking invention, today we
can do a lot better: a web application that allows users to
publish their research work as an interactive document instead of a
static PDF, instantly reusable by other researchers.

We
propose to make reusability (and thereby reproducibility) a first-class citizen in computer
aided research by enabling the publication of dynamic and interactive
scientific narratives that can be verified, altered, reused, and
cited from a web browser. This new interactive reusability will increase the
transparency, quality and educational value of published scientific
work.

While sharing research data and code are solved problems for a most fields of research, applying
this shared code to the shared data requires great technical
expertise.  By not sharing the environment in which the code can be
successfully applied to the data we create a high barrier to reuse.
We will lower the barrier to reuse by providing a web interface that
let's the reader of a journal article create an environment, use it,
and then download it for use in future research.

This project will build the infrastructure required to create and
publish scientific output that is more than a simple, static
document. Allowing others to instantly apply the shared code to the
shared data. To make this a success three things are needed:

1. a web application that allows users to publish their research work
   as an interactive document instead of a static PDF, instantly
   reusable by other researchers;

2. blue prints, tools and best practices guides for creating such a
   publication; and

3. documentation and education on how to use such a publication.

By publishing executable content and making it as simple as clicking a
button in your browser to try it out the pace of computer aided
research will accelerate.


## The State of the Art

The individual technical components required for creating an open,
reusable and rich publication have recently become available to those
following the cutting edge of technology.

[mybinder.org](http://mybinder.org) and
[everware.xyz](http://everware.xyz) (created and developed by TH) are
two brand new projects that allow anyone to turn a GitHub repository
into a collection of interactive jupyter notebooks. The notebooks are
executed on cloud resources and allow anyone to run, modify, and reuse
them from their browser.

Currently assembling the right technological solutions for an open and
reusable publication requires considerable technical skill, often
beyond the level of expertise of individual scientists. In addition
having to assemble the components for a reusable publication from scratch is a daunting and high risk
task. Researchers who invest time and resources risk constructing a
solution which in the end is not up to scratch, leading to wasted
effort.

Below we list some of the tools available to address each of the
technical challenges:

* Collaborative creation of code is solved by `git` and [GitHub](//github.com)
  or similar distributed version control systems

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
based on the idea of interoperability. We believe that by relying on
widely adopted, open-source tools the risks with long term
availability and support are minimised.

What is missing in academia is the experience of how to combine them
into a working pipeline as well as better user interfaces that are
streamlined for the academic use-case.

Several efforts exist to create interactive and reusable scientific
articles. A non exhaustive list: [gitxiv](http://gitxiv.com/), [Open
Science Framework](https://osf.io),
[Galaxy](https://galaxyproject.org/),
[OpenML](http://www.openml.org/), and [Exec and share companion
sites](http://www.execandshare.org/CompanionSite/). To our knowledge
none provide what we propose. They either lack executability, create
lock in, require additional human effort after publication, or focus on
workflow management.


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

For open-source projects a healthy community is king. Fragmentation
leads to many efforts each duplicating effort and not able to achieve
their goals. Therefor we will aim for incremental improvement of
existing projects where possible as opposed to creating new ones, and
building consensus within the existing communities through workshops.


## Idea (story mode)

Today scientific results are published as static documents. Limited in
length and content by the requirement of printed journals. In the 17th
century the printed journal was a groundbreaking invention, today we
can do a lot better.

If code and data related to the article are being shared they are
usually attached as supplementary material. This material is available
online but requires several clicks to locate. The data is stored in
yet another location. Creating new work based on the shared material is
laborious. Combined with the fact that research code is by its very
nature not made for "consumers", reuse of the tools used to obtain the
new scientific knowledge published in an article is unlikely. Instead
they are reimplemented from scratch or older, less sophisticated
methods are used. Either way the progress of science is slowed down.

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
investment is recuperated through increased
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
We aim to make the transition as effortless as possible by creating
tools and advice that adds to existing workflows and works with
existing solutions instead of replacing them.


## Impact

Improved reusability encourages other researchers to
build on this research which delivers impact at the time of
publication through faster knowledge generation,
and gains in reputation. After publication a field of research
benefits from the high level of detail inherent to publishing the
code, data and environment in which it was executed. Allowing
re-analysis, meta-analysis, and use of by now "classic" research
papers for education and outreach.


### Short term user story

The use of executable papers provides a benefit to researchers from
day one. Each of their projects can exist in a separate, customisable
environment that can not interact with each other. No outsiders can
modify the environment. This prevents the "This used to work four
weeks ago and I changed nothing!" scenario, enables rapid sharing with
colleagues, and dramatically reduces the time and effort until new
team members can make contributions to a project.

### Long term user story

Code is to data analysis what maths is to the laws of nature, the most
precise description. Only the publication of code and environment
together allows post hoc analysis for flawed methodology or whether a
result was affected by a certain bug in a computer program used.
Our proposal does not aim to solve long term archival and guaranteeing
that an executable paper can still be executed in the distant future.
However by enabling automated execution we facilitate detection of
bit rot as early as possible, so that remedial action can be taken.

### Outreach story 2

Example from life science/medical/bio that is similar to the LEP story.

### Shared knowledge for data access

Datasets are often tricky to access and not well documented. Having a
executable paper that access a database of interest to the reader
allows the reader to see a working example of how to load and clean
the data. Over the long term this create best practices and shared
knowledge on accessing biomedical databases and the idiosyncrasies of
that data.

### Content mining

Executable papers can directly produce, or be retrofitted, to produce
their key results in a machine-readable format easily ingested by projects like [the
Contentmine](http://contentmine.org), used for meta-analysis, or to build a [semantic-web](https://en.wikipedia.org/wiki/Semantic_Web).


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

* Organising hackathons to engage with the community and
  build consensus on the specification and use-cases.

Cloud services for a live demonstrator. We will avoid buying physical
objects as it is not clear what should happen with them at the end of
the project.

TH will commit a significant amount of his time (60-80% FTE) to this
project in the next six months. A large part of the budget will go
towards paying for his time.


## Expressions of interest

We contacted the following journals and received an expression of interest
in seeing a working prototype implementing the ideas of this proposal:

<https://github.com/betatim/openscienceprize/issues/22#issuecomment-189144172> (place holder)


## Openness first

The project will be run like an open-source project, with the
proponents as the first members of a community we will build around
the ideas discussed here.

The [XXXour-name-here
proposal](https://github.com/betatim/openscienceprize) was written in
the open on GitHub. A total of 16 people chose to subscribe to the
repository and be informed about all activity, twelve people decided
to show their support by starring the repository, and N people
actively contributed to the creation of this proposal. No financial
incentives were offered for participation.

This project will build on top of an existing ecosystem of open-source
tools. We will contribute to existing open-source projects under their
license. All newly created material and projects will be licensed
under [BSD3](http://choosealicense.com/licenses/bsd-3-clause/) for
code and [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/) for
other material.


## Conclusion

Reproducibility is a main principle of the scientific method. We
propose to make reproducibility a first-class citizen in computer
aided research by enabling the publication of dynamic and interactive
scientific narratives that can be verified, altered, reused, and
cited from a web browser. This new interactive reusability will increase the
transparency, quality and educational value of published scientific
work.

There is a large interest in a project like this in the scientific and
open-source communities as demonstrated by the interest in the
preparation of this proposal and the expressions of interest from
publishers.

Concretely we propose to: build a web application for the publication
of dynamic and interactive scientific narratives, create tools and
educational material to accelerate the adoption of existing solutions
for reusable science, and finally to build a community around these
ideas.

This will be amazing!
