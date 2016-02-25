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
reinvent the wheel many times over is a waste of resources. We will
lower the barrier to reuse by providing a web based way to create an
environment, use it, and then download it for use in future research.

This project will build the infrastructure required to create and
publish scientific output that is more than a simple, static
document. Allowing others to instantly apply the shared code to the
shared data. To make this a success two things are needed:

1) a web application that allows users to publish their research work
   as an interactive document instead of a static PDF, instantly
   reusable by other researchers.

2) blue prints, tools and best practices guides for creating such a
   publication. 

By publishing executable content and making it as simple as clicking a
button in your browser to try it out the pace of research based on
computer programs will accelerate. Credit can be assigned by counting
how often work is reused. Appreciation is signaled by a simple "thumbs
up". Thereby creating a social web for science similar to github's
social web for code.


## Story

Describe the idea without relying on technical terms.

Today scientific results are published as static documents. Limited in
length and content by the requirement of printed journals. The printed
journal was a groundbreaking invention in the 17th century, today we
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
yet another location. Creating work based on this material is
laborious. Combined with the fact that research code is by its very
nature not made for "consumers", reuse of the tools implementing the
new scientific knowledge published in the article is unlikely. Instead
they are reimplemented from scratch or older, less sophisticated
methods are used. Either way the progress of science is slowed down.

XXX Benefits of reusing and building on other research are obvious
... XXX

Reusing someone else's work is risky. You might invest a lot of time
upfront understanding the code and data, hoping to save time in the
long term for your own research, but these savings might never
materialise. Lowering the bar to entry is crucial as it reduces the
risk associated with trying out other researchers code. We propose
executable papers as a way to increase reuse.

Executable papers can be achieved with a three step program. The
first step is to use automatic execution of code so that we can be
sure that this code was used to create this figure. The second step
consists of providing a mechanism for individuals to create a copy of
the code and make small modifications before re-running the
analysis. The final step is to provide a simple way for researchers to
download the modified executable paper to their local computer
in order to use it as basis for future research projects.

To create novel research findings data, methods and visualisations
from several executable papers can be combined. This significantly
reduces turn around time and increases the rate at which new knowledge
is created. Starting from an existing executable paper is free as
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
modify the environment. This prevents the "This worked four weeks ago
and I changed nothing!" scenario, enables rapid sharing with
colleagues, and dramatically reduces the time and effort until new
team members can make contributions to a project. It increases
reproducibility and

### Long term user story

Code is to data analysis what maths is to the laws of nature, the most
precise description. Only the publication of code and environment
together allows post hoc analysis for flawed methodology or whether a
result was affected by a certain bug in a computer program used.

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


## State of the Art

The individual technical components required for creating an open,
reusable and rich publication have recently become available to those
following the cutting edge of technology.

Using the NASA Technology readiness levels as a guide open and
reusable science publishing has reached level 3/4. That is individual
components have been validated in a laboratory setting. This project
will elevate open and reusable science publishing to level 6/7. This
represents a major step in the level of fidelity of the technology,
demonstrating a prototype system, which goes beyond ad-hoc patched
together components, in use in a relevant environment.

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


* Collaborative creation of code is solved by github.

* Describing the environment in which your code runs is solved by
  docker.

* Managing workflows is solved by tools like `make`, `snakemake`, etc.

* Notebooks and Rmarkdown allow you to describe the narrative of your
  computations.

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


## Solution

This project will build tools and guides that are useful to scientists
from day one of their analysis (so they use them for purely selfish
reasons) and as a "waste product" allows others to reuse that
particular data analysis.

XXX More stuff here


## Resource feasibility

The proponents are researchers in data intensive fields. They have
vast technical experience with the individual components required to
construct a working prototype. They have a track record of
contributing to open-source projects and growing communities around
projects. One of the proponents (CTB) is experienced in teaching
highly technical tools to novices via his involvedment with Software
Carpentry. One of the proponents (TH) has built a
[demonstrator](http://everware.xyz) that allows people to jump right
in to other's research code.


## Licenses

This project will build on top of a tradition of open source tools. We
will contribute to existing open-source projects under their license. All
newly created material and projects will be licensed under BSD3 for code
and CC4 BY for other material.


## Conclusion

This will be amazing!
