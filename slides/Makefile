SUBDIRS=20260305-Keylime-Monitoring-Tool-Stakeholders

all:
	@for dir in $(SUBDIRS); do \
		make -C $$dir || exit 1; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		make -C $$dir clean || exit 1; \
	done

clobber:
	@for dir in $(SUBDIRS); do \
		make -C $$dir clobber || exit 1; \
	done

test:
	@for dir in $(SUBDIRS); do \
		make -C $$dir test || exit 1; \
	done

.PHONY: all clean clobber test
