# 1 "nxt-ok.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "nxt-ok.c"
# 71 "nxt-ok.c"
# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 313 "/usr/include/features.h" 3 4
# 1 "/usr/include/bits/predefs.h" 1 3 4
# 314 "/usr/include/features.h" 2 3 4
# 346 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 353 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 354 "/usr/include/sys/cdefs.h" 2 3 4
# 347 "/usr/include/features.h" 2 3 4
# 378 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4



# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 5 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-32.h" 1 3 4
# 8 "/usr/include/gnu/stubs.h" 2 3 4
# 379 "/usr/include/features.h" 2 3 4
# 29 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 35 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 28 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;







__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
# 131 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 132 "/usr/include/bits/types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __u_quad_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __quad_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __u_quad_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;

__extension__ typedef int __daddr_t;
__extension__ typedef long int __swblk_t;
__extension__ typedef int __key_t;


__extension__ typedef int __clockid_t;


__extension__ typedef void * __timer_t;


__extension__ typedef long int __blksize_t;




__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;


__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;


__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;

__extension__ typedef int __ssize_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


__extension__ typedef int __intptr_t;


__extension__ typedef unsigned int __socklen_t;
# 37 "/usr/include/stdio.h" 2 3 4
# 45 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 65 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 75 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 83 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4

typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 53 "/usr/include/_G_config.h" 3 4
typedef int _G_int16_t __attribute__ ((__mode__ (__HI__)));
typedef int _G_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int _G_uint16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int _G_uint32_t __attribute__ ((__mode__ (__SI__)));
# 33 "/usr/include/libio.h" 2 3 4
# 53 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 43 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 54 "/usr/include/libio.h" 2 3 4
# 170 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 180 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 203 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 271 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 319 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 328 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 364 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, __const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 416 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 458 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__));
# 488 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__));
# 76 "/usr/include/stdio.h" 2 3 4
# 89 "/usr/include/stdio.h" 3 4


typedef _G_fpos_t fpos_t;




# 141 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 142 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (__const char *__filename) __attribute__ ((__nothrow__));

extern int rename (__const char *__old, __const char *__new) __attribute__ ((__nothrow__));




extern int renameat (int __oldfd, __const char *__old, int __newfd,
       __const char *__new) __attribute__ ((__nothrow__));








extern FILE *tmpfile (void) ;
# 186 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__)) ;
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (__const char *__dir, __const char *__pfx)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 229 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 243 "/usr/include/stdio.h" 3 4






extern FILE *fopen (__const char *__restrict __filename,
      __const char *__restrict __modes) ;




extern FILE *freopen (__const char *__restrict __filename,
        __const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 272 "/usr/include/stdio.h" 3 4

# 283 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, __const char *__modes) __attribute__ ((__nothrow__)) ;
# 296 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, __const char *__modes)
  __attribute__ ((__nothrow__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__));








extern int fprintf (FILE *__restrict __stream,
      __const char *__restrict __format, ...);




extern int printf (__const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      __const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (__const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       __const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 394 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, __const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, __const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     __const char *__restrict __format, ...) ;




extern int scanf (__const char *__restrict __format, ...) ;

extern int sscanf (__const char *__restrict __s,
     __const char *__restrict __format, ...) __attribute__ ((__nothrow__));
# 425 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, __const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;


extern int scanf (__const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;

extern int sscanf (__const char *__restrict __s, __const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__));
# 445 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (__const char *__restrict __s,
      __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 476 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (__const char *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf")



     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 504 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 532 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 543 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 576 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;






extern char *gets (char *__s) ;

# 638 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (__const char *__restrict __s, FILE *__restrict __stream);





extern int puts (__const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (__const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) ;

# 710 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (__const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream) ;








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 746 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 765 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, __const fpos_t *__pos);
# 788 "/usr/include/stdio.h" 3 4

# 797 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;








extern void perror (__const char *__s);






# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 27 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern __const char *__const sys_errlist[];
# 827 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
# 846 "/usr/include/stdio.h" 3 4
extern FILE *popen (__const char *__command, __const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__));
# 886 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__));
# 916 "/usr/include/stdio.h" 3 4

# 72 "nxt-ok.c" 2
# 1 "/usr/include/sys/types.h" 1 3 4
# 29 "/usr/include/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 62 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 100 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;




typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 133 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 74 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 92 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 104 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 134 "/usr/include/sys/types.h" 2 3 4
# 147 "/usr/include/sys/types.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 148 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 195 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 217 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 61 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 28 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4
# 62 "/usr/include/endian.h" 2 3 4
# 218 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 23 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 24 "/usr/include/bits/select.h" 2 3 4
# 32 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 24 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 35 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
# 45 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 69 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 47 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 67 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 99 "/usr/include/sys/select.h" 3 4

# 109 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 121 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);



# 221 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 30 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__));
# 224 "/usr/include/sys/types.h" 2 3 4
# 235 "/usr/include/sys/types.h" 3 4
typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 24 "/usr/include/bits/pthreadtypes.h" 2 3 4
# 50 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


typedef union
{
  char __size[36];
  long int __align;
} pthread_attr_t;
# 67 "/usr/include/bits/pthreadtypes.h" 3 4
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;





typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;





    int __kind;





    unsigned int __nusers;
    __extension__ union
    {
      int __spins;
      __pthread_slist_t __list;
    };

  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{
# 170 "/usr/include/bits/pthreadtypes.h" 3 4
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;


    unsigned char __flags;
    unsigned char __shared;
    unsigned char __pad1;
    unsigned char __pad2;
    int __writer;
  } __data;

  char __size[32];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[20];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4



# 73 "nxt-ok.c" 2
# 1 "/usr/include/sys/param.h" 1 3 4
# 26 "/usr/include/sys/param.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 122 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 145 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 157 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 40 "/usr/include/bits/local_lim.h" 2 3 4
# 158 "/usr/include/bits/posix1_lim.h" 2 3 4
# 146 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 150 "/usr/include/limits.h" 2 3 4
# 123 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 2 3 4
# 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/syslimits.h" 2 3 4
# 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 2 3 4
# 27 "/usr/include/sys/param.h" 2 3 4

# 1 "/usr/include/linux/param.h" 1 3 4



# 1 "/usr/include/asm/param.h" 1 3 4
# 1 "/usr/include/asm-generic/param.h" 1 3 4
# 1 "/usr/include/asm/param.h" 2 3 4
# 5 "/usr/include/linux/param.h" 2 3 4
# 29 "/usr/include/sys/param.h" 2 3 4
# 74 "nxt-ok.c" 2
# 1 "/usr/include/sys/socket.h" 1 3 4
# 26 "/usr/include/sys/socket.h" 3 4


# 1 "/usr/include/sys/uio.h" 1 3 4
# 26 "/usr/include/sys/uio.h" 3 4



# 1 "/usr/include/bits/uio.h" 1 3 4
# 44 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 30 "/usr/include/sys/uio.h" 2 3 4
# 40 "/usr/include/sys/uio.h" 3 4
extern ssize_t readv (int __fd, __const struct iovec *__iovec, int __count)
  ;
# 51 "/usr/include/sys/uio.h" 3 4
extern ssize_t writev (int __fd, __const struct iovec *__iovec, int __count)
  ;
# 66 "/usr/include/sys/uio.h" 3 4
extern ssize_t preadv (int __fd, __const struct iovec *__iovec, int __count,
         __off_t __offset) ;
# 78 "/usr/include/sys/uio.h" 3 4
extern ssize_t pwritev (int __fd, __const struct iovec *__iovec, int __count,
   __off_t __offset) ;
# 121 "/usr/include/sys/uio.h" 3 4

# 29 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 31 "/usr/include/sys/socket.h" 2 3 4
# 40 "/usr/include/sys/socket.h" 3 4
# 1 "/usr/include/bits/socket.h" 1 3 4
# 29 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 30 "/usr/include/bits/socket.h" 2 3 4





typedef __socklen_t socklen_t;




enum __socket_type
{
  SOCK_STREAM = 1,


  SOCK_DGRAM = 2,


  SOCK_RAW = 3,

  SOCK_RDM = 4,

  SOCK_SEQPACKET = 5,


  SOCK_DCCP = 6,

  SOCK_PACKET = 10,







  SOCK_CLOEXEC = 02000000,


  SOCK_NONBLOCK = 04000


};
# 171 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/bits/sockaddr.h" 1 3 4
# 29 "/usr/include/bits/sockaddr.h" 3 4
typedef unsigned short int sa_family_t;
# 172 "/usr/include/bits/socket.h" 2 3 4


struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
# 187 "/usr/include/bits/socket.h" 3 4
struct sockaddr_storage
  {
    sa_family_t ss_family;
    unsigned long int __ss_align;
    char __ss_padding[(128 - (2 * sizeof (unsigned long int)))];
  };



enum
  {
    MSG_OOB = 0x01,

    MSG_PEEK = 0x02,

    MSG_DONTROUTE = 0x04,






    MSG_CTRUNC = 0x08,

    MSG_PROXY = 0x10,

    MSG_TRUNC = 0x20,

    MSG_DONTWAIT = 0x40,

    MSG_EOR = 0x80,

    MSG_WAITALL = 0x100,

    MSG_FIN = 0x200,

    MSG_SYN = 0x400,

    MSG_CONFIRM = 0x800,

    MSG_RST = 0x1000,

    MSG_ERRQUEUE = 0x2000,

    MSG_NOSIGNAL = 0x4000,

    MSG_MORE = 0x8000,


    MSG_CMSG_CLOEXEC = 0x40000000



  };




struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;

    struct iovec *msg_iov;
    size_t msg_iovlen;

    void *msg_control;
    size_t msg_controllen;




    int msg_flags;
  };


struct cmsghdr
  {
    size_t cmsg_len;




    int cmsg_level;
    int cmsg_type;

    __extension__ unsigned char __cmsg_data [];

  };
# 293 "/usr/include/bits/socket.h" 3 4
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__));
# 320 "/usr/include/bits/socket.h" 3 4
enum
  {
    SCM_RIGHTS = 0x01





  };
