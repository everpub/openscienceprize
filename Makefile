FORMAT = markdown+mmd_title_block
pdf: proposal.pdf abstract.pdf

%.pdf: %.md
	pandoc --standalone --from $(FORMAT) -V colorlinks $< -o $@
