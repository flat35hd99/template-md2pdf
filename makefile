md=$(shell ls *.md)
pdf=$(md:%.md=output/%.pdf)

ALL: $(pdf)

output/%.pdf: %.md
	pandoc $< -o $@
