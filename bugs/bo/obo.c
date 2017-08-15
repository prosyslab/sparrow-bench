/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 124 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned long __dev_t;
#line 125 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned int __uid_t;
#line 126 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned int __gid_t;
#line 127 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned long __ino_t;
#line 129 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned int __mode_t;
#line 130 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef unsigned long __nlink_t;
#line 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
#line 139 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __time_t;
#line 153 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __blksize_t;
#line 158 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __blkcnt_t;
#line 172 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __ssize_t;
#line 175 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __syscall_slong_t;
#line 120 "/usr/include/time.h"
struct timespec {
   __time_t tv_sec ;
   __syscall_slong_t tv_nsec ;
};
#line 82 "/usr/include/x86_64-linux-gnu/sys/stat.h"
typedef __uid_t uid_t;
#line 46 "/usr/include/x86_64-linux-gnu/bits/stat.h"
struct stat {
   __dev_t st_dev ;
   __ino_t st_ino ;
   __nlink_t st_nlink ;
   __mode_t st_mode ;
   __uid_t st_uid ;
   __gid_t st_gid ;
   int __pad0 ;
   __dev_t st_rdev ;
   __off_t st_size ;
   __blksize_t st_blksize ;
   __blkcnt_t st_blocks ;
   struct timespec st_atim ;
   struct timespec st_mtim ;
   struct timespec st_ctim ;
   __syscall_slong_t __glibc_reserved[3] ;
};
#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h"
typedef unsigned long size_t;
#line 109 "/usr/include/x86_64-linux-gnu/sys/types.h"
typedef __ssize_t ssize_t;
#line 27 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
struct __anonstruct___sigset_t_9 {
   unsigned long __val[1024UL / (8UL * sizeof(unsigned long ))] ;
};
#line 27 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
typedef struct __anonstruct___sigset_t_9 __sigset_t;
#line 37 "/usr/include/x86_64-linux-gnu/sys/select.h"
typedef __sigset_t sigset_t;
#line 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
#line 44 "/usr/include/stdio.h"
struct _IO_FILE;
#line 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
#line 154 "/usr/include/libio.h"
typedef void _IO_lock_t;
#line 160 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
#line 245 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
#line 263 "/usr/include/x86_64-linux-gnu/sys/stat.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,2), __leaf__)) lstat)(char const   * __restrict  __file ,
                                                                                              struct stat * __restrict  __buf ) ;
#line 50 "/usr/include/x86_64-linux-gnu/bits/errno.h"
extern  __attribute__((__nothrow__)) int *( __attribute__((__leaf__)) __errno_location)(void)  __attribute__((__const__)) ;
#line 468 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) calloc)(size_t __nmemb ,
                                                                               size_t __size )  __attribute__((__malloc__)) ;
#line 483
extern  __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
#line 129 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 132
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strncpy)(char * __restrict  __dest ,
                                                                                                  char const   * __restrict  __src ,
                                                                                                  size_t __n ) ;
#line 137
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcat)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 263
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1), __leaf__)) strrchr)(char const   *__s ,
                                                                                                int __c )  __attribute__((__pure__)) ;
#line 399
extern  __attribute__((__nothrow__)) size_t ( __attribute__((__nonnull__(1), __leaf__)) strlen)(char const   *__s )  __attribute__((__pure__)) ;
#line 353 "/usr/include/unistd.h"
extern int close(int __fd ) ;
#line 497
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) chdir)(char const   *__path ) ;
#line 501
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) fchdir)(int __fd ) ;
#line 511
extern  __attribute__((__nothrow__)) char *( __attribute__((__leaf__)) getcwd)(char *__buf ,
                                                                               size_t __size ) ;
#line 678
extern  __attribute__((__nothrow__)) __uid_t ( __attribute__((__leaf__)) geteuid)(void) ;
#line 710
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) seteuid)(__uid_t __uid ) ;
#line 809
extern  __attribute__((__nothrow__)) ssize_t ( __attribute__((__nonnull__(1,2), __leaf__)) readlink)(char const   * __restrict  __path ,
                                                                                                     char * __restrict  __buf ,
                                                                                                     size_t __len ) ;
#line 146 "/usr/include/fcntl.h"
extern int ( __attribute__((__nonnull__(1))) open)(char const   *__file , int __oflag 
                                                   , ...) ;
