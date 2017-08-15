/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
#line 18 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
enum COLORBLIND_FILTER_TYPE {
    colorblind_filter_t_no_filter = 0,
    colorblind_filter_t_selective_saturate_red = 1,
    colorblind_filter_t_selective_saturate_green = 2,
    colorblind_filter_t_selective_saturate_blue = 3,
    colorblind_filter_t_selective_dessaturate_red = 4,
    colorblind_filter_t_selective_dessaturate_green = 5,
    colorblind_filter_t_selective_dessaturate_blue = 6,
    colorblind_filter_t_hue_shift_positive = 7,
    colorblind_filter_t_hue_shift_negative = 8,
    colorblind_filter_t_selective_saturate = 9,
    colorblind_filter_t_selective_dessaturate = 10,
    colorblind_filter_t_monochrome_others = 11
} ;
#line 40 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
struct COLORBLIND_XCOLOR {
   unsigned long pixel ;
   unsigned short red ;
   unsigned short green ;
   unsigned short blue ;
};
#line 40 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
typedef struct COLORBLIND_XCOLOR COLORBLIND_XCOLOR;
#line 58 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
struct COLORBLIND_RUNTIME {
   enum COLORBLIND_FILTER_TYPE filter_type ;
   COLORBLIND_XCOLOR *base_color ;
   int base_color_count ;
};
#line 58 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
typedef struct COLORBLIND_RUNTIME COLORBLIND_RUNTIME;
#line 17 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
enum whichcolor {
    whichcolor_red = 0,
    whichcolor_green = 1,
    whichcolor_blue = 2
} ;
#line 66 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__nonnull__(1), __leaf__)) memset)(void *__s ,
                                                                                               int __c ,
                                                                                               size_t __n ) ;