# 366 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/asm/socket.h" 1 3 4
# 1 "/usr/include/asm-generic/socket.h" 1 3 4



# 1 "/usr/include/asm/sockios.h" 1 3 4
# 1 "/usr/include/asm-generic/sockios.h" 1 3 4
# 1 "/usr/include/asm/sockios.h" 2 3 4
# 5 "/usr/include/asm-generic/socket.h" 2 3 4
# 1 "/usr/include/asm/socket.h" 2 3 4
# 367 "/usr/include/bits/socket.h" 2 3 4
# 400 "/usr/include/bits/socket.h" 3 4
struct linger
  {
    int l_onoff;
    int l_linger;
  };
# 41 "/usr/include/sys/socket.h" 2 3 4




struct osockaddr
  {
    unsigned short int sa_family;
    unsigned char sa_data[14];
  };




enum
{
  SHUT_RD = 0,

  SHUT_WR,

  SHUT_RDWR

};
# 105 "/usr/include/sys/socket.h" 3 4
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__));





extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__));


extern int bind (int __fd, __const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__));


extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__));
# 129 "/usr/include/sys/socket.h" 3 4
extern int connect (int __fd, __const struct sockaddr * __addr, socklen_t __len);



extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__));






extern ssize_t send (int __fd, __const void *__buf, size_t __n, int __flags);






extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);






extern ssize_t sendto (int __fd, __const void *__buf, size_t __n,
         int __flags, __const struct sockaddr * __addr,
         socklen_t __addr_len);
# 166 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);







extern ssize_t sendmsg (int __fd, __const struct msghdr *__message,
   int __flags);






extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);





extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__));




extern int setsockopt (int __fd, int __level, int __optname,
         __const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__));





extern int listen (int __fd, int __n) __attribute__ ((__nothrow__));
# 214 "/usr/include/sys/socket.h" 3 4
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
# 232 "/usr/include/sys/socket.h" 3 4
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__));




extern int sockatmark (int __fd) __attribute__ ((__nothrow__));







extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__));
# 254 "/usr/include/sys/socket.h" 3 4

# 75 "nxt-ok.c" 2
# 1 "/usr/include/sys/file.h" 1 3 4
# 25 "/usr/include/sys/file.h" 3 4
# 1 "/usr/include/fcntl.h" 1 3 4
# 30 "/usr/include/fcntl.h" 3 4




# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 25 "/usr/include/bits/fcntl.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 26 "/usr/include/bits/fcntl.h" 2 3 4
# 158 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };
# 238 "/usr/include/bits/fcntl.h" 3 4

# 283 "/usr/include/bits/fcntl.h" 3 4