#line 215 "/usr/include/signal.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) sigemptyset)(sigset_t *__set ) ;
#line 221
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) sigaddset)(sigset_t *__set ,
                                                                                                int __signo ) ;
#line 248
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) sigprocmask)(int __how ,
                                                                                  sigset_t const   * __restrict  __set ,
                                                                                  sigset_t * __restrict  __oset ) ;
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 102 "realpath-bad.c"
char *fb_realpath(char const   *path , char *resolved ) ;
#line 111 "realpath-bad.c"
static sigset_t saved_sigmask  ;
#line 112 "realpath-bad.c"
static sigset_t block_sigmask  ;
#line 113 "realpath-bad.c"
static int delaying  ;
#line 114 "realpath-bad.c"
static int init_done  ;
#line 118 "realpath-bad.c"
static void init_mask(void) 
{ 
  int sig ;

  {
  {
#line 122
  init_done = 1;
#line 123
  sigemptyset(& block_sigmask);
#line 124
  sig = 1;
  }
  {
#line 124
  while (1) {
    while_continue: /* CIL Label */ ;
#line 124
    if (! (sig < 65)) {
#line 124
      goto while_break;
    }
    {
#line 125
    sigaddset(& block_sigmask, sig);
#line 124
    sig ++;
    }
  }
  while_break: /* CIL Label */ ;
  }
#line 126
  return;
}
}
#line 130 "realpath-bad.c"
int enable_signaling(void) 
{ 
  int tmp ;

  {
#line 132
  if (delaying != 0) {
    {
#line 133
    delaying = 0;
#line 134
    tmp = sigprocmask(2, (sigset_t const   */* __restrict  */)(& saved_sigmask), (sigset_t */* __restrict  */)((sigset_t *)0));
    }
#line 134
    if (tmp < 0) {
#line 136
      return (-1);
    }
  }
#line 139
  return (0);
}
}
#line 144 "realpath-bad.c"
int delay_signaling(void) 
{ 
  int tmp ;

  {
#line 146
  if (init_done == 0) {
    {
#line 147
    init_mask();
    }
  }
#line 148
  if (delaying == 0) {
    {
#line 149
    delaying = 1;
#line 150
    tmp = sigprocmask(0, (sigset_t const   */* __restrict  */)(& block_sigmask), (sigset_t */* __restrict  */)(& saved_sigmask));
    }
#line 150
    if (tmp < 0) {
#line 152
      return (-1);
    }
  }
#line 155
  return (0);
}
}
#line 159 "realpath-bad.c"
char *wu_realpath(char const   *path , char *resolved_path , char *chroot_path ) 
{ 
  char *ptr ;
  char q[46] ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  void *__cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;

  {
  {
#line 164
  fb_realpath(path, q);
#line 166
  tmp = strlen((char const   *)(q));
#line 166
  printf((char const   */* __restrict  */)"strlen(q) = %d\n", tmp);
#line 167
  printf((char const   */* __restrict  */)"q[MAXPATHLEN - 1] = %c\n", (int )q[45]);
  }
#line 169
  if ((unsigned long )chroot_path == (unsigned long )((void *)0)) {
    {
#line 170
    strcpy((char */* __restrict  */)resolved_path, (char const   */* __restrict  */)(q));
    }
  } else {
    {
#line 172
    strcpy((char */* __restrict  */)resolved_path, (char const   */* __restrict  */)chroot_path);
    }
#line 173
    if ((int )q[0] != 47) {
      {
#line 174
      tmp___0 = strlen((char const   *)resolved_path);
#line 174
      tmp___1 = strlen((char const   *)(q));
      }
#line 174
      if (tmp___0 + tmp___1 < 46UL) {
        {
#line 175
        strcat((char */* __restrict  */)resolved_path, (char const   */* __restrict  */)(q));
        }
      } else {
#line 177
        return ((char *)((void *)0));
      }
    } else
#line 179
    if ((int )q[1] != 0) {
#line 180
      ptr = q;
      {
#line 180
      while (1) {
        while_continue: /* CIL Label */ ;
#line 180
        if (! ((int )*ptr != 0)) {
#line 180
          goto while_break;
        }
#line 180
        ptr ++;
      }
      while_break: /* CIL Label */ ;
      }
#line 181
      if ((unsigned long )ptr == (unsigned long )resolved_path) {
#line 181
        goto _L;
      } else {
#line 181
        ptr --;
#line 181
        if ((int )*ptr != 47) {
          _L: /* CIL Label */ 
          {
#line 182
          tmp___2 = strlen((char const   *)resolved_path);
#line 182
          tmp___3 = strlen((char const   *)(q));
          }
#line 182
          if (tmp___2 + tmp___3 < 46UL) {
            {
#line 183
            strcat((char */* __restrict  */)resolved_path, (char const   */* __restrict  */)(q));
            }
          } else {
#line 185
            return ((char *)((void *)0));
          }
        } else {
          {
#line 188
          tmp___4 = strlen((char const   *)resolved_path);
#line 188
          tmp___5 = strlen((char const   *)(q));
          }
#line 188
          if ((tmp___4 + tmp___5) - 1UL < 46UL) {
            {
#line 189
            strcat((char */* __restrict  */)resolved_path, (char const   */* __restrict  */)(& q[1]));
            }
          } else {
#line 191
            return ((char *)((void *)0));
          }
        }
      }
    }
  }
#line 196
  return ((char *)resolved_path);
}
}
#line 210 "realpath-bad.c"
char *fb_realpath(char const   *path , char *resolved ) 
{ 
  struct stat sb ;
  int fd ;
  int rootd ;
  int serrno ;
  char *p ;
  char *q ;
  char wbuf[46] ;
  int resultcode ;
  int *tmp ;
  uid_t userid ;
  __uid_t tmp___0 ;
  int *tmp___1 ;
  int *tmp___2 ;
  uid_t userid___0 ;
  __uid_t tmp___3 ;
  int *tmp___4 ;
  int *tmp___5 ;
  int *tmp___6 ;
  int *tmp___7 ;
  uid_t userid___1 ;
  __uid_t tmp___8 ;
  int *tmp___9 ;
  int *tmp___10 ;
  int symlinks ;
  int n ;
  int *tmp___11 ;
  int *tmp___12 ;
  size_t len ;
  size_t tmp___13 ;
  char *tmp___14 ;
  void *tmp___15 ;
  int *tmp___16 ;
  ssize_t tmp___17 ;
  uid_t userid___2 ;
  __uid_t tmp___18 ;
  int *tmp___19 ;
  ssize_t tmp___20 ;
  int *tmp___21 ;
  int *tmp___22 ;
  uid_t userid___3 ;
  __uid_t tmp___23 ;
  int *tmp___24 ;
  int *tmp___25 ;
  int *tmp___26 ;
  char *tmp___28 ;
  uid_t userid___4 ;
  __uid_t tmp___29 ;
  int *tmp___30 ;
  char *tmp___32 ;
  int *tmp___33 ;
  size_t tmp___34 ;
  size_t tmp___35 ;
  size_t tmp___36 ;
  size_t tmp___37 ;
  int *tmp___38 ;
  size_t tmp___39 ;
  size_t tmp___40 ;
  size_t tmp___41 ;
  size_t tmp___42 ;
  size_t tmp___43 ;
  size_t tmp___44 ;
  int *tmp___45 ;
  uid_t userid___5 ;
  __uid_t tmp___46 ;
  int *tmp___47 ;
  int *tmp___48 ;
  int *tmp___49 ;
  int *tmp___50 ;
  uid_t userid___6 ;
  __uid_t tmp___51 ;
  int *tmp___52 ;
  int *tmp___53 ;
  void *__cil_tmp77 ;
  char *__cil_tmp78 ;
  char *__cil_tmp79 ;
  char *__cil_tmp80 ;
  char *__cil_tmp81 ;
  char *__cil_tmp82 ;
  char *__cil_tmp83 ;
  char *__cil_tmp84 ;
  char *__cil_tmp85 ;
  char *__cil_tmp86 ;
  char *__cil_tmp87 ;
  char *__cil_tmp88 ;
  char *__cil_tmp89 ;
  char *__cil_tmp90 ;
  char *__cil_tmp91 ;
  char *__cil_tmp92 ;
  char *__cil_tmp93 ;
  char *__cil_tmp94 ;
  char *__cil_tmp95 ;
  char *__cil_tmp96 ;
  char *__cil_tmp97 ;
  char *__cil_tmp98 ;
  char *__cil_tmp99 ;
  char *__cil_tmp100 ;
  char *__cil_tmp101 ;
  char *__cil_tmp102 ;
  char *__cil_tmp103 ;
  char *__cil_tmp104 ;
  char *__cil_tmp105 ;
  char *__cil_tmp106 ;
  char *__cil_tmp107 ;
  char *__cil_tmp108 ;
  char *__cil_tmp109 ;
  char *__cil_tmp110 ;
  char *__cil_tmp111 ;

  {
  {
#line 225
  tmp = __errno_location();
#line 225
  *tmp = 0;
#line 233
  fd = open(".", 0);
#line 235
  tmp___1 = __errno_location();
  }
#line 235
  if (13 == *tmp___1) {
    {
#line 236
    tmp___0 = geteuid();
#line 236
    userid = tmp___0;
#line 237
    delay_signaling();
#line 238
    seteuid((__uid_t )0);
#line 246
    fd = open(".", 0);
#line 248
    seteuid(userid);
#line 249
    enable_signaling();
    }
  }
#line 254
  if (fd < 0) {
    {
#line 257
    strcpy((char */* __restrict  */)resolved, (char const   */* __restrict  */)".");
    }
#line 258
    return ((char *)((void *)0));
  }
  {
#line 270
  strncpy((char */* __restrict  */)resolved, (char const   */* __restrict  */)path,
          (size_t )45);
#line 271
  *(resolved + 45) = (char )'\000';
  }
  loop: 
  {
#line 274
  q = strrchr((char const   *)resolved, '/');
#line 276
  printf((char const   */* __restrict  */)"q inside LOOP = %s\n", q);
  }
#line 278
  if ((unsigned long )q != (unsigned long )((void *)0)) {
#line 279
    p = q + 1;
#line 281
    if ((unsigned long )q == (unsigned long )resolved) {
#line 282
      q = (char *)"/";
    } else {
      {
#line 284
      while (1) {
        while_continue: /* CIL Label */ ;
#line 285
        q --;
#line 284
        if ((unsigned long )q > (unsigned long )resolved) {
#line 284
          if (! ((int )*q == 47)) {
#line 284
            goto while_break;
          }
        } else {
#line 284
          goto while_break;
        }
      }
      while_break: /* CIL Label */ ;
      }
#line 287
      *(q + 1) = (char )'\000';
#line 288
      q = resolved;
    }
    {
#line 290
    tmp___2 = __errno_location();
#line 290
    *tmp___2 = 0;
#line 292
    printf((char const   */* __restrict  */)"trying to chdir(%s)\n", q);
#line 293
    resultcode = chdir((char const   *)q);
#line 294
    tmp___5 = __errno_location();
    }
#line 294
    if (13 == *tmp___5) {
      {
#line 295
      tmp___3 = geteuid();
#line 295
      userid___0 = tmp___3;
#line 296
      delay_signaling();
#line 297
      seteuid((__uid_t )0);
#line 298
      tmp___4 = __errno_location();
#line 298
      *tmp___4 = 0;
#line 299
      resultcode = chdir((char const   *)q);
#line 300
      seteuid(userid___0);
#line 301
      enable_signaling();
      }
    }
#line 303
    if (resultcode < 0) {
      {
#line 305
      printf((char const   */* __restrict  */)"error occurred while trying to chdir(%s)\n",
             q);
      }
#line 306
      goto err1;
    }
  } else {
#line 310
    p = resolved;
  }
#line 313
  if ((int )*p != 0) {
    {
#line 314
    tmp___6 = __errno_location();
#line 314
    *tmp___6 = 0;
#line 315
    printf((char const   */* __restrict  */)"trying to lstat %s\n", p);
#line 316
    resultcode = lstat((char const   */* __restrict  */)p, (struct stat */* __restrict  */)(& sb));
#line 317
    printf((char const   */* __restrict  */)"Resultcode = %d\n", resultcode);
#line 318
    tmp___7 = __errno_location();
#line 318
    printf((char const   */* __restrict  */)"errno=%d\n", *tmp___7);
#line 320
    tmp___10 = __errno_location();
    }
#line 320
    if (13 == *tmp___10) {
      {
#line 321
      tmp___8 = geteuid();
#line 321
      userid___1 = tmp___8;
#line 322
      delay_signaling();
#line 323
      seteuid((__uid_t )0);
#line 324
      tmp___9 = __errno_location();
#line 324
      *tmp___9 = 0;
#line 325
      resultcode = lstat((char const   */* __restrict  */)p, (struct stat */* __restrict  */)(& sb));
#line 326
      seteuid(userid___1);
#line 327
      enable_signaling();
      }
    }
#line 329
    if (resultcode == 0) {
      {
#line 332
      symlinks = 0;
#line 335
      printf((char const   */* __restrict  */)"sb.st_mode=%d\n", sb.st_mode);
      }
#line 337
      if ((sb.st_mode & 61440U) == 32768U) {
        {
#line 338
        printf((char const   */* __restrict  */)"isreg\n");
        }
      }
#line 339
      if ((sb.st_mode & 61440U) == 16384U) {
        {
#line 340
        printf((char const   */* __restrict  */)"isdir\n");
        }
      }
#line 341
      if ((sb.st_mode & 61440U) == 8192U) {
        {
#line 342
        printf((char const   */* __restrict  */)"ischr\n");
        }
      }
#line 343
      if ((sb.st_mode & 61440U) == 24576U) {
        {
#line 344
        printf((char const   */* __restrict  */)"isblk\n");
        }
      }
#line 345
      if ((sb.st_mode & 61440U) == 4096U) {
        {
#line 346
        printf((char const   */* __restrict  */)"isfifo\n");
        }
      }
#line 347
      if ((sb.st_mode & 61440U) == 40960U) {
        {
#line 348
        printf((char const   */* __restrict  */)"islnk\n");
        }
      }
#line 349
      if ((sb.st_mode & 61440U) == 49152U) {
        {
#line 350
        printf((char const   */* __restrict  */)"issock\n");
        }
      }
#line 352
      if ((sb.st_mode & 61440U) == 40960U) {
#line 353
        symlinks ++;
#line 353
        if (symlinks > 5) {
          {
#line 354
          tmp___11 = __errno_location();
#line 354
          *tmp___11 = 40;
          }
#line 355
          goto err1;
        }
        {
#line 357
        tmp___12 = __errno_location();
#line 357
        *tmp___12 = 0;
#line 359
        tmp___13 = strlen((char const   *)p);
#line 359
        len = tmp___13;
#line 360
        tmp___15 = calloc(len + 1UL, sizeof(char ));
#line 360
        tmp___14 = (char *)tmp___15;
        }
#line 361
        if ((unsigned long )tmp___14 == (unsigned long )((char *)0)) {
          {
#line 362
          tmp___16 = __errno_location();
#line 362
          serrno = *tmp___16;
          }
#line 363
          goto err1;
        }
        {
#line 365
        strcpy((char */* __restrict  */)tmp___14, (char const   */* __restrict  */)p);
#line 366
        p = tmp___14;
#line 368
        tmp___17 = readlink((char const   */* __restrict  */)p, (char */* __restrict  */)resolved,
                            (size_t )46);
#line 368
        n = (int )tmp___17;
#line 369
        tmp___21 = __errno_location();
        }
#line 369
        if (13 == *tmp___21) {
          {
#line 370
          tmp___18 = geteuid();
#line 370
          userid___2 = tmp___18;
#line 371
          delay_signaling();
#line 372
          seteuid((__uid_t )0);
#line 373
          tmp___19 = __errno_location();
#line 373
          *tmp___19 = 0;
#line 374
          tmp___20 = readlink((char const   */* __restrict  */)p, (char */* __restrict  */)resolved,
                              (size_t )46);
#line 374
          n = (int )tmp___20;
#line 375
          seteuid(userid___2);
#line 376
          enable_signaling();
          }
        }
#line 378
        if (n < 0) {
          {
#line 379
          free((void *)p);
          }
#line 380
          goto err1;
        }
        {
#line 382
        free((void *)p);
#line 383
        *(resolved + n) = (char )'\000';
        }
#line 384
        goto loop;
      }
#line 387
      if ((sb.st_mode & 61440U) == 16384U) {
        {
#line 388
        printf((char const   */* __restrict  */)"S_ISDIR..\n");
#line 389
        tmp___22 = __errno_location();
#line 389
        *tmp___22 = 0;
#line 390
        resultcode = chdir((char const   *)p);
#line 391
        printf((char const   */* __restrict  */)"chdir(%s) = resultcode = %d\n", p,
               resultcode);
#line 392
        tmp___25 = __errno_location();
        }
#line 392
        if (13 == *tmp___25) {
          {
#line 393
          tmp___23 = geteuid();
#line 393
          userid___3 = tmp___23;
#line 394
          delay_signaling();
#line 395
          seteuid((__uid_t )0);
#line 396
          tmp___24 = __errno_location();
#line 396
          *tmp___24 = 0;
#line 397
          resultcode = chdir((char const   *)p);
#line 398
          seteuid(userid___3);
#line 399
          enable_signaling();
          }
        }
#line 401
        if (resultcode < 0) {
#line 402
          goto err1;
        }
#line 404
        p = (char *)"";
      }
    }
  }
  {
#line 414
  strcpy((char */* __restrict  */)(wbuf), (char const   */* __restrict  */)p);
#line 415
  printf((char const   */* __restrict  */)"wbuf now contains %s\n", wbuf);
#line 416
  tmp___26 = __errno_location();
#line 416
  *tmp___26 = 0;
#line 418
  tmp___28 = getcwd(resolved, (size_t )46);
  }
#line 418
  if ((unsigned long )tmp___28 == (unsigned long )((void *)0)) {
#line 418
    resultcode = 0;
  } else {
#line 418
    resultcode = 1;
  }
  {
#line 419
  printf((char const   */* __restrict  */)"getcwd: resultcode = %d\n", resultcode);
#line 427
  tmp___33 = __errno_location();
  }
#line 427
  if (13 == *tmp___33) {
    {
#line 428
    tmp___29 = geteuid();
#line 428
    userid___4 = tmp___29;
#line 429
    delay_signaling();
#line 430
    seteuid((__uid_t )0);
#line 431
    tmp___30 = __errno_location();
#line 431
    *tmp___30 = 0;
#line 433
    tmp___32 = getcwd(resolved, (size_t )46);
    }
#line 433
    if ((unsigned long )tmp___32 == (unsigned long )((void *)0)) {
#line 433
      resultcode = 0;
    } else {
#line 433
      resultcode = 1;
    }
    {
#line 441
    seteuid(userid___4);
#line 442
    enable_signaling();
    }
  }
#line 444
  if (resultcode == 0) {
    {
#line 446
    printf((char const   */* __restrict  */)"going to err1.. resultcode = %d\n", resultcode);
    }
#line 447
    goto err1;
  }
#line 453
  if ((int )*(resolved + 0) == 47) {
#line 453
    if ((int )*(resolved + 1) == 0) {
#line 454
      rootd = 1;
    } else {
#line 456
      rootd = 0;
    }
  } else {
#line 456
    rootd = 0;
  }
  {
#line 458
  tmp___34 = strlen((char const   *)resolved);
#line 458
  printf((char const   */* __restrict  */)"resolved(%d) = %s\n", tmp___34, resolved);
#line 459
  tmp___35 = strlen((char const   *)(wbuf));
#line 459
  printf((char const   */* __restrict  */)"wbuf(%d) = %s \n", tmp___35, wbuf);
#line 460
  printf((char const   */* __restrict  */)"rootd=%d\n", rootd);
#line 461
  tmp___36 = strlen((char const   *)resolved);
#line 461
  tmp___37 = strlen((char const   *)(wbuf));
#line 461
  printf((char const   */* __restrict  */)"strlen(resolved) + strlen(wbuf) + rootd + 1 = %d\n",
         ((tmp___36 + tmp___37) + (size_t )rootd) + 1UL);
  }
#line 463
  if (wbuf[0]) {
    {
#line 464
    tmp___39 = strlen((char const   *)resolved);
#line 464
    tmp___40 = strlen((char const   *)(wbuf));
    }
#line 464
    if (((tmp___39 + tmp___40) + (size_t )rootd) + 1UL > 46UL) {
      {
#line 465
      tmp___38 = __errno_location();
#line 465
      *tmp___38 = 36;
#line 466
      printf((char const   */* __restrict  */)"resolved path too long!\n");
      }
#line 467
      goto err1;
    }
#line 469
    if (rootd == 0) {
      {
#line 470
      strcat((char */* __restrict  */)resolved, (char const   */* __restrict  */)"/");
      }
    }
    {
#line 472
    tmp___41 = strlen((char const   *)resolved);
#line 472
    printf((char const   */* __restrict  */)"resolved=%s  len=%d \n", resolved, tmp___41);
#line 473
    tmp___42 = strlen((char const   *)(wbuf));
#line 473
    printf((char const   */* __restrict  */)"wbuf=%s  len=%d \n", wbuf, tmp___42);
#line 475
    strcat((char */* __restrict  */)resolved, (char const   */* __restrict  */)(wbuf));
#line 476
    tmp___43 = strlen((char const   *)resolved);
#line 476
    printf((char const   */* __restrict  */)"after strcat, resolved = %s, strlen(resolved) = %d\n",
           resolved, tmp___43);
#line 477
    tmp___44 = strlen((char const   *)resolved);
    }
#line 477
    if (tmp___44 + 1UL > 46UL) {
      {
#line 478
      printf((char const   */* __restrict  */)"strlen(resolve) > MAXPATHLEN -- buffer overflow\n");
      }
    }
  }
  {
#line 483
  tmp___45 = __errno_location();
#line 483
  *tmp___45 = 0;
#line 487
  resultcode = fchdir(fd);
#line 489
  tmp___48 = __errno_location();
  }
#line 489
  if (13 == *tmp___48) {
    {
#line 490
    tmp___46 = geteuid();
#line 490
    userid___5 = tmp___46;
#line 491
    delay_signaling();
#line 492
    seteuid((__uid_t )0);
#line 493
    tmp___47 = __errno_location();
#line 493
    *tmp___47 = 0;
#line 497
    resultcode = fchdir(fd);
#line 499
    seteuid(userid___5);
#line 500
    enable_signaling();
    }
  }
#line 502
  if (resultcode < 0) {
    {
#line 503
    tmp___49 = __errno_location();
#line 503
    serrno = *tmp___49;
    }
#line 504
    goto err2;
  }
  {
#line 509
  close(fd);
  }
#line 511
  return (resolved);
  err1: 
  {
#line 513
  tmp___50 = __errno_location();
#line 513
  serrno = *tmp___50;
#line 517
  fchdir(fd);
#line 519
  tmp___52 = __errno_location();
  }
#line 519
  if (13 == *tmp___52) {
    {
#line 520
    tmp___51 = geteuid();
#line 520
    userid___6 = tmp___51;
#line 521
    delay_signaling();
#line 522
    seteuid((__uid_t )0);
#line 526
    fchdir(fd);
#line 528
    seteuid(userid___6);
#line 529
    enable_signaling();
    }
  }
  err2: 
  {
#line 534
  close(fd);
#line 535
  tmp___53 = __errno_location();
#line 535
  *tmp___53 = serrno;
  }
#line 537
  return ((char *)((void *)0));
}
}
#line 69 "/usr/include/assert.h"
extern  __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) __assert_fail)(char const   *__assertion ,
                                                                                                   char const   *__file ,
                                                                                                   unsigned int __line ,
                                                                                                   char const   *__function ) ;
#line 85 "call_fb_realpath.c"
int main(int argc , char **argv ) 
{ 
  char resolved_path[46] ;
  char path[100] ;
  size_t tmp ;
  void *__cil_tmp7 ;
  void *__cil_tmp8 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;
  char *__cil_tmp11 ;
  char *__cil_tmp12 ;
  char *__cil_tmp13 ;
  char *__cil_tmp14 ;

  {
  {
#line 90
  printf((char const   */* __restrict  */)"MAXPATHLEN=%d\n", 46);
  }
#line 92
  if (! (argc == 2)) {
    {
#line 92
    __assert_fail("argc==2", "call_fb_realpath.c", 92U, "main");
    }
  }
  {
#line 94
  strcpy((char */* __restrict  */)(path), (char const   */* __restrict  */)*(argv + 1));
#line 96
  tmp = strlen((char const   *)(path));
#line 96
  printf((char const   */* __restrict  */)"Input path = %s, strlen(path) = %d\n",
         path, tmp);
#line 97
  printf((char const   */* __restrict  */)"MAXPATHLEN = %d\n", 46);
#line 98
  fb_realpath(path, resolved_path);
  }
#line 100
  return (0);
}
}