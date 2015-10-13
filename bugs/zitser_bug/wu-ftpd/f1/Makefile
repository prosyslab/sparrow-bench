
all:	mp-bad mp-ok create

clean:	
	rm -f *-bad *-ok create

mp-bad: mapped-path-bad.c
	gcc --save-temps -o mp-bad mapped-path-bad.c

mp-ok: mapped-path-ok.c
	gcc --save-temps -o mp-ok mapped-path-ok.c

create: make-long-path.c
	gcc -o create make-long-path.c ; \
	touch pathfile ; \
	create