# 35 "/usr/include/fcntl.h" 2 3 4
# 64 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 73 "/usr/include/fcntl.h" 3 4
extern int open (__const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 97 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, __const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 108 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, __const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 118 "/usr/include/fcntl.h" 3 4
extern int creat (__const char *__file, __mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 147 "/usr/include/fcntl.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len);
# 164 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, __off_t __offset, __off_t __len,
     int __advise) __attribute__ ((__nothrow__));
# 186 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, __off_t __offset, __off_t __len);
# 208 "/usr/include/fcntl.h" 3 4

# 26 "/usr/include/sys/file.h" 2 3 4



# 51 "/usr/include/sys/file.h" 3 4
extern int flock (int __fd, int __operation) __attribute__ ((__nothrow__));



# 76 "nxt-ok.c" 2
# 1 "/usr/include/sys/un.h" 1 3 4
# 27 "/usr/include/sys/un.h" 3 4



struct sockaddr_un
  {
    sa_family_t sun_family;
    char sun_path[108];
  };



# 1 "/usr/include/string.h" 1 3 4
# 28 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest,
       __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, __const void *__src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, __const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 94 "/usr/include/string.h" 3 4
extern void *memchr (__const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 125 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, __const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 28 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 162 "/usr/include/string.h" 2 3 4


extern int strcoll_l (__const char *__s1, __const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, __const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (__const char *__string, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 208 "/usr/include/string.h" 3 4

# 233 "/usr/include/string.h" 3 4
extern char *strchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 260 "/usr/include/string.h" 3 4
extern char *strrchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 279 "/usr/include/string.h" 3 4



extern size_t strcspn (__const char *__s, __const char *__reject)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 312 "/usr/include/string.h" 3 4
extern char *strpbrk (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 340 "/usr/include/string.h" 3 4
extern char *strstr (__const char *__haystack, __const char *__needle)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, __const char *__restrict __delim)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    __const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, __const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
# 395 "/usr/include/string.h" 3 4


extern size_t strlen (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (__const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__));

# 425 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
# 443 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (__const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 487 "/usr/include/string.h" 3 4
extern char *index (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 515 "/usr/include/string.h" 3 4
extern char *rindex (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 534 "/usr/include/string.h" 3 4
extern int strcasecmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 557 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       __const char *__restrict __delim)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__));


extern char *__stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
# 644 "/usr/include/string.h" 3 4

# 39 "/usr/include/sys/un.h" 2 3 4







# 77 "nxt-ok.c" 2

# 1 "/usr/include/netinet/in.h" 1 3 4
# 24 "/usr/include/netinet/in.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 27 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 49 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;





__extension__
typedef unsigned long long int uint64_t;






typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;



__extension__
typedef long long int int_least64_t;



typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;



__extension__
typedef unsigned long long int uint_least64_t;






typedef signed char int_fast8_t;





typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;



typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
# 126 "/usr/include/stdint.h" 3 4
typedef int intptr_t;


typedef unsigned int uintptr_t;
# 138 "/usr/include/stdint.h" 3 4
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 25 "/usr/include/netinet/in.h" 2 3 4







enum
  {
    IPPROTO_IP = 0,

    IPPROTO_HOPOPTS = 0,

    IPPROTO_ICMP = 1,

    IPPROTO_IGMP = 2,

    IPPROTO_IPIP = 4,

    IPPROTO_TCP = 6,

    IPPROTO_EGP = 8,

    IPPROTO_PUP = 12,

    IPPROTO_UDP = 17,

    IPPROTO_IDP = 22,

    IPPROTO_TP = 29,

    IPPROTO_DCCP = 33,

    IPPROTO_IPV6 = 41,

    IPPROTO_ROUTING = 43,

    IPPROTO_FRAGMENT = 44,

    IPPROTO_RSVP = 46,

    IPPROTO_GRE = 47,

    IPPROTO_ESP = 50,

    IPPROTO_AH = 51,

    IPPROTO_ICMPV6 = 58,

    IPPROTO_NONE = 59,

    IPPROTO_DSTOPTS = 60,

    IPPROTO_MTP = 92,

    IPPROTO_ENCAP = 98,

    IPPROTO_PIM = 103,

    IPPROTO_COMP = 108,

    IPPROTO_SCTP = 132,

    IPPROTO_UDPLITE = 136,

    IPPROTO_RAW = 255,

    IPPROTO_MAX
  };



typedef uint16_t in_port_t;


enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,

    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,


    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,


    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,


    IPPORT_RESERVED = 1024,


    IPPORT_USERRESERVED = 5000
  };



typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
# 198 "/usr/include/netinet/in.h" 3 4
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];

 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];

      } __in6_u;





  };

extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
# 225 "/usr/include/netinet/in.h" 3 4
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;


    unsigned char sin_zero[sizeof (struct sockaddr) -
      (sizeof (unsigned short int)) -
      sizeof (in_port_t) -
      sizeof (struct in_addr)];
  };


struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };




struct ip_mreq
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;
  };

struct ip_mreq_source
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;


    struct in_addr imr_sourceaddr;
  };




struct ipv6_mreq
  {

    struct in6_addr ipv6mr_multiaddr;


    unsigned int ipv6mr_interface;
  };




struct group_req
  {

    uint32_t gr_interface;


    struct sockaddr_storage gr_group;
  };

struct group_source_req
  {

    uint32_t gsr_interface;


    struct sockaddr_storage gsr_group;


    struct sockaddr_storage gsr_source;
  };



struct ip_msfilter
  {

    struct in_addr imsf_multiaddr;


    struct in_addr imsf_interface;


    uint32_t imsf_fmode;


    uint32_t imsf_numsrc;

    struct in_addr imsf_slist[1];
  };





struct group_filter
  {

    uint32_t gf_interface;


    struct sockaddr_storage gf_group;


    uint32_t gf_fmode;


    uint32_t gf_numsrc;

    struct sockaddr_storage gf_slist[1];
};
# 356 "/usr/include/netinet/in.h" 3 4
# 1 "/usr/include/bits/in.h" 1 3 4
# 86 "/usr/include/bits/in.h" 3 4
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };


struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };


struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
# 357 "/usr/include/netinet/in.h" 2 3 4
# 365 "/usr/include/netinet/in.h" 3 4
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));




# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 377 "/usr/include/netinet/in.h" 2 3 4
# 440 "/usr/include/netinet/in.h" 3 4
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__));


extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__));
# 565 "/usr/include/netinet/in.h" 3 4

# 79 "nxt-ok.c" 2
# 1 "/usr/include/arpa/nameser.h" 1 3 4
# 61 "/usr/include/arpa/nameser.h" 3 4
# 1 "/usr/include/sys/bitypes.h" 1 3 4
# 62 "/usr/include/arpa/nameser.h" 2 3 4
# 98 "/usr/include/arpa/nameser.h" 3 4
typedef enum __ns_sect {
 ns_s_qd = 0,
 ns_s_zn = 0,
 ns_s_an = 1,
 ns_s_pr = 1,
 ns_s_ns = 2,
 ns_s_ud = 2,
 ns_s_ar = 3,
 ns_s_max = 4
} ns_sect;






typedef struct __ns_msg {
 const u_char *_msg, *_eom;
 u_int16_t _id, _flags, _counts[ns_s_max];
 const u_char *_sections[ns_s_max];
 ns_sect _sect;
 int _rrnum;
 const u_char *_msg_ptr;
} ns_msg;


struct _ns_flagdata { int mask, shift; };
extern const struct _ns_flagdata _ns_flagdata[];
# 138 "/usr/include/arpa/nameser.h" 3 4
typedef struct __ns_rr {
 char name[1025];
 u_int16_t type;
 u_int16_t rr_class;
 u_int32_t ttl;
 u_int16_t rdlength;
 const u_char * rdata;
} ns_rr;
# 160 "/usr/include/arpa/nameser.h" 3 4
typedef enum __ns_flag {
 ns_f_qr,
 ns_f_opcode,
 ns_f_aa,
 ns_f_tc,
 ns_f_rd,
 ns_f_ra,
 ns_f_z,
 ns_f_ad,
 ns_f_cd,
 ns_f_rcode,
 ns_f_max
} ns_flag;




typedef enum __ns_opcode {
 ns_o_query = 0,
 ns_o_iquery = 1,
 ns_o_status = 2,

 ns_o_notify = 4,
 ns_o_update = 5,
 ns_o_max = 6
} ns_opcode;




typedef enum __ns_rcode {
 ns_r_noerror = 0,
 ns_r_formerr = 1,
 ns_r_servfail = 2,
 ns_r_nxdomain = 3,
 ns_r_notimpl = 4,
 ns_r_refused = 5,

 ns_r_yxdomain = 6,
 ns_r_yxrrset = 7,
 ns_r_nxrrset = 8,
 ns_r_notauth = 9,
 ns_r_notzone = 10,
 ns_r_max = 11,

 ns_r_badvers = 16,

 ns_r_badsig = 16,
 ns_r_badkey = 17,
 ns_r_badtime = 18
} ns_rcode;


typedef enum __ns_update_operation {
 ns_uop_delete = 0,
 ns_uop_add = 1,
 ns_uop_max = 2
} ns_update_operation;




struct ns_tsig_key {
        char name[1025], alg[1025];
        unsigned char *data;
        int len;
};
typedef struct ns_tsig_key ns_tsig_key;




