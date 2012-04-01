NAME = piratebox-scripts
VERSION = 0.4
ARCH = all
PB_FOLDER=piratebox

PACKAGE= $(NAME)_$(VERSION).tar.gz

.DEFAULT_GOAL = all





$(PACKAGE): 
	tar czf $@ -C $(PB_FOLDER) .


all: $(PACKAGE)

clean: cleanbuild
	-rm -f $(PACKAGE)

.PHONY: all clean