#line 466 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) malloc)(size_t __size )  __attribute__((__malloc__)) ;
#line 483
extern  __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
#line 85 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.h"
COLORBLIND_RUNTIME *colorblind_create(void) ;
#line 92
int colorblind_destroy(COLORBLIND_RUNTIME *cbr ) ;
#line 110
int colorblind_filter(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 116
int colorblind_set_filter_type(COLORBLIND_RUNTIME *cbr , enum COLORBLIND_FILTER_TYPE type ) ;
#line 121
int colorblind_set_base_color(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 126
int colorblind_set_base_colors(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                               int count ) ;
#line 131
int colorblind_remove_base_color(COLORBLIND_RUNTIME *cbr ) ;
#line 19 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/filters.h"
int colorblind_filter_selective_saturate_red(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 20
int colorblind_filter_selective_saturate_green(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 21
int colorblind_filter_selective_saturate_blue(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 22
int colorblind_filter_selective_dessaturate_red(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 23
int colorblind_filter_selective_dessaturate_green(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 24
int colorblind_filter_selective_dessaturate_blue(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 28
int colorblind_filter_hue_shift_positive(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 29
int colorblind_filter_hue_shift_negative(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 17 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
COLORBLIND_RUNTIME *colorblind_create(void) 
{ 
  COLORBLIND_RUNTIME *runtime ;
  void *tmp ;

  {
  {
#line 18
  tmp = malloc(sizeof(COLORBLIND_RUNTIME ));
#line 18
  runtime = (COLORBLIND_RUNTIME *)tmp;
#line 19
  memset((void *)runtime, 0, sizeof(COLORBLIND_RUNTIME ));
  }
#line 20
  return (runtime);
}
}
#line 23 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_destroy(COLORBLIND_RUNTIME *cbr ) 
{ 


  {
  {
#line 24
  free((void *)cbr);
  }
#line 25
  return (0);
}
}
#line 28 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_filter(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;

  {
  {
#line 30
  if ((unsigned int )cbr->filter_type == 0U) {
#line 30
    goto case_0;
  }
#line 32
  if ((unsigned int )cbr->filter_type == 1U) {
#line 32
    goto case_1;
  }
#line 34
  if ((unsigned int )cbr->filter_type == 2U) {
#line 34
    goto case_2;
  }
#line 36
  if ((unsigned int )cbr->filter_type == 3U) {
#line 36
    goto case_3;
  }
#line 38
  if ((unsigned int )cbr->filter_type == 4U) {
#line 38
    goto case_4;
  }
#line 40
  if ((unsigned int )cbr->filter_type == 5U) {
#line 40
    goto case_5;
  }
#line 42
  if ((unsigned int )cbr->filter_type == 6U) {
#line 42
    goto case_6;
  }
#line 44
  if ((unsigned int )cbr->filter_type == 7U) {
#line 44
    goto case_7;
  }
#line 46
  if ((unsigned int )cbr->filter_type == 8U) {
#line 46
    goto case_8;
  }
#line 48
  goto switch_default;
  case_0: /* CIL Label */ 
#line 31
  return (0);
  case_1: /* CIL Label */ 
  {
#line 33
  tmp = colorblind_filter_selective_saturate_red(cbr, color);
  }
#line 33
  return (tmp);
  case_2: /* CIL Label */ 
  {
#line 35
  tmp___0 = colorblind_filter_selective_saturate_green(cbr, color);
  }
#line 35
  return (tmp___0);
  case_3: /* CIL Label */ 
  {
#line 37
  tmp___1 = colorblind_filter_selective_saturate_blue(cbr, color);
  }
#line 37
  return (tmp___1);
  case_4: /* CIL Label */ 
  {
#line 39
  tmp___2 = colorblind_filter_selective_dessaturate_red(cbr, color);
  }
#line 39
  return (tmp___2);
  case_5: /* CIL Label */ 
  {
#line 41
  tmp___3 = colorblind_filter_selective_dessaturate_green(cbr, color);
  }
#line 41
  return (tmp___3);
  case_6: /* CIL Label */ 
  {
#line 43
  tmp___4 = colorblind_filter_selective_dessaturate_blue(cbr, color);
  }
#line 43
  return (tmp___4);
  case_7: /* CIL Label */ 
  {
#line 45
  tmp___5 = colorblind_filter_hue_shift_positive(cbr, color);
  }
#line 45
  return (tmp___5);
  case_8: /* CIL Label */ 
  {
#line 47
  tmp___6 = colorblind_filter_hue_shift_negative(cbr, color);
  }
#line 47
  return (tmp___6);
  switch_default: /* CIL Label */ 
#line 49
  return (0);
  switch_break: /* CIL Label */ ;
  }
}
}
#line 53 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_set_filter_type(COLORBLIND_RUNTIME *cbr , enum COLORBLIND_FILTER_TYPE type ) 
{ 


  {
#line 55
  if ((unsigned int )type >= 9U) {
#line 56
    if ((unsigned long )cbr->base_color == (unsigned long )((void *)0)) {
#line 57
      return (1);
    }
  }
#line 60
  cbr->filter_type = type;
#line 61
  return (0);
}
}
#line 64 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_set_base_color(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 


  {
#line 65
  cbr->base_color_count = 1;
#line 66
  cbr->base_color = color;
#line 67
  return (0);
}
}
#line 70 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_set_base_colors(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                               int count ) 
{ 


  {
#line 71
  cbr->base_color_count = count;
#line 72
  cbr->base_color = color;
#line 73
  return (0);
}
}
#line 76 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/colorblind.c"
int colorblind_remove_base_color(COLORBLIND_RUNTIME *cbr ) 
{ 


  {
#line 77
  cbr->base_color = (COLORBLIND_XCOLOR *)((void *)0);
#line 78
  cbr->base_color_count = 0;
#line 79
  return (0);
}
}
#line 25 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.h"
int colorblind_get_num_equalized(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 37
int colorblind_get_num_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 46
int colorblind_red_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 52
int colorblind_green_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 58
int colorblind_blue_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) ;
#line 18 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int _colorblind_filter_selective_saturate_x_check(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                                  enum whichcolor which ) ;
#line 19
int _colorblind_filter_selective_saturate_x(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                            enum whichcolor which ) ;
#line 20
int _colorblind_filter_selective_dessaturate_x(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                               enum whichcolor which ) ;
#line 35 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_saturate_red(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 36
  tmp = _colorblind_filter_selective_saturate_x(cbr, color, (enum whichcolor )0);
  }
#line 36
  return (tmp);
}
}
#line 39 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_saturate_green(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 40
  tmp = _colorblind_filter_selective_saturate_x(cbr, color, (enum whichcolor )1);
  }
#line 40
  return (tmp);
}
}
#line 43 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_saturate_blue(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 44
  tmp = _colorblind_filter_selective_saturate_x(cbr, color, (enum whichcolor )2);
  }
#line 44
  return (tmp);
}
}
#line 47 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_dessaturate_red(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 48
  tmp = _colorblind_filter_selective_dessaturate_x(cbr, color, (enum whichcolor )0);
  }
#line 48
  return (tmp);
}
}
#line 51 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_dessaturate_green(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 52
  tmp = _colorblind_filter_selective_dessaturate_x(cbr, color, (enum whichcolor )1);
  }
#line 52
  return (tmp);
}
}
#line 55 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int colorblind_filter_selective_dessaturate_blue(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 56
  tmp = _colorblind_filter_selective_dessaturate_x(cbr, color, (enum whichcolor )2);
  }
