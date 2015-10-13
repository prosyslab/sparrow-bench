/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h"
typedef unsigned long size_t;
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
#line 102 "/usr/include/stdio.h"
typedef __ssize_t ssize_t;
#line 80 "/usr/include/x86_64-linux-gnu/sys/types.h"
typedef __uid_t uid_t;
#line 27 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
struct __anonstruct___sigset_t_13 {
   unsigned long __val[1024UL / (8UL * sizeof(unsigned long ))] ;
};
#line 27 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
typedef struct __anonstruct___sigset_t_13 __sigset_t;
#line 37 "/usr/include/x86_64-linux-gnu/sys/select.h"
typedef __sigset_t sigset_t;
#line 120 "/usr/include/time.h"
struct timespec {
   __time_t tv_sec ;
   __syscall_slong_t tv_nsec ;
};
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
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 129 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 137
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcat)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 144
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,2), __leaf__)) strcmp)(char const   *__s1 ,
                                                                                               char const   *__s2 )  __attribute__((__pure__)) ;
#line 147
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,2), __leaf__)) strncmp)(char const   *__s1 ,
                                                                                                char const   *__s2 ,
                                                                                                size_t __n )  __attribute__((__pure__)) ;
#line 236
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1), __leaf__)) strchr)(char const   *__s ,
                                                                                               int __c )  __attribute__((__pure__)) ;
#line 399
extern  __attribute__((__nothrow__)) size_t ( __attribute__((__nonnull__(1), __leaf__)) strlen)(char const   *__s )  __attribute__((__pure__)) ;
#line 511 "/usr/include/unistd.h"
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
#line 215 "/usr/include/signal.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) sigemptyset)(sigset_t *__set ) ;
#line 221
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) sigaddset)(sigset_t *__set ,
                                                                                                int __signo ) ;
#line 248
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) sigprocmask)(int __how ,
                                                                                  sigset_t const   * __restrict  __set ,
                                                                                  sigset_t * __restrict  __oset ) ;
#line 263 "/usr/include/x86_64-linux-gnu/sys/stat.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,2), __leaf__)) lstat)(char const   * __restrict  __file ,
                                                                                              struct stat * __restrict  __buf ) ;
