SUBDIRS := $(patsubst %/Makefile,%,$(wildcard */Makefile))

all:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir || exit 1; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean || exit 1; \
	done

clobber:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clobber || exit 1; \
	done

test:
	@for dir in $(SUBDIRS); do \
		if grep -q '^test[[:space:]]*:' $$dir/Makefile; then \
			$(MAKE) -C $$dir test || exit 1; \
		fi; \
	done

.PHONY: all clean clobber test