#line 56
  return (tmp);
}
}
#line 59 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int _colorblind_filter_selective_saturate_x_check(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                                  enum whichcolor which ) 
{ 
  int equalized ;
  int tmp ;
  int touch ;
  int num_main ;
  int tmp___0 ;

  {
  {
#line 60
  tmp = colorblind_get_num_equalized(cbr, color);
#line 60
  equalized = tmp;
#line 61
  touch = 0;
  }
#line 62
  if (equalized == 1) {
#line 63
    if ((unsigned int )which == 0U) {
      {
#line 64
      touch = colorblind_red_is_main(cbr, color);
      }
    } else
#line 65
    if ((unsigned int )which == 1U) {
      {
#line 66
      touch = colorblind_green_is_main(cbr, color);
      }
    } else
#line 67
    if ((unsigned int )which == 2U) {
      {
#line 68
      touch = colorblind_blue_is_main(cbr, color);
      }
    }
  } else
#line 70
  if (equalized == 2) {
    {
#line 71
    tmp___0 = colorblind_get_num_main(cbr, color);
#line 71
    num_main = tmp___0;
    }
#line 72
    if (num_main == 1) {
#line 73
      touch = 0;
    } else
#line 75
    if ((unsigned int )which == 0U) {
      {
#line 76
      touch = colorblind_red_is_main(cbr, color);
      }
    } else
#line 77
    if ((unsigned int )which == 1U) {
      {
#line 78
      touch = colorblind_green_is_main(cbr, color);
      }
    } else
#line 79
    if ((unsigned int )which == 2U) {
      {
#line 80
      touch = colorblind_blue_is_main(cbr, color);
      }
    }
  } else {
#line 84
    touch = 0;
  }
#line 86
  return (touch);
}
}
#line 89 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int _colorblind_filter_selective_saturate_x(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                            enum whichcolor which ) 
{ 
  int touch ;
  int tmp ;

  {
  {
#line 90
  tmp = _colorblind_filter_selective_saturate_x_check(cbr, color, which);
#line 90
  touch = tmp;
  }
#line 91
  if (touch) {
#line 92
    if ((unsigned int )which == 0U) {
#line 93
      color->red = (unsigned short)255;
    } else
#line 94
    if ((unsigned int )which == 1U) {
#line 95
      color->green = (unsigned short)255;
    } else
#line 96
    if ((unsigned int )which == 2U) {
#line 97
      color->blue = (unsigned short)255;
    }
#line 99
    return (1);
  } else {
#line 101
    return (0);
  }
}
}
#line 106 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/saturation_filters.c"
int _colorblind_filter_selective_dessaturate_x(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ,
                                               enum whichcolor which ) 
{ 
  int touch ;
  int tmp ;