#line 112 "realpath-2.4.2-bad.c"
static sigset_t saved_sigmask  ;
#line 113 "realpath-2.4.2-bad.c"
static sigset_t block_sigmask  ;
#line 114 "realpath-2.4.2-bad.c"
static int delaying  ;
#line 115 "realpath-2.4.2-bad.c"
static int init_done  ;
#line 119 "realpath-2.4.2-bad.c"
static void init_mask(void) 
{ 
  int sig ;

  {
  {
#line 123
  init_done = 1;
#line 124
  sigemptyset(& block_sigmask);
#line 125
  sig = 1;
  }
  {
#line 125
  while (1) {
    while_continue: /* CIL Label */ ;
#line 125
    if (! (sig < 65)) {
#line 125
      goto while_break;
    }
    {
#line 126
    sigaddset(& block_sigmask, sig);
#line 125
    sig ++;
    }
  }
  while_break: /* CIL Label */ ;
  }
#line 127
  return;
}
}
#line 131 "realpath-2.4.2-bad.c"
int enable_signaling(void) 
{ 
  int tmp ;

  {
#line 133
  if (delaying != 0) {
    {
#line 134
    delaying = 0;
#line 135
    tmp = sigprocmask(2, (sigset_t const   */* __restrict  */)(& saved_sigmask), (sigset_t */* __restrict  */)((sigset_t *)0));
    }
#line 135
    if (tmp < 0) {
#line 137
      return (-1);
    }
  }
#line 140
  return (0);
}
}
#line 145 "realpath-2.4.2-bad.c"
int delay_signaling(void) 
{ 
  int tmp ;

  {
#line 147
  if (init_done == 0) {
    {
#line 148
    init_mask();
    }
  }
#line 149
  if (delaying == 0) {
    {
#line 150
    delaying = 1;
#line 151
    tmp = sigprocmask(0, (sigset_t const   */* __restrict  */)(& block_sigmask), (sigset_t */* __restrict  */)(& saved_sigmask));
    }
#line 151
    if (tmp < 0) {
#line 153
      return (-1);
    }
  }
#line 156
  return (0);
}
}
#line 163 "realpath-2.4.2-bad.c"
char *my_realpath(char const   *pathname , char *result , char *chroot_path___0 ) 
{ 
  struct stat sbuf ;
  char canary[5] ;
  char curpath[46] ;
  char workpath[46] ;
  char linkpath[46] ;
  char namebuf[46] ;
  char *where ;
  char *ptr ;
  char *last ;
  int len ;
  uid_t userid ;
  int resultcode ;
  size_t tmp ;
  uid_t userid___0 ;
  char *tmp___0 ;
  char *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  size_t tmp___5 ;
  ssize_t tmp___6 ;
  void *__cil_tmp25 ;
  void *__cil_tmp26 ;
  void *__cil_tmp27 ;
  void *__cil_tmp28 ;
  void *__cil_tmp29 ;
  char *__cil_tmp30 ;
  char *__cil_tmp31 ;
  char *__cil_tmp32 ;
  char *__cil_tmp33 ;
  char *__cil_tmp34 ;
  char *__cil_tmp35 ;
  char *__cil_tmp36 ;
  char *__cil_tmp37 ;
  char *__cil_tmp38 ;
  char *__cil_tmp39 ;
  char *__cil_tmp40 ;
  char *__cil_tmp41 ;
  char *__cil_tmp42 ;
  char *__cil_tmp43 ;
  char *__cil_tmp44 ;
  char *__cil_tmp45 ;
  char *__cil_tmp46 ;
  char *__cil_tmp47 ;
  char *__cil_tmp48 ;
  char *__cil_tmp49 ;
  char *__cil_tmp50 ;
  char *__cil_tmp51 ;
  char *__cil_tmp52 ;
  char *__cil_tmp53 ;
  char *__cil_tmp54 ;
  char *__cil_tmp55 ;
  char *__cil_tmp56 ;
  char *__cil_tmp57 ;
  char *__cil_tmp58 ;
  char *__cil_tmp59 ;
  char *__cil_tmp60 ;
  char *__cil_tmp61 ;
  char *__cil_tmp62 ;
  char *__cil_tmp63 ;
  char *__cil_tmp64 ;
  char *__cil_tmp65 ;
  char *__cil_tmp66 ;
  char *__cil_tmp67 ;
  char *__cil_tmp68 ;
  char *__cil_tmp69 ;
  char *__cil_tmp70 ;

  {
#line 165
  canary[0] = (char )'G';
#line 165
  canary[1] = (char )'O';
#line 165
  canary[2] = (char )'O';
#line 165
  canary[3] = (char )'D';
#line 165
  canary[4] = (char )'\000';
#line 179
  if ((unsigned long )result == (unsigned long )((void *)0)) {
#line 180
    return ((char *)((void *)0));
  }
#line 182
  if ((unsigned long )pathname == (unsigned long )((void *)0)) {
#line 183
    *result = (char )'\000';
#line 184
    return ((char *)((void *)0));
  }
  {
#line 187
  printf((char const   */* __restrict  */)"MY_REALPATH: pathname passed in = %s\n",
         pathname);
#line 189
  tmp = strlen(pathname);
#line 189
  printf((char const   */* __restrict  */)"strcpy(curpath, pathname):Copying %d bytes into an array of size %d\n",
         tmp, sizeof(curpath));
#line 192
  strcpy((char */* __restrict  */)(curpath), (char const   */* __restrict  */)pathname);
#line 193
  printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
  }
#line 195
  if ((int const   )*pathname != 47) {
    {
#line 199
    tmp___1 = getcwd(workpath, (size_t )46);
    }
#line 199
    if (! tmp___1) {
      {
#line 203
      userid___0 = geteuid();
#line 204
      delay_signaling();
#line 205
      seteuid((__uid_t )0);
#line 207
      tmp___0 = getcwd(workpath, (size_t )46);
      }
#line 207
      if (! tmp___0) {
        {
#line 211
        strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)".");
#line 212
        seteuid(userid___0);
#line 213
        enable_signaling();
        }
#line 214
        return ((char *)((void *)0));
      }
      {
#line 216
      seteuid(userid___0);
#line 217
      enable_signaling();
      }
    }
  } else {
#line 220
    workpath[0] = (char )'\000';
  }
