site_defaults := defaults/site
resource_defaults := defaults/resource
latex_defaults := defaults/syllabus
md_dir := markdown
site_md_sources := $(wildcard $(md_dir)/*.md)
resource_md_sources := $(wildcard $(md_dir)/resources/*.md)
site_html_dir := plweb
resources_html_dir := plweb/resources
site_html_targets := $(subst $(md_dir), $(site_html_dir),$(subst .md,.html,$(site_md_sources)))
site_html_layout := layouts/site.html
resource_html_targets := $(subst $(md_dir)/resources, $(resources_html_dir),$(subst .md,.html,$(resource_md_sources)))
resource_html_layout := layouts/resource.html
latex_layout := layouts/syllabus.latex

sitepath=/Users/heades/website/heades.github.io/plweb
notespath := lecture-notes

all : $(site_html_targets) $(resource_html_targets) $(site_html_dir)/includes/syllabus.pdf

$(resources_html_dir)/%.html : $(md_dir)/resources/%.md Makefile $(resource_html_layout) $(resource_defaults).yaml
	pandoc -s -d $(resource_defaults) -o $@ $<

$(site_html_dir)/%.html : $(md_dir)/%.md Makefile $(site_html_layout) $(site_defaults).yaml
	pandoc -s -d $(site_defaults) -o $@ $<

$(site_html_dir)/includes/syllabus.pdf : $(md_dir)/index.md $(latex_layout) $(latex_defaults).yaml
	pandoc -s -d $(latex_defaults) -o $(site_html_dir)/includes/syllabus.pdf $(md_dir)/index.md

serve :
	http-server

watch :
	find $(md_dir) | entr -c 'make'

push: all
	~/PL/scripts/commit-local-changes.sh	
	cp -vR $(site_html_dir)/* $(sitepath)
	cd $(notespath) && make
	cd $(sitepath) && git add . && git commit -a -m 'Updating PL Website.' && git push	

clean :
	rm -f $(site_html_dir)/*.html
	rm -f $(resources_html_dir)/*.html
	rm -rf $(sitepath)/*