struct ns_tcp_tsig_state {
 int counter;
 struct dst_key *key;
 void *ctx;
 unsigned char sig[512];
 int siglen;
};
typedef struct ns_tcp_tsig_state ns_tcp_tsig_state;
# 252 "/usr/include/arpa/nameser.h" 3 4
typedef enum __ns_type {
 ns_t_invalid = 0,
 ns_t_a = 1,
 ns_t_ns = 2,
 ns_t_md = 3,
 ns_t_mf = 4,
 ns_t_cname = 5,
 ns_t_soa = 6,
 ns_t_mb = 7,
 ns_t_mg = 8,
 ns_t_mr = 9,
 ns_t_null = 10,
 ns_t_wks = 11,
 ns_t_ptr = 12,
 ns_t_hinfo = 13,
 ns_t_minfo = 14,
 ns_t_mx = 15,
 ns_t_txt = 16,
 ns_t_rp = 17,
 ns_t_afsdb = 18,
 ns_t_x25 = 19,
 ns_t_isdn = 20,
 ns_t_rt = 21,
 ns_t_nsap = 22,
 ns_t_nsap_ptr = 23,
 ns_t_sig = 24,
 ns_t_key = 25,
 ns_t_px = 26,
 ns_t_gpos = 27,
 ns_t_aaaa = 28,
 ns_t_loc = 29,
 ns_t_nxt = 30,
 ns_t_eid = 31,
 ns_t_nimloc = 32,
 ns_t_srv = 33,
 ns_t_atma = 34,
 ns_t_naptr = 35,
 ns_t_kx = 36,
 ns_t_cert = 37,
 ns_t_a6 = 38,
 ns_t_dname = 39,
 ns_t_sink = 40,
 ns_t_opt = 41,
 ns_t_apl = 42,
 ns_t_tkey = 249,
 ns_t_tsig = 250,
 ns_t_ixfr = 251,
 ns_t_axfr = 252,
 ns_t_mailb = 253,
 ns_t_maila = 254,
 ns_t_any = 255,
 ns_t_zxfr = 256,
 ns_t_max = 65536
} ns_type;
# 321 "/usr/include/arpa/nameser.h" 3 4
typedef enum __ns_class {
 ns_c_invalid = 0,
 ns_c_in = 1,
 ns_c_2 = 2,
 ns_c_chaos = 3,
 ns_c_hs = 4,

 ns_c_none = 254,
 ns_c_any = 255,
 ns_c_max = 65536
} ns_class;



typedef enum __ns_key_types {
 ns_kt_rsa = 1,
 ns_kt_dh = 2,
 ns_kt_dsa = 3,
 ns_kt_private = 254
} ns_key_types;

typedef enum __ns_cert_types {
 cert_t_pkix = 1,
 cert_t_spki = 2,
 cert_t_pgp = 3,
 cert_t_url = 253,
 cert_t_oid = 254
} ns_cert_types;
# 471 "/usr/include/arpa/nameser.h" 3 4

int ns_msg_getflag (ns_msg, int) __attribute__ ((__nothrow__));
u_int ns_get16 (const u_char *) __attribute__ ((__nothrow__));
u_long ns_get32 (const u_char *) __attribute__ ((__nothrow__));
void ns_put16 (u_int, u_char *) __attribute__ ((__nothrow__));
void ns_put32 (u_long, u_char *) __attribute__ ((__nothrow__));
int ns_initparse (const u_char *, int, ns_msg *) __attribute__ ((__nothrow__));
int ns_skiprr (const u_char *, const u_char *, ns_sect, int)
     __attribute__ ((__nothrow__));
int ns_parserr (ns_msg *, ns_sect, int, ns_rr *) __attribute__ ((__nothrow__));
int ns_sprintrr (const ns_msg *, const ns_rr *,
        const char *, const char *, char *, size_t)
     __attribute__ ((__nothrow__));
int ns_sprintrrf (const u_char *, size_t, const char *,
         ns_class, ns_type, u_long, const u_char *,
         size_t, const char *, const char *,
         char *, size_t) __attribute__ ((__nothrow__));
int ns_format_ttl (u_long, char *, size_t) __attribute__ ((__nothrow__));
int ns_parse_ttl (const char *, u_long *) __attribute__ ((__nothrow__));
u_int32_t ns_datetosecs (const char *, int *) __attribute__ ((__nothrow__));
int ns_name_ntol (const u_char *, u_char *, size_t) __attribute__ ((__nothrow__));
int ns_name_ntop (const u_char *, char *, size_t) __attribute__ ((__nothrow__));
int ns_name_pton (const char *, u_char *, size_t) __attribute__ ((__nothrow__));
int ns_name_unpack (const u_char *, const u_char *,
    const u_char *, u_char *, size_t) __attribute__ ((__nothrow__));
int ns_name_pack (const u_char *, u_char *, int,
         const u_char **, const u_char **) __attribute__ ((__nothrow__));
int ns_name_uncompress (const u_char *, const u_char *,
        const u_char *, char *, size_t) __attribute__ ((__nothrow__));
int ns_name_compress (const char *, u_char *, size_t,
      const u_char **, const u_char **) __attribute__ ((__nothrow__));
int ns_name_skip (const u_char **, const u_char *) __attribute__ ((__nothrow__));
void ns_name_rollback (const u_char *, const u_char **,
      const u_char **) __attribute__ ((__nothrow__));
int ns_sign (u_char *, int *, int, int, void *,
    const u_char *, int, u_char *, int *, time_t) __attribute__ ((__nothrow__));
int ns_sign2 (u_char *, int *, int, int, void *,
     const u_char *, int, u_char *, int *, time_t,
     u_char **, u_char **) __attribute__ ((__nothrow__));
int ns_sign_tcp (u_char *, int *, int, int,
        ns_tcp_tsig_state *, int) __attribute__ ((__nothrow__));
int ns_sign_tcp2 (u_char *, int *, int, int,
         ns_tcp_tsig_state *, int,
         u_char **, u_char **) __attribute__ ((__nothrow__));
int ns_sign_tcp_init (void *, const u_char *, int,
      ns_tcp_tsig_state *) __attribute__ ((__nothrow__));
u_char *ns_find_tsig (u_char *, u_char *) __attribute__ ((__nothrow__));
int ns_verify (u_char *, int *, void *, const u_char *, int,
      u_char *, int *, time_t *, int) __attribute__ ((__nothrow__));
int ns_verify_tcp (u_char *, int *, ns_tcp_tsig_state *, int)
     __attribute__ ((__nothrow__));
int ns_verify_tcp_init (void *, const u_char *, int,
        ns_tcp_tsig_state *) __attribute__ ((__nothrow__));
int ns_samedomain (const char *, const char *) __attribute__ ((__nothrow__));
int ns_subdomain (const char *, const char *) __attribute__ ((__nothrow__));
int ns_makecanon (const char *, char *, size_t) __attribute__ ((__nothrow__));
int ns_samename (const char *, const char *) __attribute__ ((__nothrow__));



# 1 "/usr/include/arpa/nameser_compat.h" 1 3 4
# 48 "/usr/include/arpa/nameser_compat.h" 3 4
typedef struct {
 unsigned id :16;
# 66 "/usr/include/arpa/nameser_compat.h" 3 4
 unsigned rd :1;
 unsigned tc :1;
 unsigned aa :1;
 unsigned opcode :4;
 unsigned qr :1;

 unsigned rcode :4;
 unsigned cd: 1;
 unsigned ad: 1;
 unsigned unused :1;
 unsigned ra :1;


 unsigned qdcount :16;
 unsigned ancount :16;
 unsigned nscount :16;
 unsigned arcount :16;
} HEADER;
# 532 "/usr/include/arpa/nameser.h" 2 3 4
# 80 "nxt-ok.c" 2
# 1 "/usr/include/arpa/inet.h" 1 3 4
# 31 "/usr/include/arpa/inet.h" 3 4