  {
  {
#line 107
  tmp = _colorblind_filter_selective_saturate_x_check(cbr, color, which);
#line 107
  touch = tmp;
  }
#line 108
  if (touch) {
#line 109
    if ((unsigned int )which == 0U) {
#line 110
      color->red = (unsigned short)0;
    } else
#line 111
    if ((unsigned int )which == 1U) {
#line 112
      color->green = (unsigned short)0;
    } else
#line 113
    if ((unsigned int )which == 2U) {
#line 114
      color->blue = (unsigned short)0;
    }
#line 116
    return (1);
  } else {
#line 118
    return (0);
  }
}
}
#line 19 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
void _colorblind_calc_all_values(COLORBLIND_XCOLOR *color , int *max , int *mid ,
                                 int *min , int *max_count , int *min_count ) 
{ 


  {
#line 21
  *max = 0;
#line 22
  *mid = -1;
#line 23
  *min = 255;
#line 24
  *max_count = 0;
#line 25
  *min_count = 0;
#line 28
  if ((int )color->red > *max) {
#line 28
    *max = (int )color->red;
  }
#line 29
  if ((int )color->green > *max) {
#line 29
    *max = (int )color->green;
  }
#line 30
  if ((int )color->blue > *max) {
#line 30
    *max = (int )color->blue;
  }
#line 31
  if ((int )color->red < *min) {
#line 31
    *min = (int )color->red;
  }
#line 32
  if ((int )color->green < *min) {
#line 32
    *min = (int )color->green;
  }
#line 33
  if ((int )color->blue < *min) {
#line 33
    *min = (int )color->blue;
  }
#line 36
  if ((int )color->red == *min) {
#line 37
    (*min_count) ++;
  }
#line 39
  if ((int )color->red == *max) {
#line 40
    (*max_count) ++;
  }
#line 42
  if ((int )color->green == *min) {
#line 43
    (*min_count) ++;
  }
#line 45
  if ((int )color->green == *max) {
#line 46
    (*max_count) ++;
  }
#line 48
  if ((int )color->blue == *min) {
#line 49
    (*min_count) ++;
  }
#line 51
  if ((int )color->blue == *max) {
#line 52
    (*max_count) ++;
  }
#line 54
  if (*max_count == 1) {
#line 54
    if (*min_count == 1) {
#line 56
      if ((int )color->red > *min) {
#line 56
        if ((int )color->red < *max) {
#line 56
          *mid = (int )color->red;
        }
      }
#line 57
      if ((int )color->green > *min) {
#line 57
        if ((int )color->green < *max) {
#line 57
          *mid = (int )color->green;
        }
      }
#line 58
      if ((int )color->blue > *min) {
#line 58
        if ((int )color->blue < *max) {
#line 58
          *mid = (int )color->blue;
        }
      }
    } else {
#line 54
      goto _L;
    }
  } else
  _L: /* CIL Label */ 
#line 59
  if (*max_count > 1) {
#line 60
    *mid = *max;
  } else
#line 61
  if (*min_count > 1) {
#line 62
    *mid = *min;
  }
#line 64
  return;
}
}
#line 66 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int colorblind_get_num_equalized(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int max ;
  int mid ;
  int min ;
  int max_count ;
  int min_count ;

  {
  {
#line 68
  _colorblind_calc_all_values(color, & max, & mid, & min, & max_count, & min_count);
  }
#line 70
  if (max_count == 2) {
#line 72
    return (2);
  } else
#line 70
  if (min_count == 2) {
#line 72
    return (2);
  } else
#line 73
  if (max_count > 2) {
#line 75
    return (3);
  } else
#line 73
  if (min_count > 2) {
#line 75
    return (3);
  }
#line 78
  if (max - min <= 40) {
#line 80
    return (3);
  }
#line 83
  if (max - mid <= 40) {
#line 85
    return (2);
  } else
#line 83
  if (mid - min <= 40) {
#line 85
    return (2);
  }
#line 88
  return (1);
}
}
#line 91 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int colorblind_get_num_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int max ;
  int mid ;
  int min ;
  int max_count ;
  int min_count ;

  {
  {
#line 93
  _colorblind_calc_all_values(color, & max, & mid, & min, & max_count, & min_count);
  }
#line 94
  if (max_count == 3) {
#line 95
    return (3);
  } else
#line 96
  if (max - min <= 40) {
#line 97
    return (3);
  } else
#line 98
  if (max - mid <= 40) {
#line 99
    return (2);
  } else {
#line 101
    return (1);
  }
}
}
#line 105 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int _colorblind_x_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color , int x ) 
{ 
  int max ;
  int mid ;
  int min ;
  int max_count ;
  int min_count ;

  {
  {
#line 107
  _colorblind_calc_all_values(color, & max, & mid, & min, & max_count, & min_count);
  }
#line 108
  if (max_count == 3) {
#line 109
    return (1);
  } else
#line 110
  if (max - min <= 40) {
#line 111
    return (1);
  } else
#line 112
  if (max - mid <= 40) {
#line 113
    if (x == max) {
#line 114
      return (1);
    } else
#line 113
    if (x == mid) {
#line 114
      return (1);
    } else {
#line 116
      return (0);
    }
  } else
#line 119
  if (x == max) {
#line 120
    return (1);
  } else {
#line 122
    return (0);
  }
}
}
#line 127 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int colorblind_red_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 128
  tmp = _colorblind_x_is_main(cbr, color, (int )color->red);
  }
#line 128
  return (tmp);
}
}
#line 131 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int colorblind_green_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 132
  tmp = _colorblind_x_is_main(cbr, color, (int )color->green);
  }
#line 132
  return (tmp);
}
}
#line 135 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/utils.c"
int colorblind_blue_is_main(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int tmp ;

  {
  {
#line 136
  tmp = _colorblind_x_is_main(cbr, color, (int )color->blue);
  }
#line 136
  return (tmp);
}
}
#line 16 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/hue_filters.c"
int colorblind_filter_hue_shift_positive(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int a ;

  {
#line 17
  if ((int )color->red == (int )color->green) {
#line 17
    if ((int )color->green == (int )color->blue) {
#line 18
      return (0);
    }
  }
#line 19
  a = (int )color->blue;
#line 20
  color->blue = color->green;
#line 21
  color->green = color->red;
#line 22
  color->red = (unsigned short )a;
#line 23
  return (1);
}
}
#line 26 "/home/june/repo/benchmarks/collector/temp/colorblind-0.0.1/colorblind/hue_filters.c"
int colorblind_filter_hue_shift_negative(COLORBLIND_RUNTIME *cbr , COLORBLIND_XCOLOR *color ) 
{ 
  int a ;

  {
#line 27
  if ((int )color->red == (int )color->green) {
#line 27
    if ((int )color->green == (int )color->blue) {
#line 28
      return (0);
    }
  }
#line 29
  a = (int )color->red;
#line 30
  color->red = color->green;
#line 31
  color->green = color->blue;
#line 32
  color->blue = (unsigned short )a;
#line 33
  return (1);
}
}