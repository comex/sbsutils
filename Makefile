BINS := sblaunch sburlschemes sbopenurl
all: $(BINS)
%: %.c ent.plist
	 igcc -o $@ $< -std=gnu99 -framework CoreFoundation -framework SpringBoardServices
	 ldid -Sent.plist $@
clean:
	rm -f $(BINS)