#line 228
  where = curpath;
  {
#line 229
  while (1) {
    while_continue: /* CIL Label */ ;
#line 229
    if (! ((int )*where != 0)) {
#line 229
      goto while_break;
    }
    {
#line 230
    tmp___2 = strcmp((char const   *)where, ".");
    }
#line 230
    if (! tmp___2) {
#line 231
      where ++;
#line 232
      goto while_continue;
    }
    {
#line 235
    tmp___3 = strncmp((char const   *)where, "./", (size_t )2);
    }
#line 235
    if (! tmp___3) {
#line 236
      where += 2;
#line 237
      goto while_continue;
    }
    {
#line 240
    tmp___4 = strncmp((char const   *)where, "../", (size_t )3);
    }
#line 240
    if (! tmp___4) {
#line 241
      where += 3;
#line 242
      last = workpath;
#line 242
      ptr = last;
      {
#line 243
      while (1) {
        while_continue___0: /* CIL Label */ ;
#line 243
        if (! ((int )*ptr != 0)) {
#line 243
          goto while_break___0;
        }
#line 244
        if ((int )*ptr == 47) {
#line 245
          last = ptr;
        }
#line 246
        ptr ++;
      }
      while_break___0: /* CIL Label */ ;
      }
#line 248
      *last = (char )'\000';
#line 249
      goto while_continue;
    }
    {
#line 251
    ptr = strchr((char const   *)where, '/');
    }
#line 252
    if ((unsigned long )ptr == (unsigned long )((char *)((void *)0))) {
      {
#line 253
      tmp___5 = strlen((char const   *)where);
#line 253
      ptr = (where + tmp___5) - 1;
      }
    } else {
#line 255
      *ptr = (char )'\000';
    }
    {
#line 257
    strcpy((char */* __restrict  */)(namebuf), (char const   */* __restrict  */)(workpath));
#line 258
    last = namebuf;
    }
    {
#line 258
    while (1) {
      while_continue___1: /* CIL Label */ ;
#line 258
      if (! *last) {
#line 258
        goto while_break___1;
      }
#line 259
      goto __Cont;
      __Cont: /* CIL Label */ 
#line 258
      last ++;
    }
    while_break___1: /* CIL Label */ ;
    }
#line 260
    if ((unsigned long )last == (unsigned long )(namebuf)) {
      {
#line 262
      strcat((char */* __restrict  */)(namebuf), (char const   */* __restrict  */)"/");
#line 263
      printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
      }
    } else {
#line 260
      last --;
#line 260
      if ((int )*last != 47) {
        {
#line 262
        strcat((char */* __restrict  */)(namebuf), (char const   */* __restrict  */)"/");
#line 263
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
      }
    }
    {
#line 266
    strcat((char */* __restrict  */)(namebuf), (char const   */* __restrict  */)where);
#line 267
    printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
#line 269
    ptr ++;
#line 269
    where = ptr;
#line 271
    userid = geteuid();
#line 272
    delay_signaling();
#line 273
    seteuid((__uid_t )0);
#line 274
    resultcode = lstat((char const   */* __restrict  */)(namebuf), (struct stat */* __restrict  */)(& sbuf));
#line 275
    seteuid(userid);
#line 276
    enable_signaling();
    }
#line 278
    if (resultcode == -1) {
#line 279
      if ((unsigned long )chroot_path___0 == (unsigned long )((void *)0)) {
        {
#line 281
        strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 282
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
      } else {
        {
#line 286
        strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)chroot_path___0);
#line 287
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
#line 288
        if ((int )namebuf[0] != 47) {
          {
#line 291
          strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 292
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
        } else
#line 294
        if ((int )namebuf[1] != 0) {
#line 295
          ptr = result;
          {
#line 295
          while (1) {
            while_continue___2: /* CIL Label */ ;
#line 295
            if (! ((int )*ptr != 0)) {
#line 295
              goto while_break___2;
            }
#line 295
            ptr ++;
          }
          while_break___2: /* CIL Label */ ;
          }
#line 296
          if ((unsigned long )ptr == (unsigned long )result) {
            {
#line 298
            strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 299
            printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
            }
          } else {
#line 296
            ptr --;
#line 296
            if ((int )*ptr != 47) {
              {
#line 298
              strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 299
              printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
              }
            } else {
              {
#line 303
              strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf+1));
#line 304
              printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
              }
            }
          }
        }
      }
#line 308
      return ((char *)((void *)0));
    }
#line 312
    if ((sbuf.st_mode & 61440U) == 40960U) {
      {
#line 313
      userid = geteuid();
#line 314
      delay_signaling();
#line 315
      seteuid((__uid_t )0);
#line 316
      tmp___6 = readlink((char const   */* __restrict  */)(namebuf), (char */* __restrict  */)(linkpath),
                         (size_t )46);
#line 316
      len = (int )tmp___6;
#line 317
      seteuid(userid);
#line 318
      enable_signaling();
      }
#line 319
      if (len == 0) {
#line 320
        if ((unsigned long )chroot_path___0 == (unsigned long )((void *)0)) {
          {
#line 322
          strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 323
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
        } else {
          {
#line 327
          strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)chroot_path___0);
#line 328
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
#line 329
          if ((int )namebuf[0] != 47) {
            {
#line 331
            strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 332
            printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
            }
          } else
#line 334
          if ((int )namebuf[1] != 0) {
#line 335
            ptr = result;
            {
#line 335
            while (1) {
              while_continue___3: /* CIL Label */ ;
#line 335
              if (! ((int )*ptr != 0)) {
#line 335
                goto while_break___3;
              }
#line 335
              ptr ++;
            }
            while_break___3: /* CIL Label */ ;
            }
#line 336
            if ((unsigned long )ptr == (unsigned long )result) {
              {
#line 338
              strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 339
              printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
              }
            } else {
#line 336
              ptr --;
#line 336
              if ((int )*ptr != 47) {
                {
#line 338
                strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 339
                printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
                }
              } else {
                {
#line 343
                strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf+1));
#line 344
                printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
                }
              }
            }
          }
        }
#line 348
        return ((char *)((void *)0));
      }
#line 350
      *(linkpath + len) = (char )'\000';
#line 352
      if ((int )linkpath[0] == 47) {
#line 353
        workpath[0] = (char )'\000';
      }
#line 354
      if (*where) {
        {
#line 356
        strcat((char */* __restrict  */)(linkpath), (char const   */* __restrict  */)"/");
#line 357
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
#line 359
        strcat((char */* __restrict  */)(linkpath), (char const   */* __restrict  */)where);
#line 360
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
      }
      {
#line 364
      strcpy((char */* __restrict  */)(curpath), (char const   */* __restrict  */)(linkpath));
#line 365
      printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
#line 370
      where = curpath;
      }
#line 371
      goto while_continue;
    }
#line 374
    if ((sbuf.st_mode & 16384U) == 16384U) {
      {
#line 376
      strcpy((char */* __restrict  */)(workpath), (char const   */* __restrict  */)(namebuf));
#line 377
      printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
      }
#line 378
      goto while_continue;
    }
#line 380
    if (*where) {
#line 381
      if ((unsigned long )chroot_path___0 == (unsigned long )((void *)0)) {
        {
#line 383
        strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 384
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
      } else {
        {
#line 387
        strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)chroot_path___0);
        }
#line 388
        if ((int )namebuf[0] != 47) {
          {
#line 390
          strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 391
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
        } else
#line 393
        if ((int )namebuf[1] != 0) {
#line 394
          ptr = result;
          {
#line 394
          while (1) {
            while_continue___4: /* CIL Label */ ;
#line 394
            if (! ((int )*ptr != 0)) {
#line 394
              goto while_break___4;
            }
#line 394
            ptr ++;
          }
          while_break___4: /* CIL Label */ ;
          }
#line 395
          if ((unsigned long )ptr == (unsigned long )result) {
            {
#line 397
            strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 398
            printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
            }
          } else {
#line 395
            ptr --;
#line 395
            if ((int )*ptr != 47) {
              {
#line 397
              strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf));
#line 398
              printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
              }
            } else {
              {
#line 402
              strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(namebuf+1));
#line 403
              printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
              }
            }
          }
        }
      }
