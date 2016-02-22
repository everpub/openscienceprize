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


## Challenges and State of the Art

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
place that allows them to share it with others in a way that
encourages reuse, gives them credit for doing so, and tracks 


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


## Solution

This project will build tools and guides that are useful to scientists
from day one of their analysis (so they use them for purely selfish
reasons) and as a "waste product" allows others to reuse that
particular data analysis.


## Licenses

This project will build on top of a tradition of open source tools. We
will contribute to existing open-source projects under their license. All
newly created material and projects will be licensed under BSD3 for code
and CC4 BY for other material.


## Conclusion

This will be amazing!
