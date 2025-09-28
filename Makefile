# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
DATE          = $(shell date +%Y-%m-%d)

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

image:
	docker buildx build --platform linux/amd64  -t hsiangjenli/sphinx-doc:paper-digest-$(DATE) .github
	docker tag hsiangjenli/sphinx-doc:paper-digest-$(DATE) hsiangjenli/sphinx-doc:paper-digest-latest
	docker push hsiangjenli/sphinx-doc:paper-digest-$(DATE)
	docker push hsiangjenli/sphinx-doc:paper-digest-latest
	
	docker buildx build --platform linux/amd64  -t hsiangjenli/markmap:latest -f .github/Dockerfile.markmap .

run:
# 	docker run -it --rm --platform=linux/amd64 -v "$(PWD):/workspace" hsiangjenli/sphinx-doc:paper-digest-$(DATE) python source/_static/gen_keyword/script.py
	docker run -it --rm --platform=linux/amd64 -v "$(PWD):/workspace" hsiangjenli/sphinx-doc:paper-digest-latest