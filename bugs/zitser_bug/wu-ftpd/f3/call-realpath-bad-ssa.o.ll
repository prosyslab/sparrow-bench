; ModuleID = 'call-realpath-bad-ssa.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"

@.str = private constant [42 x i8] c"Before my-realpath(): uid = %d, gid = %d\0A\00", align 1 ; <[42 x i8]*> [#uses=1]
@.str1 = private constant [18 x i8] c"strlen(name) =%d\0A\00", align 1 ; <[18 x i8]*> [#uses=1]
@chroot_path = common global [46 x i8] zeroinitializer, align 32 ; <[46 x i8]*> [#uses=1]
@.str2 = private constant [20 x i8] c"Resolved path = %s\0A\00", align 1 ; <[20 x i8]*> [#uses=1]
@.str3 = private constant [41 x i8] c"After my-realpath(): uid = %d, gid = %d\0A\00", align 1 ; <[41 x i8]*> [#uses=1]
@.str4 = private constant [19 x i8] c"argc==2 || argc==3\00", align 1 ; <[19 x i8]*> [#uses=1]
@.str5 = private constant [20 x i8] c"call-realpath-bad.c\00", align 1 ; <[20 x i8]*> [#uses=1]
@__PRETTY_FUNCTION__.2062 = internal constant [5 x i8] c"main\00" ; <[5 x i8]*> [#uses=1]
@.str6 = private constant [2 x i8] c"/\00", align 1 ; <[2 x i8]*> [#uses=1]

define void @call_realpath(i8* %name) nounwind {
entry:
  %path = alloca [47 x i8]                        ; <[47 x i8]*> [#uses=2]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  %0 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([42 x i8]* @.str, i32 0, i32 0), i32 10, i32 100) nounwind ; <i32> [#uses=0]
  %1 = call i32 @strlen(i8* %name) nounwind readonly ; <i32> [#uses=1]
  %2 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 %1) nounwind ; <i32> [#uses=0]
  %path1 = bitcast [47 x i8]* %path to i8*        ; <i8*> [#uses=1]
  %3 = call i32 (...)* @my_realpath(i8* %name, i8* %path1, i8* getelementptr inbounds ([46 x i8]* @chroot_path, i32 0, i32 0)) nounwind ; <i32> [#uses=0]
  %path2 = bitcast [47 x i8]* %path to i8*        ; <i8*> [#uses=1]
  %4 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0), i8* %path2) nounwind ; <i32> [#uses=0]
  %5 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([41 x i8]* @.str3, i32 0, i32 0), i32 10, i32 100) nounwind ; <i32> [#uses=0]
  br label %return

return:                                           ; preds = %entry
  ret void
}

declare i32 @printf(i8* noalias, ...) nounwind

declare i32 @strlen(i8*) nounwind readonly

declare i32 @my_realpath(...)

define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  %0 = icmp ne i32 %argc, 2                       ; <i1> [#uses=1]
  br i1 %0, label %bb, label %bb2

bb:                                               ; preds = %entry
  %1 = icmp ne i32 %argc, 3                       ; <i1> [#uses=1]
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str5, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.2062, i32 0, i32 0)) noreturn nounwind
  unreachable

bb2:                                              ; preds = %bb, %entry
  %2 = icmp eq i32 %argc, 2                       ; <i1> [#uses=1]
  br i1 %2, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds i8** %argv, i32 1   ; <i8**> [#uses=1]
  %4 = load i8** %3, align 1                      ; <i8*> [#uses=1]
  br label %bb5

bb4:                                              ; preds = %bb2
  %5 = getelementptr inbounds i8** %argv, i32 1   ; <i8**> [#uses=1]
  %6 = load i8** %5, align 1                      ; <i8*> [#uses=1]
  %7 = getelementptr inbounds i8** %argv, i32 2   ; <i8**> [#uses=1]
  %8 = load i8** %7, align 1                      ; <i8*> [#uses=1]
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %root_path.0 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), %bb3 ], [ %8, %bb4 ] ; <i8*> [#uses=1]
  %name.0 = phi i8* [ %4, %bb3 ], [ %6, %bb4 ]    ; <i8*> [#uses=1]
  %9 = call i8* @strncpy(i8* noalias getelementptr inbounds ([46 x i8]* @chroot_path, i32 0, i32 0), i8* noalias %root_path.0, i32 46) nounwind ; <i8*> [#uses=0]
  call void @call_realpath(i8* %name.0) nounwind
  br label %return

return:                                           ; preds = %bb5
  ret i32 0
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i8* @strncpy(i8* noalias, i8* noalias, i32) nounwind
