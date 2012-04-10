WORDLISTS = pg-general-wordlist pg-specific-wordlist

TOBUILD = $(addsuffix .aspell,$(WORDLISTS))

all: $(TOBUILD)

clean:
	rm -f $(TOBUILD)

%.aspell: %.txt
	rm -f $@
	aspell --language-tag=en create master ./$@ < $<