# Everpub: reusable research, 21st century style

Tim Head (Europe lead)

Titus Brown (US lead)

## Abstract:

## Introduction:

The open source/open science community is rapidly converging around a
set of technologies that will enable highly reproducible
computer-aided research publications.  These technologies include
environments to encode and encapsulate dependencies, cloud computing to
execute workflows, collaboration technologies that enable remixing,
and text formats that enable comparison and merging.

We believe that the time is right to explore the problem space in a
focused way and find points of general technical agreement as well as
map areas where further work is needed.  A vertical spike through the
problem space, with tools to go from an empty directory to a fully
rendered paper that can be re-rendered and executed, reviewed, and
remixed, will provide a technical basis for demos and extension.
Engagement with a broad community, open discussion, and community
brainstorming will build consensus about "solved" problems as well as
discovering the hard knots of disagreement.  Finally, open community
building around this problem will inevitably yield serendipitous
long-term interactions.

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
minting, and many others (**XXX more here**).

Even more recently, these technologies have been combined
by open science enthusiasists to deliver components that support
highly reproducible open science.  For example, [mybinder], [everware] and [tmpnb]
enable the execution of Jupyter notebooks in highly configurable
remote containers; (XXX more here).

Despite these advances, there are still many missing components of a
system for executable papers.

First and foremost, we need a compute-independent specification
describing the paper repository layout and requirements, along with
outputs; such a specification would permit introspection of the
repository to support execution and composition on compatible
platforms.

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
should be addressed (see e.g. [this discussion](https://github.com/jupyter/enhancement-proposals/pull/4)). (**XXX more refs**)

Seventh, there are several (perhaps many) missing technical components
of the publishing stack for interacting with pre- and post-publication
papers.  For one example, we lack good tools for
notebook/workflow comparison and "diffing" to support review and
editorial processes.  For another, we lack tools to integrate with
publishing and repository submission workflows.

Eighth and finally, there are many communities interested in this
question, and little centrality or cohesion in the online space.  We
hope we can help nucleate a community that grows beyond the "that's
neat!" tech-demo experience to tackle the core technical and cultural
aspects of building reproducibility into our publishing ecosystem.

## The proposal:

We therefore propose to use the award money to execute a "vertical
spike" through the problem space, focused on tackling common
challenges and integrating existing tools, to demonstrate as complete
a pipeline as possible.  Products from this would include:

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
believe that an attempt towards a more general implementation can
be of great and immediate value.

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
the open on GitHub. A total of 16 people subscribed to the
repository to be informed about all activity, twelve people
showed their support by starring the repository, and **N** people
actively contributed to the creation of this proposal (**XXX**). No financial
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
[Galaxy], [OpenML], [IPOL], and [Exec and share companion sites]. To
our knowledge, none provides what we propose. They either lack
executability or generality, create lock in, require additional human
effort after publication, or focus on workflow management.

## Who we are

[Tim Head](https://betatim.github.io/) is a experimental particle
physicist currently working at [CERN](http://home.cern/). He is an
[active](https://github.com/betatim) open source developer focussing
on building better tools for reproducible science and
machine-learning.  Tim is an invited member of the inaugural 
[Open Leaders Cohort](https://www.mozillascience.org/wow-introducing-working-open-workshops-and-the-open-leaders-cohort)
of the [Mozilla Science Lab](https://www.mozillascience.org/about).

[Konrad Hinsen](http://dirac.cnrs-orleans.fr/~hinsen) is a
computational biophysicist at [CNRS](http://www.cnrs.fr/) with a
long-standing interest in reproducible research
(e.g. [ActivePapers](http://www.activepapers.org/)).  He was a
founding member of the Numerical Python team and is an author or
co-author of several Open Source scientific software packages. He is a
member of the editorial boards of
[Computing in Science & Engineering](https://www.computer.org/web/computingnow/cise)
magazine and of [ReScience](http://rescience.github.io/). He recently
published a book on
["Computation in Science"](http://computation-in-science.khinsen.net/).

[C. Titus Brown](https://impactstory.org/TitusBrown) is a genomics
and bioinformatics researcher at UC Davis who is also an active open
source developer and open science blogger.  Several of his publications
are highly reproducible already.

[Kyle Cranmer](http://theoryandpractice.org) is a physics professor
at NYU and co-lead of the open science and reproducibility working group
as part of the Moore-Sloan Data Science Environment at NYU, a PI for the
NSF-funded [DIANA-HEP](http://diana-hep.org) focusing on sustainable software, 
and founded the [Recast](https://github.com/recast-hep) project aimed at
making analysis of particle physics data analysis reproducible and reusable.

[Andrey Ustyuzhanin](https://github.com/anaderi) is the head of the interdisciplinary research group at Yandex School of Data Analysis ([YSDA](https://yandexdataschool.com)). His group is involved in data science-intensive research in fundamental science. YSDA is full member of [LHCb collaboration](http://lhcb.web.cern.ch/lhcb/), [SHiP collaboration](http://ship.web.cern.ch/ship/) and [CRAYFIS](http://crayfis.io). Interdisciplinary research success is highly sensitive to making research as much transparent for peers from domains involved as possible. Andrey is co-founder of [everware] and [Reprodicuble Experiment Platform](https://github.com/yandex/rep) projects.

[Nicolas P. Rougier](http://www.labri.fr/perso/nrougier/) is a researcher in
computational neuroscience at the Neurodegerative Disease Institute (Bordeaux,
France). He is an active open source developer and has been confronted with the
[reproducibility problem](http://journal.frontiersin.org/article/10.3389/fncom.2015.00030/full) in computational neuroscience. He co-founded the
[ReScience journal](http://rescience.github.io) with Konrad Hinsen.

[Lukas Heinrich](https://github.com/lukasheinrich) is a experimental particle
physicist involved in bringing reproducibility and reusability to the LHC experiments at CERN as
the lead developer of the [Recast](https://github.com/recast-hep) project.
 
The proponents are researchers in data intensive fields. They have
significant technical experience with the individual components
required to construct a working prototype. They also have a track
record of contributing to open-source projects and growing communities
around projects. In addition, one of the proponents ([CTB]) is
experienced in teaching highly technical tools to novices via his
involvement with [Software Carpentry](http://software-carpentry.org/) and his training initiative at UC
Davis. Another of the proponents ([TH]) has built a
[demonstrator](http://everware.xyz) that allows people to jump right
in to other's research code.

## Expressions of interest in this project

We contacted the following journals and received an expression of interest
in seeing a working prototype implementing the ideas of this proposal:

<https://github.com/betatim/openscienceprize/issues/22#issuecomment-189144172> (**place holder XXX**)

* [GigaScience] - Laurie Goodman
* [F1000] - Michael Markie
* [Research Ideas and Outcomes] - Lyubomir Penev
* [ReScience] - Konrad Hinsen and Nicolas P. Rougier
* [Authorea](https://www.authorea.com/) - Alberto Pepe

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
[IPOL]:      http://www.ipol.im/
[BSD3]:      http://choosealicense.com/licenses/bsd-3-clause/
[CC BY 4.0]: http://creativecommons.org/licenses/by/4.0/
[Open Science Framework]: https://osf.io
[Exec and share companion sites]: http://www.execandshare.org/CompanionSite/
[Giga]: http://gigascience.biomedcentral.com/
[F1000]: http://F1000.com
[Research Ideas and outcomes]: http://riojournal.com/
[ReScience]: https://rescience.github.io
[CTB]: https://github.com/ctb
[TH]:  https://github.com/betatim
