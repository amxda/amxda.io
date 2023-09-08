DOMAIN = amada95.srht.site
TARBALL = site.tar.gz

.PHONY: all compress publish clean

all: compress 

publish: compress
	@hut pages publish -d $(DOMAIN) $(TARBALL)

compress:
	@echo "compressing site tarball..."
	@tar -cvz * > /tmp/$(TARBALL) 
	@mv /tmp/$(TARBALL) .
	@echo "site tarball created: $(TARBALL)"

clean:
	rm $(TARBALL)