extern in_addr_t inet_addr (__const char *__cp) __attribute__ ((__nothrow__));


extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__));



extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__));


extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__));



extern in_addr_t inet_network (__const char *__cp) __attribute__ ((__nothrow__));



extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__));




extern int inet_pton (int __af, __const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__));




extern __const char *inet_ntop (int __af, __const void *__restrict __cp,
    char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__));






extern int inet_aton (__const char *__cp, struct in_addr *__inp) __attribute__ ((__nothrow__));



extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) __attribute__ ((__nothrow__));




extern char *inet_net_ntop (int __af, __const void *__cp, int __bits,
       char *__buf, size_t __len) __attribute__ ((__nothrow__));




extern int inet_net_pton (int __af, __const char *__cp,
     void *__buf, size_t __len) __attribute__ ((__nothrow__));




extern unsigned int inet_nsap_addr (__const char *__cp,
        unsigned char *__buf, int __len) __attribute__ ((__nothrow__));



extern char *inet_nsap_ntoa (int __len, __const unsigned char *__cp,
        char *__buf) __attribute__ ((__nothrow__));



# 81 "nxt-ok.c" 2

# 1 "/usr/include/errno.h" 1 3 4
# 32 "/usr/include/errno.h" 3 4




# 1 "/usr/include/bits/errno.h" 1 3 4
# 25 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4



# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/asm/errno.h" 2 3 4
# 5 "/usr/include/linux/errno.h" 2 3 4
# 26 "/usr/include/bits/errno.h" 2 3 4
# 43 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 37 "/usr/include/errno.h" 2 3 4
# 59 "/usr/include/errno.h" 3 4

# 83 "nxt-ok.c" 2
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 84 "nxt-ok.c" 2
# 1 "/usr/include/resolv.h" 1 3 4
# 71 "/usr/include/resolv.h" 3 4
typedef enum { res_goahead, res_nextns, res_modified, res_done, res_error }
 res_sendhookact;

typedef res_sendhookact (*res_send_qhook) (struct sockaddr_in * const *__ns,
        const u_char **__query,
        int *__querylen,
        u_char *__ans,
        int __anssiz,
        int *__resplen);

typedef res_sendhookact (*res_send_rhook) (const struct sockaddr_in *__ns,
        const u_char *__query,
        int __querylen,
        u_char *__ans,
        int __anssiz,
        int *__resplen);
# 104 "/usr/include/resolv.h" 3 4
struct __res_state {
 int retrans;
 int retry;
 u_long options;
 int nscount;
 struct sockaddr_in
  nsaddr_list[3];

 u_short id;

 char *dnsrch[6 +1];
 char defdname[256];
 u_long pfcode;
 unsigned ndots:4;
 unsigned nsort:4;
 unsigned ipv6_unavail:1;
 unsigned unused:23;
 struct {
  struct in_addr addr;
  u_int32_t mask;
 } sort_list[10];

 res_send_qhook qhook;
 res_send_rhook rhook;
 int res_h_errno;
 int _vcsock;
 u_int _flags;

 union {
  char pad[52];
  struct {
   u_int16_t nscount;
   u_int16_t nsmap[3];
   int nssocks[3];
   u_int16_t nscount6;
   u_int16_t nsinit;
   struct sockaddr_in6 *nsaddrs[3];




   unsigned int _initstamp[2];

  } _ext;
 } _u;
};

typedef struct __res_state *res_state;
# 176 "/usr/include/resolv.h" 3 4
struct res_sym {
 int number;
 char * name;
 char * humanname;
};
# 245 "/usr/include/resolv.h" 3 4

extern struct __res_state *__res_state(void) __attribute__ ((__const__));

# 264 "/usr/include/resolv.h" 3 4

void __fp_nquery (const u_char *, int, FILE *) __attribute__ ((__nothrow__));
void __fp_query (const u_char *, FILE *) __attribute__ ((__nothrow__));
const char * __hostalias (const char *) __attribute__ ((__nothrow__));
void __p_query (const u_char *) __attribute__ ((__nothrow__));
void __res_close (void) __attribute__ ((__nothrow__));
int __res_init (void) __attribute__ ((__nothrow__));
int __res_isourserver (const struct sockaddr_in *) __attribute__ ((__nothrow__));
int __res_mkquery (int, const char *, int, int, const u_char *,
        int, const u_char *, u_char *, int) __attribute__ ((__nothrow__));
int __res_query (const char *, int, int, u_char *, int) __attribute__ ((__nothrow__));
int __res_querydomain (const char *, const char *, int, int,
     u_char *, int) __attribute__ ((__nothrow__));
int __res_search (const char *, int, int, u_char *, int) __attribute__ ((__nothrow__));
int __res_send (const u_char *, int, u_char *, int) __attribute__ ((__nothrow__));

# 324 "/usr/include/resolv.h" 3 4

int __res_hnok (const char *) __attribute__ ((__nothrow__));
int __res_ownok (const char *) __attribute__ ((__nothrow__));
int __res_mailok (const char *) __attribute__ ((__nothrow__));
int __res_dnok (const char *) __attribute__ ((__nothrow__));
int __sym_ston (const struct res_sym *, const char *, int *) __attribute__ ((__nothrow__));
const char * __sym_ntos (const struct res_sym *, int, int *) __attribute__ ((__nothrow__));
const char * __sym_ntop (const struct res_sym *, int, int *) __attribute__ ((__nothrow__));
int __b64_ntop (u_char const *, size_t, char *, size_t) __attribute__ ((__nothrow__));
int __b64_pton (char const *, u_char *, size_t) __attribute__ ((__nothrow__));
int __loc_aton (const char *__ascii, u_char *__binary) __attribute__ ((__nothrow__));
const char * __loc_ntoa (const u_char *__binary, char *__ascii) __attribute__ ((__nothrow__));
int __dn_skipname (const u_char *, const u_char *) __attribute__ ((__nothrow__));
void __putlong (u_int32_t, u_char *) __attribute__ ((__nothrow__));
void __putshort (u_int16_t, u_char *) __attribute__ ((__nothrow__));
const char * __p_class (int) __attribute__ ((__nothrow__));
const char * __p_time (u_int32_t) __attribute__ ((__nothrow__));
const char * __p_type (int) __attribute__ ((__nothrow__));
const char * __p_rcode (int) __attribute__ ((__nothrow__));
const u_char * __p_cdnname (const u_char *, const u_char *, int, FILE *)
     __attribute__ ((__nothrow__));
const u_char * __p_cdname (const u_char *, const u_char *, FILE *) __attribute__ ((__nothrow__));
const u_char * __p_fqnname (const u_char *__cp, const u_char *__msg,
      int, char *, int) __attribute__ ((__nothrow__));
const u_char * __p_fqname (const u_char *, const u_char *, FILE *) __attribute__ ((__nothrow__));
const char * __p_option (u_long __option) __attribute__ ((__nothrow__));
char * __p_secstodate (u_long) __attribute__ ((__nothrow__));
int __dn_count_labels (const char *) __attribute__ ((__nothrow__));
int __dn_comp (const char *, u_char *, int, u_char **, u_char **)
     __attribute__ ((__nothrow__));
int __dn_expand (const u_char *, const u_char *, const u_char *,
      char *, int) __attribute__ ((__nothrow__));
