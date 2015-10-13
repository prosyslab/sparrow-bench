
all:	obo-bad obo-ok setup

clean:	
	rm -rf *-bad *-ok /tmp/foo

obo-bad: call_fb_realpath.c realpath-bad.c
	gcc --save-temps -o obo-bad call_fb_realpath.c realpath-bad.c

obo-ok: call_fb_realpath.c realpath-ok.c
	gcc --save-temps -o obo-ok call_fb_realpath.c realpath-ok.c

setup: 
	mkdir -p /tmp/foo/bar/foo/bar/foo/bar/foo/bar ; \
	touch /tmp/foo/bar/foo/bar/foo/bar/foo/bar/abcdefghi ; \
	ln -s /tmp/foo/bar/foo/bar/foo/bar/foo/bar/abcdefghi /tmp/foo/bar/foo/bar/foo/bar/foo/bar/abcdefgh


