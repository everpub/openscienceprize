Title:  Everpub: reusable research, 21st century style
Author: Tim Head (Europe lead), Titus Brown (US lead)


## Introduction:

The open source/open science community is rapidly converging around a
set of technologies that will enable highly reproducible and reusable
computer-aided research.  These technologies include
environments to encode and encapsulate dependencies, cloud computing to
execute workflows, collaboration technologies that enable remixing,
and text formats that enable comparison and merging.


We believe that the time is right to develop a vertical spike through
the problem space, with tools to go from an empty directory to a fully
rendered paper with an associated workflow that can be executed, reviewed,
and remixed. We will explore a specific vertical integration of the existing
tools in a focused way, find points of general technical agreement, and map
areas where further work is needed. In the process, we will provide a
technical basis for demos and extension. Engagement with a broad
community, open discussion, and community brainstorming will build
consensus about "solved" problems as well as discovering the hard knots
of disagreement. Finally, open community building around this problem will
inevitably yield serendipitous long-term interactions.


## Background:

In recent years, a robust set of technologies has emerged that are
being applied to the problem of reproducible computational
publications and narrative data analysis.  These include widely used
languages with a robust ecosystem of libraries ([R] and [Python]),
distributed version control systems that support collaboration,
remixing, and forking ([git] and [Mercurial]), platforms to host
collaboration around digital objects ([GitHub], [BitBucket], and [GitLab]),
isolated execution platforms (virtual machines, cloud computing, and
containers), configuration and dependency specification ([Debian], [Nix]/[Guix],
[conda], [Docker]), "notebook" technologies ([Jupyter], [RMarkdown]), DOI
minting, and many others.

Even more recently, these technologies have been combined
by open science enthusiasts to deliver components that support
highly reproducible open science.  For example, [mybinder], [everware] and [tmpnb]
enable the execution of Jupyter notebooks in highly configurable
remote containers.

Despite these advances, there are still many missing components of a
system for executable papers. Moreover, we would like to be able
to isolate, modify, and remix the individual components of these papers,
which motivates a design where papers are but a single output of a
more comprehensive computational workflow.

First and foremost, we need a compute-independent specification
of the computational workflow including not only the dependencies
and environment needed to execute the code, but also the meta-data
needed to indicate the inputs, outputs, and configuration
parameters that describe the workflow at a semantic level.
Such a specification would permit introspection of the repository
to support execution, composition, and remixing.

Second, we need close integration with at least one or two widely used
cloud providers so that people can "bring their own compute".  Current
execution systems (mybinder, everware, tmpnb) are tied to particular providers,
have no immediate system for scaling to larger compute, and do not
integrate with any authentication systems. We also need to provide
simple methods for local development and execution on laptops,
workstations, HPCs, and private clouds.

Third, we need to expand support and gain experience with additional
literate data analysis ecosystems - namely, [R] and [RMarkdown]. The
technologies mentioned above natively support [Jupyter], which is not as
widely used in the biomedical research environment as RMarkdown.

Fourth, there is as yet no simple and opinionated way to get started
writing an executable paper.  This leaves new users who are
enthusiastic about the concept of highly reproducible publishing with
no good starting point, and blocks the creation of training materials.

Fifth, we lack ready integration with many useful services such as
continuous integration (to run executable papers on pull requests with
e.g. [TravisCI]), DOI minting (with e.g. [Zenodo]), and authorship
tracking ([ORCID]).