u_int __res_randomid (void) __attribute__ ((__nothrow__));
int __res_nameinquery (const char *, int, int,
     const u_char *, const u_char *) __attribute__ ((__nothrow__));
int __res_queriesmatch (const u_char *, const u_char *,
      const u_char *, const u_char *) __attribute__ ((__nothrow__));
const char * __p_section (int __section, int __opcode) __attribute__ ((__nothrow__));

int __res_ninit (res_state) __attribute__ ((__nothrow__));
int __res_nisourserver (const res_state,
      const struct sockaddr_in *) __attribute__ ((__nothrow__));
void __fp_resstat (const res_state, FILE *) __attribute__ ((__nothrow__));
void __res_npquery (const res_state, const u_char *, int, FILE *)
     __attribute__ ((__nothrow__));
const char * __res_hostalias (const res_state, const char *, char *, size_t)
     __attribute__ ((__nothrow__));
int __res_nquery (res_state, const char *, int, int, u_char *, int)
     __attribute__ ((__nothrow__));
int __res_nsearch (res_state, const char *, int, int, u_char *, int)
     __attribute__ ((__nothrow__));
int __res_nquerydomain (res_state, const char *, const char *, int,
      int, u_char *, int) __attribute__ ((__nothrow__));
int __res_nmkquery (res_state, int, const char *, int, int,
         const u_char *, int, const u_char *, u_char *,
         int) __attribute__ ((__nothrow__));
int __res_nsend (res_state, const u_char *, int, u_char *, int)
     __attribute__ ((__nothrow__));
void __res_nclose (res_state) __attribute__ ((__nothrow__));

# 85 "nxt-ok.c" 2

# 1 "/usr/include/stdlib.h" 1 3 4
# 33 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
# 34 "/usr/include/stdlib.h" 2 3 4


# 96 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 140 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__)) ;




extern double atof (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (__const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern float strtof (__const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern long double strtold (__const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern long int strtol (__const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern unsigned long int strtoul (__const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




__extension__
extern long long int strtoq (__const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtouq (__const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





__extension__
extern long long int strtoll (__const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtoull (__const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

# 311 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__)) ;


extern long int a64l (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
# 327 "/usr/include/stdlib.h" 3 4
extern long int random (void) __attribute__ ((__nothrow__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__));







extern double drand48 (void) __attribute__ ((__nothrow__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__));



# 1 "/usr/include/alloca.h" 1 3 4
# 25 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 26 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__));






# 498 "/usr/include/stdlib.h" 2 3 4




extern void *valloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern void abort (void) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 553 "/usr/include/stdlib.h" 3 4






extern void _Exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));






extern char *getenv (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern char *__secure_getenv (__const char *__name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern int putenv (char *__string) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (__const char *__name, __const char *__value, int __replace)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (__const char *__name) __attribute__ ((__nothrow__));






extern int clearenv (void) __attribute__ ((__nothrow__));
# 604 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 615 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 635 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 661 "/usr/include/stdlib.h" 3 4





extern int system (__const char *__command) ;

# 683 "/usr/include/stdlib.h" 3 4
extern char *realpath (__const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__)) ;






typedef int (*__compar_fn_t) (__const void *, __const void *);
# 701 "/usr/include/stdlib.h" 3 4



extern void *bsearch (__const void *__key, __const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 720 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;

# 756 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));







extern int mblen (__const char *__s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int mbtowc (wchar_t *__restrict __pwc,
     __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__)) ;



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__));

extern size_t wcstombs (char *__restrict __s,
   __const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__));








extern int rpmatch (__const char *__response) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 861 "/usr/include/stdlib.h" 3 4
extern int posix_openpt (int __oflag) ;
# 896 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 912 "/usr/include/stdlib.h" 3 4

# 87 "nxt-ok.c" 2

# 1 "/usr/include/syslog.h" 1 3 4
# 1 "/usr/include/sys/syslog.h" 1 3 4
# 37 "/usr/include/sys/syslog.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 38 "/usr/include/sys/syslog.h" 2 3 4


# 1 "/usr/include/bits/syslog-path.h" 1 3 4
# 41 "/usr/include/sys/syslog.h" 2 3 4
# 169 "/usr/include/sys/syslog.h" 3 4






extern void closelog (void);





extern void openlog (__const char *__ident, int __option, int __facility);


extern int setlogmask (int __mask) __attribute__ ((__nothrow__));





extern void syslog (int __pri, __const char *__fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
# 200 "/usr/include/sys/syslog.h" 3 4
extern void vsyslog (int __pri, __const char *__fmt, __gnuc_va_list __ap)
     __attribute__ ((__format__ (__printf__, 2, 0)));
# 213 "/usr/include/sys/syslog.h" 3 4

# 1 "/usr/include/syslog.h" 2 3 4
# 89 "nxt-ok.c" 2
# 1 "/usr/include/time.h" 1 3 4
# 30 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 39 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 43 "/usr/include/time.h" 2 3 4
# 58 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  __const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 180 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   __const char *__restrict __format,
   __const struct tm *__restrict __tp) __attribute__ ((__nothrow__));

# 217 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     __const char *__restrict __format,
     __const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__));
# 230 "/usr/include/time.h" 3 4



extern struct tm *gmtime (__const time_t *__timer) __attribute__ ((__nothrow__));



extern struct tm *localtime (__const time_t *__timer) __attribute__ ((__nothrow__));





extern struct tm *gmtime_r (__const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__));



extern struct tm *localtime_r (__const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__));





extern char *asctime (__const struct tm *__tp) __attribute__ ((__nothrow__));


extern char *ctime (__const time_t *__timer) __attribute__ ((__nothrow__));







extern char *asctime_r (__const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__));


extern char *ctime_r (__const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__));



extern int daylight;
extern long int timezone;





extern int stime (__const time_t *__when) __attribute__ ((__nothrow__));
# 313 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__));


extern int dysize (int __year) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 328 "/usr/include/time.h" 3 4
extern int nanosleep (__const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__));


extern int clock_settime (clockid_t __clock_id, __const struct timespec *__tp)
     __attribute__ ((__nothrow__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       __const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__));


extern int timer_settime (timer_t __timerid, int __flags,
     __const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__));
# 417 "/usr/include/time.h" 3 4

# 90 "nxt-ok.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 68 "/usr/include/assert.h" 3 4



extern void __assert_fail (__const char *__assertion, __const char *__file,
      unsigned int __line, __const char *__function)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, __const char *__file,
      unsigned int __line,
      __const char *__function)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));



# 91 "nxt-ok.c" 2
# 1 "ns_defs.h" 1
# 165 "ns_defs.h"
enum severity { ignore, warn, fail, not_set };







struct zoneinfo {
 char *z_origin;
 time_t z_time;
 time_t z_lastupdate;
 u_int32_t z_refresh;
 u_int32_t z_retry;
 u_int32_t z_expire;
 u_int32_t z_minimum;
 u_int32_t z_serial;
 char *z_source;
 time_t z_ftime;
 struct in_addr z_axfr_src;
 struct in_addr z_xaddr;
 struct in_addr z_addr[16];
 u_char z_addrcnt;
 u_char z_type;
 u_int32_t z_flags;
 pid_t z_xferpid;
 u_int z_options;
 u_int z_optset;
 int z_class;
 int z_numxfrs;
 enum severity z_checknames;
# 209 "ns_defs.h"
 struct in_addr *z_also_notify;
 int z_notify_count;
 char *z_ixfr_base;
 char *z_ixfr_tmp;
 int z_maintain_ixfr_base;
 int z_log_size_ixfr;
 int z_max_log_size_ixfr;

};


