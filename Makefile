pdf: proposal.pdf abstract.pdf

%.pdf: %.md
	pandoc -V colorlinks $< -o $@