Sixth, the current "notebook" style of execution supported by both
Jupyter and RMarkdown limits reusability, remixability, and
composibility of code segments.  The rich Jupyter Notebook format
specification also presents challenges for longevity of research
artifacts. Before we "bake" notebooks into computational
reproducibility, we should think more deeply about how these issues
should be addressed (see e.g. [this discussion](https://github.com/jupyter/enhancement-proposals/pull/4)).

Seventh, there are several missing technical components
of the publishing stack for interacting with pre- and post-publication
papers.  For instance, we lack good tools for
notebook/workflow comparison and "diffing" to support review and
editorial processes.  Moreover, we lack tools to integrate with
publishing and repository submission workflows.

Eighth and finally, there are many communities interested in this
question and fragmentation is a concern. We hope we can help nucleate
a community to help convert the initial enthusiasm of a demo experience
to contributions to technical and cultural aspects of building reusability
into our publishing ecosystem.



## The proposal:

We therefore propose to use the award money to develop a "vertical
spike" through the problem space, focused on tackling common
challenges and integrating existing tools, to demonstrate as complete
a pipeline as possible. Products from this would include:



* a repository specification laying out the location of the dependency
  specification, input data, output data, output paper, and workflow
  execution details;

* a Web app allowing users to discover, interact and experiment with
  publications integrating the tools and methods advocated here. We
  include a mock up of the user-interface for this in the OSP submission;

* [Docker]-based execution instructions for non-cloud based development and
  execution of papers;

* expanded support for [RMarkdown] and other components of the [R] ecosystem;

* an opinionated "green field" repository creation Web app and
  associated command line tool;

* demo integration with [TravisCI], [Zenodo], and [ORCID].

In addition to these specific products, we would brainstorm, experiment,
and build concept demos around workflow composition, notebook longevity,
paper repository diffing and merging, and production of publication-ready
XML.

The technical implementation, concept demos, and brainstorming would
be supported by a community nucleated by this project, which we would
support with social media channels, in-person hackathons, blog posts,
and potentially publications.

It is important for us to note that we have no expectation of solving
all or even most of the technical problems in this space, but we
believe that we can make valuable progress in a specific vertical spike
that would be of immediate value and inform a more general implementation.

### Advancing the open biomedical sciences

This proposal addresses the criteria for the open science prize in
the following ways:

* **Advancement of open science:** We will advance open science in
  biomedical/health research by making it easier to publish
  **reproducible**, **reusable**, and **remixable** computational
  analyses.  We believe that this project will help gather the
  scattered requirements and communities working in this area and
  bring their solutions and unsolved problems into a coherent focus.

* **Impact**: The short term impact on biomedical science will be
  minimal, because the tools and processes we are developing require
  technical expertise not readily available in the biomedical
  sciences.  We suspect that initial adoption will follow the trends
  of R and Python adoption, where the bioinformatics and genomics
  communities have led the way.  However, it is inarguable that the
  future of the biomedical community involves increasing amounts of
  computational work, and we believe that this project will help pave
  the way to better computational workflows and publications.

  One of the team leads, CTB, is a card-carrying bioinformatician and
  genomics researcher; he will bake genomics use cases into the
  project.

* **Innovation**: Our primary innovation will not be technical; many
  technical solutions already exist. Rather, our innovation is social:
  we hope to bring the open source community process to bear on this
  problem!  We believe that community-oriented open source projects
  are one of the best ways make progress through understanding
  requirements and driving adoption.

* **Originality**: we believe this project targets an unmet need for
  a full executable-papers process.

* **Technological viability** and **Resource feasability** are addressed
  throughout.

### Short term user story

The use of executable papers provides a benefit to researchers from
day one. Each of their projects exists in a separate, customisable
environment. They can not interact with each other. No outsiders can
modify the environment. This prevents the "This worked four weeks ago
and I changed nothing!" scenario, enables rapid sharing with
colleagues, and dramatically reduces the time and effort until new
team members can make contributions to a project. It increases
reproducibility and remixability.

### Long term user story

Code is to data analysis what maths is to the laws of nature, the most
precise description. Only the publication of code and environment
together allows post hoc analysis for flawed methodology or whether a
result was affected by a certain bug in a computer program used.

### A mockup

![Executable paper UI mock up (animated version at http://bit.ly/osp_ui_mockup)](https://cloud.githubusercontent.com/assets/1448859/13301888/7217ff8a-db47-11e5-9c5a-51da4527821d.gif "Executable paper UI mock up (animated version at http://bit.ly/osp_ui_mockup)")


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

* Cloud services for a live demonstrator. We will avoid buying physical
  objects as it is not clear what should happen with them at the end of
  the project.

TH will commit a significant amount of his time (60-80% FTE) to this
project in the next six months. A large part of the budget will go
towards paying for his time.

## Openness first

The proponents (and contributors to this [everpub proposal]) will form the first
members of a community we will build around this proposal.

The [everpub proposal] was written in
the open on GitHub and was viewed by 320 unique visitors. A total of 22 people subscribed to the
repository to be informed about all activity, 30 people
showed their support by starring the repository, and twelve people
actively contributed to the creation of this proposal. No financial
incentives were offered for participation.

We have deliberately avoided converging on technical details in this
proposal, except where consensus was quickly reached; discussion
continues in [the proposal github repository].  We think this is a
feature, not a bug, because it surfaces complex issues and details
without cutting off discussion. It also demonstrates our approach to
open discussion! Please see
[issue #16](https://github.com/betatim/openscienceprize/issues/16) for one
excellent example of a discussion centering around specifying workflows.

This project will build on top of an existing ecosystem of open-source
tools. We will contribute to existing open-source projects under their
license. All newly created material and projects will be licensed
under [BSD3] for code and [CC BY 4.0] for other material.

## Related efforts

Several efforts exist to create interactive and reusable scientific
articles. This includes: [gitxiv], [Open Science Framework],
[Galaxy], [OpenML], [IPOL], [reprozip], [researchobject],
and [Exec and share companion sites]. To
our knowledge, none by themselves provides what we propose. They either lack
executability or generality, create lock in, require additional human
effort after publication, or focus on workflow management.

## Who we are

The [proponents] of this proposal are researchers in data intensive fields.
They have significant technical experience with the individual components
required to construct a working prototype. They also have a track
record of contributing to open-source projects and growing communities
around projects. Our US lead ([CTB]) 
is a genomics and bioinformatics researcher at UC Davis with a strong 
record of reproducible research, open science advocacy, and teaching. 
In addition, our European lead ([TH]) is an experimental particle 
physicist and active open source developer who has built
[everware](http://everware.xyz) as a technical demonstraitoion 
of a system that allows people to jump right in to other's research code.

A detailed list of proponents is attached to the submission as `proponents.pdf`.

## Expressions of interest in this project

We contacted the following organisations and received an expression of interest
in seeing a working prototype implementing the ideas of this proposal:

* [GigaScience] - Laurie Goodman
* [F1000] - Michael Markie
* [CERN open data portal](http://opendata.cern.ch/) - Sunje Dallmeier-Tiessen
* [Research Ideas and Outcomes] - Lyubomir Penev
* [ReScience] - Konrad Hinsen and Nicolas P. Rougier
* [Authorea](https://www.authorea.com/) - Alberto Pepe
* [Caltech library](http://orcid.org/0000-0001-5494-4806) - Gail Clement
* [O'Reilly Media](http://www.oreilly.com/) - Andrew Odewahn
* [THE Port](http://theport.ch) - Daniel Dobos

## Other communities to engage

If we are awarded a prize, we will:

* invite librarians to the table to contribute their perspective on
  archiving publications and planning for data longevity;

* talk to the many companies and non-profits working in this space,
  including Figshare, Overleaf, and Authorea.

* engage with less technical communities in the biology world to discuss
  integration with other authoring tools;

## Conclusion

Reproducibility is a main principle of the scientific method. We
propose to make reproducibility a first-class citizen in computer
aided research by enabling the publication of dynamic and interactive
scientific narratives that can be verified, altered, reused, and cited
from a web browser. This new interactive reusability will increase the
transparency, quality and educational value of published scientific
work.

There is a large interest in a project like this in the scientific and
open-source communities as demonstrated by the interest in the
preparation of this proposal and the expressions of interest from
publishers.

Concretely, we propose to: build a web application for the publication
of dynamic and interactive scientific narratives, create tools and
educational material to accelerate the adoption of existing solutions
for reusable science, and finally to build a community around these
ideas.

## Links and additional reading

[Collaborative cloud-enabled tools allow rapid, reproducible
biological
insights](http://www.nature.com/ismej/journal/v7/n3/full/ismej2012123a.html),
a publication in ISME by Min Ragan-Kelley et al., demonstrating the
power of this approach.

[Is mybinder a solution for next-gen computational science
publishing?](http://ivory.idyll.org/blog/2016-mybinder.html), a blog
post by CTB, talks about the potential value of mybinder.  The
comments on composability by KH are also very interesting.

[everpub proposal]: https://github.com/betatim/openscienceprize
[proponents]: https://github.com/betatim/openscienceprize/blob/master/proponents.md
[the proposal github repository]: https://github.com/betatim/openscienceprize
[RMarkdown]: http://rmarkdown.rstudio.com
[R]:         https://www.r-project.org
[Python]:    https://www.python.org
[git]:       https://git-scm.com
[Mercurial]: https://www.mercurial-scm.org
[GitHub]:    https://www.github.com
[BitBucket]: https://bitbucket.org
[GitLab]:    https://gitlab.com/
[Debian]:    https://www.debian.org/
[Nix]:       https://nixos.org/
[Guix]:      https://www.gnu.org/software/guix/
[Conda]:     https://www.continuum.io/why-anaconda
[Docker]:    https://www.docker.com
[Jupyter]:   http://jupyter.org
[TravisCI]:  https://travis-ci.org
[Zenodo]:    https://zenodo.org
[ORCID]:     http://orcid.org
[mybinder]:  http://mybinder.org
[tmpnb]:     https://tmpnb.org
[everware]:  http://everware.xyz
[gitxiv]:    http://gitxiv.com/
[Galaxy]:    https://galaxyproject.org/
[OpenML]:    http://www.openml.org/
[reprozip]:  https://vida-nyu.github.io/reprozip/
[researchobject]: http://www.researchobject.org/
[IPOL]:      http://www.ipol.im/
[BSD3]:      http://choosealicense.com/licenses/bsd-3-clause/
[CC BY 4.0]: http://creativecommons.org/licenses/by/4.0/
[Open Science Framework]: https://osf.io
[Exec and share companion sites]: http://www.execandshare.org/CompanionSite/
[GigaScience]: http://gigascience.biomedcentral.com/
[F1000]: http://F1000.com
[Research Ideas and outcomes]: http://riojournal.com/
[ReScience]: https://rescience.github.io
[CTB]: https://github.com/ctb
[TH]:  https://github.com/betatim