enum zonetype { z_nil, z_master, z_slave, z_hint, z_stub, z_forward, z_any };
# 303 "ns_defs.h"
enum transport { primary_trans, secondary_trans, response_trans, update_trans,
   num_trans };



typedef struct zone_config {
 void *opaque;
} zone_config;

enum context { domain_ctx, owner_ctx, mailname_ctx, hostname_ctx };

typedef struct options {
 enum severity check_names[num_trans];

} *options;
# 92 "nxt-ok.c" 2
# 104 "nxt-ok.c"
const char *transport_strings[] = { "primary", "secondary", "response", ((void *)0) };
# 123 "nxt-ok.c"
int
__res_dnok(const char *dn) {
 int ch;

 while ((ch = *dn++) != '\0')
  if (!((ch) > 0x20 && (ch) < 0x7f))
   return (0);
 return (1);
}

int
__res_hnok(const char *dn) {
 int ppch = '\0', pch = 0x2e, ch = *dn++;

 while (ch != '\0') {
  int nch = *dn++;

  if (((ch) == 0x2e)) {
   (void)((void *)0);
  } else if (((pch) == 0x2e)) {
   if (!((((ch) >= 0x41 && (ch) <= 0x5a) || ((ch) >= 0x61 && (ch) <= 0x7a)) || ((ch) >= 0x30 && (ch) <= 0x39)))
    return (0);
  } else if (((nch) == 0x2e) || nch == '\0') {
   if (!((((ch) >= 0x41 && (ch) <= 0x5a) || ((ch) >= 0x61 && (ch) <= 0x7a)) || ((ch) >= 0x30 && (ch) <= 0x39)))
    return (0);
  } else {
   if (!(((((ch) >= 0x41 && (ch) <= 0x5a) || ((ch) >= 0x61 && (ch) <= 0x7a)) || ((ch) >= 0x30 && (ch) <= 0x39)) || ((ch) == 0x2d)))
    return (0);
  }
  ppch = pch, pch = ch, ch = nch;
 }
 return (1);
}


enum context
ns_ownercontext(type, transport)
 int type;
 enum transport transport;
{
 enum context context = domain_ctx;

 switch (type) {
 case ns_t_a:
 case ns_t_wks:
 case ns_t_mx:
  switch (transport) {
  case update_trans:
  case primary_trans:
  case secondary_trans:
   context = owner_ctx;
   break;
  case response_trans:
   context = hostname_ctx;
   break;
  default:
   printf("impossible condition in ns_ownercontext()");

  }
  break;
 case ns_t_mb:
 case ns_t_mg:
  context = mailname_ctx;
  break;
 default:

  break;
 }
 return (context);
}
# 202 "nxt-ok.c"
char *
newstr(size_t len, int needpanic) {
 u_char *buf, *bp;

 ((len <= 65536) ? (void) (0) : __assert_fail ("len <= 65536", "nxt-ok.c", 206, __PRETTY_FUNCTION__));

 buf = (u_char *)malloc(2 + len + 1);
 if (buf == ((void *)0)) {
  if (needpanic)
   printf("savestr: malloc failed (%s)", strerror((*__errno_location ())));
  else
   return (((void *)0));
 }
 bp = buf;
 do { register u_int16_t t_s = (u_int16_t)(len); register u_char *t_cp = (u_char *)(bp); *t_cp++ = t_s >> 8; *t_cp = t_s; (bp) += 2; } while (0);
 return ((char *)bp);
}




int
ns_nameok(const char *name, int class, struct zoneinfo *zp,
   enum transport transport,
   enum context context,
   const char *owner)
{

 enum severity severity = not_set;
 int ok = 1;

 if (zp != ((void *)0))
  severity = zp->z_checknames;
# 244 "nxt-ok.c"
 if (severity == ignore)
  return (1);
 switch (context) {
 case domain_ctx:
  ok = (class != ns_c_in) || __res_dnok(name);
  break;
 case hostname_ctx:
  ok = __res_hnok(name);
  break;
 default:
   {
     printf("unexpected context %d in ns_nameok", (int)context);
     return 0;
   }

   return (ok);
 }

 return (ok);
  }


static int
rrextract(u_char *msg, int msglen, u_char *rrp, u_char *dname, int namelen)
{
 u_char *eom, *cp, *cp1, *rdatap;
 u_int class, type, dlen;
 int n, n1, n2, len=0;
 u_int32_t ttl;
 u_char data[(2*1025 + 5*4)*2];
 HEADER *hp = (HEADER *)msg;

 cp = rrp;
 eom = msg + msglen;

 printf("Trying to do dn_expand..\n");
 printf("msg = %s, msglen = %d, rrp = %s, namelen = %d\n", (char *) msg, msglen, (char *)rrp, namelen);

 if ((n = __dn_expand(msg, eom, cp, (char *) dname, namelen)) < 0) {
   printf("dn_expand returned %d\n", n);
   hp->rcode = ns_r_formerr;
   return (-1);
 }

 printf("First dn_expand returned n = %d\n", n);

 cp += n;
 len += n;
 len += sizeof(HEADER);

 do { if ((cp) + (2*2 + 4 + 2) > eom) { hp->rcode = ns_r_formerr; return (-1); } } while (0);
 do { register const u_char *t_cp = (const u_char *)(cp); (type) = ((u_int16_t)t_cp[0] << 8) | ((u_int16_t)t_cp[1]) ; (cp) += 2; } while (0);
 cp += 2;
 len += 2;
 printf("type = %d\n", type);
 do { register const u_char *t_cp = (const u_char *)(cp); (class) = ((u_int16_t)t_cp[0] << 8) | ((u_int16_t)t_cp[1]) ; (cp) += 2; } while (0);
 cp += 2;
 len += 2;

 if (class > ((1<<8)-1)) {
   printf("bad class in rrextract");
   hp->rcode = ns_r_formerr;
   return (-1);
 }
 do { register const u_char *t_cp = (const u_char *)(cp); (ttl) = ((u_int32_t)t_cp[0] << 24) | ((u_int32_t)t_cp[1] << 16) | ((u_int32_t)t_cp[2] << 8) | ((u_int32_t)t_cp[3]) ; (cp) += 4; } while (0);
 printf("ttl = %d\n",ttl);
 cp += 4;
 len += 4;

 if (ttl > 0x7fffffff) {
   printf("%s: converted TTL > %u to 0",
   dname, 0x7fffffff);

  ttl = 0;
 }
 do { register const u_char *t_cp = (const u_char *)(cp); (dlen) = ((u_int16_t)t_cp[0] << 8) | ((u_int16_t)t_cp[1]) ; (cp) += 2; } while (0);
 cp += 2;
 len += 2;

 printf("msglen - len - 12 = %d, dlen = %d\n", msglen - len - 12, dlen);
 do { if ((cp) + (dlen) > eom) { hp->rcode = ns_r_formerr; return (-1); } } while (0);
 printf("bounds check succeeded\n");
 rdatap = cp;

 if (!ns_nameok((char *)dname, class, ((void *)0), response_trans,
         ns_ownercontext(type, response_trans),
        (char *)dname)) {
  hp->rcode = ns_r_refused;
  return (-1);
 }
 printf("rrextract: dname %s type %d class %d ttl %d\n",
   dname, type, class, ttl);
# 353 "nxt-ok.c"
 switch (type) {
 case ns_t_a:
   if (dlen != 4) {
    hp->rcode = ns_r_formerr;
    return (-1);
   }

   break;


 case ns_t_naptr:
   printf("NOT HANDLING T_NAPTR RECORDS\n");
   break;





 case ns_t_mx:
 case ns_t_afsdb:
 case ns_t_rt:
 case ns_t_srv:
   printf("NOT HANDLING T_SRV RECORDS\n");
   break;

 case ns_t_px:
   printf("NOT HANDLING T_PX RECORDS\n");
   break;


 case ns_t_nxt:

   printf("Inside NXT block!\n");
    n = __dn_expand(msg, eom, cp, (char *)data, sizeof data);
  printf("dn_expand returned n = %d\n", n);
  printf("Compressed name = %s, Expanded name = %s\n", cp, data);







  if (n < 0 || n >= dlen) {
    printf("n=%d >= dlen = %d\n", n, dlen);
    printf("dlen is FAKE!!\n");
    hp->rcode = ns_r_formerr;
    return (-1);
  }
  if (!ns_nameok((char *) data, class, ((void *)0), response_trans, domain_ctx, (char *) dname)) {
    printf("Name not good!\n");
    hp->rcode = ns_r_formerr;
    return (-1);
  }
  cp += n;
  n1 = strlen((char *)data) + 1;
  cp1 = data + n1;





  n2 = dlen - n;

  printf("n2 = %d\n", n2);







  printf("*cp = %d\n", *cp);
  if ((*cp & 0x01) == 0) {







   if (n2 < 4 || n2 > 16) {
     printf("n2<4 || n2 > 16\n");
     hp->rcode = ns_r_formerr;
     return (-1);
   }
  }




  printf("sizeof data - n1 = %d\n", sizeof data - n1);
  if (n2 > sizeof data - n1)
    {
      printf("Want to copy %d bytes, but can only fit %d\n", n2, sizeof data - n1);
      hp->rcode = ns_r_formerr;
   return (-1);
    }

  printf("Copying %d bytes from cp to cp1\n", n2);
  printf("Cp1 has room for %d bytes\n", sizeof data - n1);

  memcpy(cp1, cp, n2);
  cp += n2;


  n = cp1 - (u_char *)data;
  cp1 = (u_char *)data;

   break;


 default:
   printf("unknown type %d", type);
   return ((cp - rrp) + dlen);
 }

 if (cp > eom) {
  hp->rcode = ns_r_formerr;
  return (-1);
 }
 if ((u_int)(cp - rdatap) != dlen) {

   printf("encoded rdata length is %u, but actual length was %u",
   dlen, (u_int)(cp - rdatap));
   hp->rcode = ns_r_formerr;

   return (-1);
 }
 if (n > (2*1025 + 5*4)) {
   printf("update type %d: %d bytes is too much data",
   type, n);

   hp->rcode = ns_r_formerr;
   return (-1);
 }




 return (cp - rrp);
}


