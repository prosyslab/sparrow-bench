/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h"
typedef unsigned long size_t;
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 364
extern  __attribute__((__nothrow__)) int sprintf(char * __restrict  __s , char const   * __restrict  __format 
                                                 , ...) ;
#line 129 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 132
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strncpy)(char * __restrict  __dest ,
                                                                                                  char const   * __restrict  __src ,
                                                                                                  size_t __n ) ;
#line 315
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strpbrk)(char const   *__s ,
                                                                                                  char const   *__accept )  __attribute__((__pure__)) ;
#line 342
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strstr)(char const   *__haystack ,
                                                                                                 char const   *__needle )  __attribute__((__pure__)) ;
#line 399
extern  __attribute__((__nothrow__)) size_t ( __attribute__((__nonnull__(1), __leaf__)) strlen)(char const   *__s )  __attribute__((__pure__)) ;
#line 164 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__)) double ( __attribute__((__nonnull__(1), __leaf__)) strtod)(char const   * __restrict  __nptr ,
                                                                                                char ** __restrict  __endptr ) ;
#line 466
extern  __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) malloc)(size_t __size )  __attribute__((__malloc__)) ;
#line 483
extern  __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
#line 54 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) acos)(double __x ) ;
#line 56
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) asin)(double __x ) ;
#line 58
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) atan)(double __x ) ;
#line 63
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) cos)(double __x ) ;
#line 65
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) sin)(double __x ) ;
#line 67
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) tan)(double __x ) ;
#line 72
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) cosh)(double __x ) ;
#line 74
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) sinh)(double __x ) ;
#line 76
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) tanh)(double __x ) ;
#line 88
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) acosh)(double __x ) ;
#line 90
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) asinh)(double __x ) ;
#line 92
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) atanh)(double __x ) ;
#line 100
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) exp)(double __x ) ;
#line 109
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) log)(double __x ) ;
#line 112
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) log10)(double __x ) ;
#line 144
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) log2)(double __x ) ;
#line 153
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) pow)(double __x ,
                                                                             double __y ) ;
#line 181
extern  __attribute__((__nothrow__)) double ( __attribute__((__leaf__)) fabs)(double __x )  __attribute__((__const__)) ;
#line 14 "my_evalute.h"
char const   *oper[3]  = {      "^",      "*/",      "+-"};
#line 15 "my_evalute.h"
char const   *fun[22]  = 
#line 15
  {      "arcsin",      "arccos",      "arctg",      "arcctg", 
        "ctg",      "tg",      "sin",      "cos", 
        "arcsh",      "arccsh",      "arcth",      "arccth", 
        "cth",      "th",      "sh",      "ch", 
        "abs",      "log10",      "log2",      "log", 
        "exp",      "pi"};
