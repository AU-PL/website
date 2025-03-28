defaults := defaults/site
latex_defaults := defaults/syllabus
md_dir := markdown
md_sources := $(wildcard $(md_dir)/*.md)
html_dir := plweb
html_targets := $(subst $(md_dir), $(html_dir),$(subst .md,.html,$(md_sources)))
html_layout := layouts/site.html
latex_layout := layouts/syllabus.latex

sitepath=/Users/heades/website/heades.github.io/plweb
notespath := lecture-notes

all : $(html_targets) $(html_dir)/includes/syllabus.pdf

$(html_dir)/%.html : $(md_dir)/%.md Makefile $(html_layout) $(defaults).yaml
	pandoc -s -d $(defaults) -o $@ $<

$(html_dir)/includes/syllabus.pdf : $(md_dir)/index.md $(latex_layout) $(latex_defaults).yaml
	pandoc -s -d $(latex_defaults) -o $(html_dir)/includes/syllabus.pdf $(md_dir)/index.md

serve :
	http-server

watch :
	find $(md_dir) | entr -c 'make'

push: all
	~/PL/scripts/commit-local-changes.sh	
	cp -vR $(html_dir)/* $(sitepath)
	cd $(notespath) && make
	cd $(sitepath) && git add . && git commit -a -m 'Updating PL Website.' && git push	

clean :
	rm -f $(html_dir)/*.html
	rm -rf $(sitepath)/*