#line 407
      return ((char *)((void *)0));
    } else {
      {
#line 410
      strcpy((char */* __restrict  */)(workpath), (char const   */* __restrict  */)(namebuf));
#line 411
      printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
      }
    }
  }
  while_break: /* CIL Label */ ;
  }
#line 414
  if ((unsigned long )chroot_path___0 == (unsigned long )((void *)0)) {
    {
#line 416
    strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)(workpath));
#line 417
    printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
    }
  } else {
    {
#line 421
    strcpy((char */* __restrict  */)result, (char const   */* __restrict  */)chroot_path___0);
#line 422
    printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
    }
#line 423
    if ((int )workpath[0] != 47) {
      {
#line 425
      strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(workpath));
#line 426
      printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
      }
    } else
#line 428
    if ((int )workpath[1] != 0) {
#line 429
      ptr = result;
      {
#line 429
      while (1) {
        while_continue___5: /* CIL Label */ ;
#line 429
        if (! ((int )*ptr != 0)) {
#line 429
          goto while_break___5;
        }
#line 429
        ptr ++;
      }
      while_break___5: /* CIL Label */ ;
      }
#line 430
      if ((unsigned long )ptr == (unsigned long )result) {
        {
#line 432
        strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(workpath));
#line 433
        printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
        }
      } else {
#line 430
        ptr --;
#line 430
        if ((int )*ptr != 47) {
          {
#line 432
          strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(workpath));
#line 433
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
        } else {
          {
#line 437
          strcat((char */* __restrict  */)result, (char const   */* __restrict  */)(workpath+1));
#line 438
          printf((char const   */* __restrict  */)"canary=[%s]\n", canary);
          }
        }
      }
    }
  }