#line 17
short eval(char const   *f , double *rez ) ;
#line 18
short eval_function(char const   *f , double *rez ) ;
#line 19
short eval_formula(char const   *f , double *rez ) ;
#line 21 "my_evalute.h"
short eval(char const   *f , double *rez ) 
{ 
  int size ;
  size_t tmp ;
  int x ;
  int from ;
  int to ;
  double really_rez ;
  char *fm ;
  void *tmp___0 ;
  char *next_fm ;
  char *fm_to_eval ;
  void *tmp___1 ;
  short tmp___2 ;
  void *tmp___3 ;
  size_t tmp___4 ;
  short tmp___5 ;
  char *__cil_tmp18 ;

  {
  {
#line 23
  tmp = strlen(f);
#line 23
  size = (int )tmp;
#line 26
  tmp___0 = malloc((size_t )(size + 1));
#line 26
  fm = (char *)tmp___0;
#line 28
  tmp___1 = malloc((size_t )(size + 1));
#line 28
  fm_to_eval = (char *)tmp___1;
#line 29
  strcpy((char */* __restrict  */)fm, (char const   */* __restrict  */)f);
#line 30
  from = -1;
#line 31
  x = 0;
  }
  {
#line 32
  while (1) {
    while_continue: /* CIL Label */ ;
#line 32
    if (! (x < size)) {
#line 32
      goto while_break;
    }
#line 34
    if ((int )*(fm + x) == 40) {
#line 35
      from = x;
    } else
#line 36
    if ((int )*(fm + x) == 41) {
#line 38
      if (from > -1) {
        {
#line 40
        to = x;
#line 41
        strncpy((char */* __restrict  */)fm_to_eval, (char const   */* __restrict  */)(fm + (from + 1)),
                (size_t )((to - from) - 1));
#line 42
        *(fm_to_eval + ((to - from) - 1)) = (char )'\000';
#line 43
        tmp___2 = eval_function((char const   *)fm_to_eval, & really_rez);
        }
#line 43
        if (tmp___2) {
          {
#line 45
          free((void *)fm);
#line 46
          free((void *)fm_to_eval);
          }
#line 47
          return ((short)1);
        }
        {
#line 49
//        size = (size - ((to - from) + 1)) + 17;
#line 50
        tmp___3 = malloc((size_t )size);
#line 50
        next_fm = (char *)tmp___3;
#line 51
        strncpy((char */* __restrict  */)next_fm, (char const   */* __restrict  */)fm,
                (size_t )from);
#line 52
        sprintf((char */* __restrict  */)(next_fm + from), (char const   */* __restrict  */)"%lf%s",
                really_rez, fm + (to + 1));
#line 53
        free((void *)fm);
#line 54
//        fm = next_fm;
#line 55
        tmp___4 = strlen((char const   *)fm);
#line 55
        size = (int )tmp___4;
#line 56
        x = -1;
#line 57
        from = -1;
        }
      } else {
        {
#line 61
        free((void *)fm);
#line 62
        free((void *)fm_to_eval);
        }
#line 63
        return ((short)1);
      }
    }
#line 32
    x ++;
  }
  while_break: /* CIL Label */ ;
  }
#line 67
  if (from > -1) {
    {
#line 69
    free((void *)fm);
#line 70
    free((void *)fm_to_eval);
    }
#line 71
    return ((short)1);
  } else {
    {
#line 67
    tmp___5 = eval_function((char const   *)fm, rez);
    }
#line 67
    if (tmp___5) {
      {
#line 69
      free((void *)fm);
#line 70
      free((void *)fm_to_eval);
      }
#line 71
      return ((short)1);
    }
  }
#line 73
  return ((short)0);
}
}
#line 76 "my_evalute.h"
short eval_function(char const   *f , double *rez ) 
{ 
  unsigned int size ;
  size_t tmp ;
  char *from ;
  char *to ;
  char *next_fm ;
  int x ;
  double op ;
  double really_rez ;
  char *fm ;
  void *tmp___0 ;
  size_t tmp___1 ;
  void *tmp___2 ;
  double tmp___3 ;
  double temp_tan ;
  double tmp___4 ;
  double tmp___5 ;
  double tmp___6 ;
  double temp_th ;
  double tmp___7 ;
  double tmp___8 ;
  double tmp___9 ;
  size_t tmp___10 ;
  short tmp___11 ;
  char *__cil_tmp26 ;

  {
  {
#line 78
  tmp = strlen(f);
#line 78
  size = (unsigned int )tmp;
#line 82
  tmp___0 = malloc((size_t )(size + 1U));
#line 82
  fm = (char *)tmp___0;
#line 83
  strcpy((char */* __restrict  */)fm, (char const   */* __restrict  */)f);
#line 84
  x = 0;
  }
  {
#line 84
  while (1) {
    while_continue: /* CIL Label */ ;
#line 84
    if (! (x < 22)) {
#line 84
      goto while_break;
    }
    {
#line 86
    from = strstr((char const   *)fm, fun[x]);
    }
    {
#line 87
    while (1) {
      while_continue___0: /* CIL Label */ ;
#line 87
      if (! from) {
#line 87
        goto while_break___0;
      }
      {
#line 89
      to = from;
#line 90
      tmp___1 = strlen(fun[x]);
#line 90
      to += tmp___1;
#line 91
      op = strtod((char const   */* __restrict  */)to, (char **/* __restrict  */)(& to));
#line 92
      size = (unsigned int )(((long )size - ((to - from) + 1L)) + 17L);
#line 93
      tmp___2 = malloc((size_t )size);
#line 93
      next_fm = (char *)tmp___2;
      }
      {
#line 96
      if (x == 6) {
#line 96
        goto case_6;
      }
#line 102
      if (x == 7) {
#line 102
        goto case_7;
      }
#line 108
      if (x == 5) {
#line 108
        goto case_5;
      }
#line 120
      if (x == 4) {
#line 120
        goto case_4;
      }
#line 133
      if (x == 0) {
#line 133
        goto case_0;
      }
#line 139
      if (x == 1) {
#line 139
        goto case_1;
      }
#line 145
      if (x == 2) {
#line 145
        goto case_2;
      }
#line 151
      if (x == 3) {
#line 151
        goto case_3;
      }
#line 157
      if (x == 14) {
#line 157
        goto case_14;
      }
#line 163
      if (x == 15) {
#line 163
        goto case_15;
      }
#line 169
      if (x == 13) {
#line 169
        goto case_13;
      }
#line 175
      if (x == 12) {
#line 175
        goto case_12;
      }
#line 188
      if (x == 8) {
#line 188
        goto case_8;
      }
#line 194
      if (x == 9) {
#line 194
        goto case_9;
      }
#line 200
      if (x == 10) {
#line 200
        goto case_10;
      }
#line 206
      if (x == 11) {
#line 206
        goto case_11;
      }
#line 218
      if (x == 16) {
#line 218
        goto case_16;
      }
#line 224
      if (x == 17) {
#line 224
        goto case_17;
      }
#line 230
      if (x == 18) {
#line 230
        goto case_18;
      }
#line 236
      if (x == 19) {
#line 236
        goto case_19;
      }
#line 242
      if (x == 20) {
#line 242
        goto case_20;
      }
#line 248
      if (x == 21) {
#line 248
        goto case_21;
      }
#line 94
      goto switch_break;
      case_6: /* CIL Label */ 
      {
#line 99
      really_rez = sin(op);
      }
#line 100
      goto switch_break;
      case_7: /* CIL Label */ 
      {
#line 105
      really_rez = cos(op);
      }
#line 106
      goto switch_break;
      case_5: /* CIL Label */ 
      {
#line 111
      tmp___3 = cos(op);
      }
#line 111
      if (tmp___3) {
        {
#line 112
        really_rez = tan(op);
        }
      } else {
        {
#line 115
        free((void *)fm);
        }
#line 116
        return ((short)1);
      }
#line 118
      goto switch_break;
      case_4: /* CIL Label */ 
      {
#line 123
      tmp___4 = tan(op);
#line 123
      temp_tan = tmp___4;
      }
#line 124
      if (temp_tan) {
#line 125
        really_rez = (double )1 / temp_tan;
      } else {
        {
#line 128
        free((void *)fm);
        }
#line 129
        return ((short)1);
      }
#line 131
      goto switch_break;
      case_0: /* CIL Label */ 
      {
#line 136
      really_rez = asin(op);
      }
#line 137
      goto switch_break;
      case_1: /* CIL Label */ 
      {
#line 142
      really_rez = acos(op);
      }
#line 143
      goto switch_break;
      case_2: /* CIL Label */ 
      {
#line 148
      really_rez = atan(op);
      }
#line 149
      goto switch_break;
      case_3: /* CIL Label */ 
      {
#line 154
      tmp___5 = acos((double )-1);
#line 154
      tmp___6 = atan(op);
#line 154
      really_rez = tmp___5 / (double )2 - tmp___6;
      }
#line 155
      goto switch_break;
      case_14: /* CIL Label */ 
      {
#line 160
      really_rez = sinh(op);
      }
#line 161
      goto switch_break;
      case_15: /* CIL Label */ 
      {
#line 166
      really_rez = cosh(op);
      }
#line 167
      goto switch_break;
      case_13: /* CIL Label */ 
      {
#line 172
      really_rez = tanh(op);
      }
#line 173
      goto switch_break;
      case_12: /* CIL Label */ 
      {
#line 178
      tmp___7 = tanh(op);
#line 178
      temp_th = tmp___7;
      }
#line 179
      if (temp_th) {
#line 180
        really_rez = (double )1 / temp_th;
      } else {
        {
#line 183
        free((void *)fm);
        }
#line 184
        return ((short)1);
      }
#line 186
      goto switch_break;
      case_8: /* CIL Label */ 
      {
#line 191
      really_rez = asinh(op);
      }
#line 192
      goto switch_break;
      case_9: /* CIL Label */ 
      {
#line 197
      really_rez = acosh(op);
      }
#line 198
      goto switch_break;
      case_10: /* CIL Label */ 
      {
#line 203
      really_rez = atanh(op);
      }
#line 204
      goto switch_break;
      case_11: /* CIL Label */ 
#line 209
      if (op != (double )1) {
        {
#line 210
        tmp___8 = log(((double )1 + op) / (op - (double )1));
#line 210
        really_rez = 0.5 * tmp___8;
        }
      } else {
        {
#line 213
        free((void *)fm);
        }
#line 214
        return ((short)1);
      }
#line 216
      goto switch_break;
      case_16: /* CIL Label */ 
      {
#line 221
      really_rez = fabs(op);
      }
#line 222
      goto switch_break;
      case_17: /* CIL Label */ 
      {
#line 227
      really_rez = log10(op);
      }
#line 228
      goto switch_break;
      case_18: /* CIL Label */ 
      {
#line 233
      really_rez = log2(op);
      }
#line 234
      goto switch_break;
      case_19: /* CIL Label */ 
      {
#line 239
      really_rez = log(op);
      }
#line 240
      goto switch_break;
      case_20: /* CIL Label */ 
      {
#line 245
      really_rez = exp(op);
      }
#line 246
      goto switch_break;
      case_21: /* CIL Label */ 
      {
#line 251
      tmp___9 = acos((double )-1);
#line 251
      really_rez = tmp___9 * op;
      }
#line 252
      goto switch_break;
      switch_break: /* CIL Label */ ;
      }
      {
#line 255
      strncpy((char */* __restrict  */)next_fm, (char const   */* __restrict  */)fm,
              (size_t )(from - fm));
#line 256
      sprintf((char */* __restrict  */)(next_fm + (from - fm)), (char const   */* __restrict  */)"%lf%s",
              really_rez, to);
#line 257
      free((void *)fm);
#line 258
      fm = next_fm;
#line 259
      tmp___10 = strlen((char const   *)fm);
#line 259
      size = (unsigned int )tmp___10;
#line 260
      from = strstr((char const   *)fm, fun[x]);
      }
    }
    while_break___0: /* CIL Label */ ;
    }
#line 84
    x ++;
  }
  while_break: /* CIL Label */ ;
  }
  {
#line 263
  tmp___11 = eval_formula((char const   *)fm, rez);
  }
#line 263
  if (tmp___11) {
    {
#line 265
    free((void *)fm);
    }
#line 266
    return ((short)1);
  } else {
    {
#line 269
    free((void *)fm);
    }
  }
#line 270
  return ((short)0);
}
}
#line 286
extern int ( /* missing proto */  isdigit)() ;
#line 273 "my_evalute.h"
short eval_formula(char const   *f , double *rez ) 
{ 
  int size ;
  size_t tmp ;
  int x ;
  char *ser ;
  char *begin ;
  char *end ;
  char *next_fm ;
  char operations ;
  double op[2] ;
  double really_rez ;
  char *fm ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  size_t tmp___5 ;
  void *__cil_tmp20 ;
  char *__cil_tmp21 ;

  {
  {
#line 275
  tmp = strlen(f);
#line 275
  size = (int )tmp;
#line 279
  really_rez = (double )0;
#line 280
  tmp___0 = malloc((size_t )(size + 1));
#line 280
  fm = (char *)tmp___0;
  }
#line 281
  if ((int const   )*(f + 0) == 45) {
#line 281
    if ((int const   )*(f + 1) == 45) {
      {
#line 282
      strcpy((char */* __restrict  */)fm, (char const   */* __restrict  */)(f + 2));
      }
    } else {
      {
#line 284
      strcpy((char */* __restrict  */)fm, (char const   */* __restrict  */)f);
      }
    }
  } else {
    {
#line 284
    strcpy((char */* __restrict  */)fm, (char const   */* __restrict  */)f);
    }
  }
#line 285
  x = 0;
  {
#line 285
  while (1) {
    while_continue: /* CIL Label */ ;
#line 285
    if (! (x < size)) {
#line 285
      goto while_break;
    }
    {
#line 286
    tmp___1 = isdigit((int )*(fm + x));
    }
#line 286
    if (! tmp___1) {
#line 286
      if ((int )*(fm + x) != 46) {
#line 286
        if ((int )*(fm + x) != 94) {
#line 286
          if ((int )*(fm + x) != 42) {
#line 286
            if ((int )*(fm + x) != 47) {
#line 286
              if ((int )*(fm + x) != 43) {
#line 286
                if ((int )*(fm + x) != 45) {
                  {
#line 288
                  free((void *)fm);
                  }
#line 289
                  return ((short)1);
                }
              }
            }
          }
        }
      }
    }
#line 285
    x ++;
  }
  while_break: /* CIL Label */ ;
  }
#line 291
  x = 0;
  {
#line 291
  while (1) {
    while_continue___0: /* CIL Label */ ;
#line 291
    if (! (x < 3)) {
#line 291
      goto while_break___0;
    }
    {
#line 293
    ser = strpbrk((char const   *)(fm + 1), oper[x]);
    }
    {
#line 294
    while (1) {
      while_continue___1: /* CIL Label */ ;
#line 294
      if (! ser) {
#line 294
        goto while_break___1;
      }
      {
#line 296
      operations = *ser;
#line 297
      op[1] = strtod((char const   */* __restrict  */)(ser + 1), (char **/* __restrict  */)(& end));
      }
#line 298
      if ((unsigned long )(ser + 1) == (unsigned long )end) {
        {
#line 300
        free((void *)fm);
        }
#line 301
        return ((short)1);
      }
      {
#line 303
      while (1) {
        while_continue___2: /* CIL Label */ ;
#line 303
        if ((unsigned long )ser > (unsigned long )fm) {
          {
#line 303
          tmp___2 = isdigit((int )*(ser - 1));
          }
#line 303
          if (! tmp___2) {
#line 303
            if (! ((int )*(ser - 1) == 46)) {
#line 303
              goto while_break___2;
            }
          }
        } else {
#line 303
          goto while_break___2;
        }
#line 304
        ser --;
      }
      while_break___2: /* CIL Label */ ;
      }
#line 305
      if ((unsigned long )ser > (unsigned long )f) {
#line 305
        if ((int )*(ser - 1) == 45) {
#line 305
          if ((unsigned long )ser == (unsigned long )(f + 1)) {
#line 306
            ser --;
          } else {
            {
#line 305
            tmp___3 = isdigit((int )*(ser - 2));
            }
#line 305
            if (! tmp___3) {
#line 306
              ser --;
            }
          }
        }
      }
      {
#line 307
      begin = ser;
#line 308
      op[0] = strtod((char const   */* __restrict  */)ser, (char **/* __restrict  */)(& ser));
      }
#line 309
      if ((unsigned long )begin == (unsigned long )ser) {
        {
#line 311
        free((void *)fm);
        }
#line 312
        return ((short)1);
      }
      {
#line 316
      if ((int )operations == 94) {
#line 316
        goto case_94;
      }
#line 321
      if ((int )operations == 42) {
#line 321
        goto case_42;
      }
#line 326
      if ((int )operations == 47) {
#line 326
        goto case_47;
      }
#line 337
      if ((int )operations == 45) {
#line 337
        goto case_45;
      }
#line 342
      if ((int )operations == 43) {
#line 342
        goto case_43;
      }
#line 314
      goto switch_break;
      case_94: /* CIL Label */ 
      {
#line 318
      really_rez = pow(op[0], op[1]);
      }
#line 319
      goto switch_break;
      case_42: /* CIL Label */ 
#line 323
      really_rez = op[0] * op[1];
#line 324
      goto switch_break;
      case_47: /* CIL Label */ 
#line 328
      if (op[1]) {
#line 329
        really_rez = op[0] / op[1];
      } else {
        {
#line 332
        free((void *)fm);
        }
#line 333
        return ((short)1);
      }
#line 335
      goto switch_break;
      case_45: /* CIL Label */ 
#line 339
      really_rez = op[0] - op[1];
#line 340
      goto switch_break;
      case_43: /* CIL Label */ 
#line 344
      really_rez = op[0] + op[1];
#line 345
      goto switch_break;
      switch_break: /* CIL Label */ ;
      }
      {
#line 348
      size = (int )(((long )size - ((end - begin) + 1L)) + 17L);
#line 349
      tmp___4 = malloc((size_t )size);
#line 349
      next_fm = (char *)tmp___4;
#line 350
      strncpy((char */* __restrict  */)next_fm, (char const   */* __restrict  */)fm,
              (size_t )(begin - fm));
#line 351
      sprintf((char */* __restrict  */)(next_fm + (begin - fm)), (char const   */* __restrict  */)"%lf%s",
              really_rez, end);
#line 353
      fm = next_fm;
#line 354
      tmp___5 = strlen((char const   *)fm);
#line 354
      size = (int )tmp___5;
#line 355
      ser = strpbrk((char const   *)(fm + 1), oper[x]);
      }
    }
    while_break___1: /* CIL Label */ ;
    }
#line 291
    x ++;
  }
  while_break___0: /* CIL Label */ ;
  }
  {
#line 358
  *rez = strtod((char const   */* __restrict  */)fm, (char **/* __restrict  */)(& begin));
  }
#line 359
  return ((short)0);
}
}
#line 7 "console_calculator.c"
int main(int argc , char const   **argv ) 
{ 
  double rez ;
  int x ;
  int ret ;
  short tmp ;
  short x___0 ;
  double tmp___0 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;
  char *__cil_tmp11 ;
  char *__cil_tmp12 ;
  char *__cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;

  {
#line 9
  if (argc > 1) {
#line 13
    x = 1;
    {
#line 13
    while (1) {
      while_continue: /* CIL Label */ ;
#line 13
      if (! (x < argc)) {
#line 13
        goto while_break;
      }
      {
#line 15
      tmp = eval(*(argv + x), & rez);
#line 15
      ret = (int )tmp;
      }
#line 16
      if (! ret) {
        {
#line 17
        printf((char const   */* __restrict  */)"%lf\n", rez);
        }
      } else {
#line 19
        return (1);
      }
#line 13
      x ++;
    }
    while_break: /* CIL Label */ ;
    }
  } else {
    {
#line 25
    printf((char const   */* __restrict  */)"amv (amv_post@mail.ru)\nConsole calculator v. 1.0 (08.03.2008)\n");
#line 27
    printf((char const   */* __restrict  */)"Released operations:\n");
#line 28
    x___0 = (short)0;
    }
    {
#line 28
    while (1) {
      while_continue___0: /* CIL Label */ ;
#line 28
      if (! ((int )x___0 < 3)) {
#line 28
        goto while_break___0;
      }
      {
#line 29
      printf((char const   */* __restrict  */)"\t%s\n", oper[x___0]);
#line 28
      x___0 = (short )((int )x___0 + 1);
      }
    }
    while_break___0: /* CIL Label */ ;
    }
    {
#line 30
    printf((char const   */* __restrict  */)"Released functions:\n");
#line 31
    x___0 = (short)0;
    }
    {
#line 31
    while (1) {
      while_continue___1: /* CIL Label */ ;
#line 31
      if (! ((int )x___0 < 22)) {
#line 31
        goto while_break___1;
      }
      {
#line 32
      printf((char const   */* __restrict  */)"\t%s\n", fun[x___0]);
#line 31
      x___0 = (short )((int )x___0 + 1);
      }
    }
    while_break___1: /* CIL Label */ ;
    }
    {
#line 33
    tmp___0 = acos((double )-1);
#line 33
    printf((char const   */* __restrict  */)"PI == %lf\n", tmp___0);
    }
  }
#line 35
  return (0);
}
}