int create_msg(u_char *buf) {

  u_char *p;
  char *temp, *temp1;
  u_char *comp_dn, *comp_dn2;
  char exp_dn[200], exp_dn2[200];
  u_char **dnptrs, **lastdnptr, **dnptrs2;
  int i,len = 0, comp_size;
  u_long now;

  dnptrs = (unsigned char **) malloc(2 * sizeof(unsigned char *));
  dnptrs2 = (unsigned char **) malloc(2 * sizeof(unsigned char *));

  comp_dn = (unsigned char *) malloc(200*sizeof(unsigned char));
  comp_dn2 = (unsigned char *) malloc(200*sizeof(unsigned char));

  temp1 = (char *) malloc(400*sizeof(char));

  temp = temp1;

  p = buf;

  strcpy(temp, "HEADER JUNK:");

  len += strlen(temp);

  while (*temp != '\0')
    *p++ = *temp++;

  strcpy(exp_dn, "lcs.mit.edu");

  *dnptrs++ = (u_char *) exp_dn;
  *dnptrs-- = ((void *)0);

  lastdnptr = ((void *)0);

  printf("Calling dn_comp..\n");
  comp_size = __dn_comp((const char *) exp_dn, comp_dn, 200, dnptrs, lastdnptr);
  printf("uncomp_size = %d\n", strlen(exp_dn));
  printf("comp_size = %d\n", comp_size);
  printf("exp_dn = %s, comp_dn = %s\n", exp_dn, (char *) comp_dn);

  for(i=0; i<comp_size; i++)
    *p++ = *comp_dn++;

  len += comp_size;

  do { register u_int16_t t_s = (u_int16_t)(30); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_s >> 8; *t_cp = t_s; (p) += 2; } while (0);
  p += 2;

  do { register u_int16_t t_s = (u_int16_t)(255); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_s >> 8; *t_cp = t_s; (p) += 2; } while (0);
  p += 2;

  do { register u_int32_t t_l = (u_int32_t)(255); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_l >> 24; *t_cp++ = t_l >> 16; *t_cp++ = t_l >> 8; *t_cp = t_l; (p) += 4; } while (0);
  p += 4;

  do { register u_int16_t t_s = (u_int16_t)(16); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_s >> 8; *t_cp = t_s; (p) += 2; } while (0);


  p += 2;

  len += 10;

  strcpy(exp_dn2, "sls.lcs.mit.edu");

  *dnptrs2++ = (u_char *) exp_dn2;
  *dnptrs2-- = ((void *)0);
  lastdnptr = ((void *)0);

  printf("Calling dn_comp..\n");
  comp_size = __dn_comp((const char *) exp_dn2, comp_dn2, 200, dnptrs2, lastdnptr);
  printf("uncomp_size = %d\n", strlen(exp_dn2));
  printf("comp_size = %d\n", comp_size);
  printf("exp_dn2 = %s, comp_dn2 = %s\n", exp_dn2, (char *) comp_dn2);

  len += comp_size;

  for(i=0; i<comp_size; i++)
    *p++ = *comp_dn2++;

  do { register u_int32_t t_l = (u_int32_t)(1 << 24); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_l >> 24; *t_cp++ = t_l >> 16; *t_cp++ = t_l >> 8; *t_cp = t_l; (p) += 4; } while (0);
  p += 4;
  do { register u_int32_t t_l = (u_int32_t)(0); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_l >> 24; *t_cp++ = t_l >> 16; *t_cp++ = t_l >> 8; *t_cp = t_l; (p) += 4; } while (0);
  p += 4;
  do { register u_int32_t t_l = (u_int32_t)(0); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_l >> 24; *t_cp++ = t_l >> 16; *t_cp++ = t_l >> 8; *t_cp = t_l; (p) += 4; } while (0);
  p += 4;
  do { register u_int32_t t_l = (u_int32_t)(0); register u_char *t_cp = (u_char *)(p); *t_cp++ = t_l >> 24; *t_cp++ = t_l >> 16; *t_cp++ = t_l >> 8; *t_cp = t_l; (p) += 4; } while (0);
  p += 4;

  len += 16;

  return (len);
}




int main(){

  int msglen, ret;
  u_char *dp;
  u_char *name = (u_char *) malloc(100*sizeof(u_char));
  u_char *msg = (u_char *) malloc(1000 * sizeof(u_char));

  printf("Calling create_msg:\n");
  msglen = create_msg(msg);

  printf("msglen = %d\n", msglen);

  dp = msg + sizeof(HEADER);

  printf("Calling rrextract!\n");

  __res_init();
  ret = rrextract(msg, msglen, dp, name, 100);

  printf("rrextract returned %d\n", ret);

  return 0;

}
