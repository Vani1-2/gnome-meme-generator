srpm:
	dnf install -y git
	$(eval VERSION := $(shell grep "Version:" *.spec | awk '{print $$2}'))
	git archive --format=tar.gz --prefix=memerist-$(VERSION)/ -o memerist-$(VERSION).tar.gz HEAD
	rpmbuild -bs --define "_sourcedir ." --define "_srcrpmdir $(outdir)" *.spec