#line 442
  return (result);
}
}
#line 130 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2))) strncpy)(char * __restrict  __dest ,
                                                                                        char const   * __restrict  __src ,
                                                                                        size_t __n ) ;
#line 71 "/usr/include/assert.h"
extern  __attribute__((__nothrow__, __noreturn__)) void __assert_fail(char const   *__assertion ,
                                                                      char const   *__file ,
                                                                      unsigned int __line ,
                                                                      char const   *__function ) ;
#line 81 "call-realpath-bad.c"
char chroot_path[46]  ;
#line 90 "call-realpath-bad.c"
void call_realpath(char *name ) 
{ 
  unsigned int uid ;
  unsigned int gid ;
  char path[47] ;
  size_t tmp ;
  void *__cil_tmp6 ;
  char *__cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;

  {
  {
#line 92
  uid = 10U;
#line 93
  gid = 100U;
#line 96
  printf((char const   */* __restrict  */)"Before my-realpath(): uid = %d, gid = %d\n",
         uid, gid);
#line 98
  tmp = strlen((char const   *)name);
#line 98
  printf((char const   */* __restrict  */)"strlen(name) =%d\n", tmp);
#line 99
  my_realpath(name, path, chroot_path);
#line 100
  printf((char const   */* __restrict  */)"Resolved path = %s\n", path);
#line 101
  printf((char const   */* __restrict  */)"After my-realpath(): uid = %d, gid = %d\n",
         uid, gid);
  }
#line 102
  return;
}
}
#line 104 "call-realpath-bad.c"
int main(int argc , char **argv ) 
{ 
  char *name ;
  char *root_path ;
  char *__cil_tmp5 ;
  char *__cil_tmp6 ;
  char *__cil_tmp7 ;
  char *__cil_tmp8 ;

  {
#line 109
  if (! (argc == 2)) {
#line 109
    if (! (argc == 3)) {
      {
#line 109
      __assert_fail("argc==2 || argc==3", "call-realpath-bad.c", 109U, "main");
      }
    }
  }
#line 111
  if (argc == 2) {
#line 112
    name = *(argv + 1);
#line 113
    root_path = (char *)"/";
  } else {
#line 116
    name = *(argv + 1);
#line 117
    root_path = *(argv + 2);
  }
  {
#line 120
  strncpy((char */* __restrict  */)(chroot_path), (char const   */* __restrict  */)root_path,
          sizeof(chroot_path));
#line 121
  call_realpath(name);
  }
#line 123
  return (0);
}
}
