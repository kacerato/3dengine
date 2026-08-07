.class public final synthetic LBg/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,332:1\n272#1,3:334\n272#1,3:337\n261#1:340\n263#1:342\n272#1,3:343\n261#1:346\n263#1:348\n272#1,3:349\n261#1:352\n263#1:354\n272#1,3:355\n107#2:333\n107#2:341\n107#2:347\n107#2:353\n107#2:358\n107#2:359\n107#2:362\n37#3,2:360\n37#3,2:363\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n75#1:334,3\n103#1:337,3\n119#1:340\n119#1:342\n138#1:343,3\n156#1:346\n156#1:348\n177#1:349,3\n197#1:352\n197#1:354\n220#1:355,3\n32#1:333\n119#1:341\n156#1:347\n197#1:353\n237#1:358\n261#1:359\n288#1:362\n287#1:360,2\n306#1:363,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,332:1\n272#1,3:334\n272#1,3:337\n261#1:340\n263#1:342\n272#1,3:343\n261#1:346\n263#1:348\n272#1,3:349\n261#1:352\n263#1:354\n272#1,3:355\n107#2:333\n107#2:341\n107#2:347\n107#2:353\n107#2:358\n107#2:359\n107#2:362\n37#3,2:360\n37#3,2:363\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n75#1:334,3\n103#1:337,3\n119#1:340\n119#1:342\n138#1:343,3\n156#1:346\n156#1:348\n177#1:349,3\n197#1:352\n197#1:354\n220#1:355,3\n32#1:333\n119#1:341\n156#1:347\n197#1:353\n237#1:358\n261#1:359\n288#1:362\n287#1:360,2\n306#1:363,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a()Leg/a;
    .locals 1

    invoke-static {}, LBg/B;->r()Leg/a;

    move-result-object v0

    return-object v0
.end method

.method public static final b(LBg/i;LBg/i;LBg/i;LBg/i;LBg/i;Leg/t;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Leg/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "LBg/i<",
            "+TT4;>;",
            "LBg/i<",
            "+TT5;>;",
            "Leg/t<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    new-instance p0, LBg/B$c;

    invoke-direct {p0, v0, p5}, LBg/B$c;-><init>([LBg/i;Leg/t;)V

    return-object p0
.end method

.method public static final c(LBg/i;LBg/i;LBg/i;LBg/i;Leg/s;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "LBg/i<",
            "+TT4;>;",
            "Leg/s<",
            "-TT1;-TT2;-TT3;-TT4;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    new-instance p0, LBg/B$b;

    invoke-direct {p0, v0, p4}, LBg/B$b;-><init>([LBg/i;Leg/s;)V

    return-object p0
.end method

.method public static final d(LBg/i;LBg/i;LBg/i;Leg/r;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/r;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "Leg/r<",
            "-TT1;-TT2;-TT3;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    new-instance p0, LBg/B$a;

    invoke-direct {p0, v0, p3}, LBg/B$a;-><init>([LBg/i;Leg/r;)V

    return-object p0
.end method

.method public static final e(LBg/i;LBg/i;Leg/q;)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, LBg/k;->K0(LBg/i;LBg/i;Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Ljava/lang/Iterable;Leg/p;)LBg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBg/i<",
            "+TT;>;>;",
            "Leg/p<",
            "-[TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0}, LHf/S;->a6(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [LBg/i;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LBg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$f;

    invoke-direct {v0, p0, p1}, LBg/B$f;-><init>([LBg/i;Leg/p;)V

    return-object v0
.end method

.method public static final synthetic g([LBg/i;Leg/p;)LBg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-[TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$e;

    invoke-direct {v0, p0, p1}, LBg/B$e;-><init>([LBg/i;Leg/p;)V

    return-object v0
.end method

.method public static final h(LBg/i;LBg/i;LBg/i;LBg/i;LBg/i;Leg/u;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Leg/u;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "LBg/i<",
            "+TT4;>;",
            "LBg/i<",
            "+TT5;>;",
            "Leg/u<",
            "-",
            "LBg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-TT4;-TT5;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    new-instance p0, LBg/B$p;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p5}, LBg/B$p;-><init>([LBg/i;LQf/f;Leg/u;)V

    invoke-static {p0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LBg/i;LBg/i;LBg/i;LBg/i;Leg/t;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/t;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "LBg/i<",
            "+TT4;>;",
            "Leg/t<",
            "-",
            "LBg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-TT4;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    new-instance p0, LBg/B$o;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p4}, LBg/B$o;-><init>([LBg/i;LQf/f;Leg/t;)V

    invoke-static {p0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final j(LBg/i;LBg/i;LBg/i;Leg/s;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/s;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "LBg/i<",
            "+TT3;>;",
            "Leg/s<",
            "-",
            "LBg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    new-instance p0, LBg/B$n;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p3}, LBg/B$n;-><init>([LBg/i;LQf/f;Leg/s;)V

    invoke-static {p0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final k(LBg/i;LBg/i;Leg/r;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/r;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "Leg/r<",
            "-",
            "LBg/j<",
            "-TR;>;-TT1;-TT2;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, LBg/B$m;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, LBg/B$m;-><init>([LBg/i;LQf/f;Leg/r;)V

    invoke-static {p0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Ljava/lang/Iterable;Leg/q;)LBg/i;
    .locals 2
    .param p1    # Leg/q;
        .annotation build LFf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBg/i<",
            "+TT;>;>;",
            "Leg/q<",
            "-",
            "LBg/j<",
            "-TR;>;-[TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0}, LHf/S;->a6(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [LBg/i;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LBg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LBg/B$r;-><init>([LBg/i;Leg/q;LQf/f;)V

    invoke-static {v0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m([LBg/i;Leg/q;)LBg/i;
    .locals 2
    .param p1    # Leg/q;
        .annotation build LFf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "LBg/j<",
            "-TR;>;-[TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LBg/B$q;-><init>([LBg/i;Leg/q;LQf/f;)V

    invoke-static {v0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n([LBg/i;Leg/q;)LBg/i;
    .locals 2
    .param p1    # Leg/q;
        .annotation build LFf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "LBg/j<",
            "-TR;>;-[TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LBg/B$s;-><init>([LBg/i;Leg/q;LQf/f;)V

    invoke-static {v0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o([LBg/i;Leg/p;)LBg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-[TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, LBg/B$t;

    invoke-direct {v0, p0, p1}, LBg/B$t;-><init>([LBg/i;Leg/p;)V

    return-object v0
.end method

.method public static final p(LBg/i;LBg/i;Leg/q;)LBg/i;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "flowCombine"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/B$d;

    invoke-direct {v0, p0, p1, p2}, LBg/B$d;-><init>(LBg/i;LBg/i;Leg/q;)V

    return-object v0
.end method

.method public static final q(LBg/i;LBg/i;Leg/r;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/r;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "Leg/r<",
            "-",
            "LBg/j<",
            "-TR;>;-TT1;-TT2;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "flowCombineTransform"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [LBg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, LBg/B$l;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, LBg/B$l;-><init>([LBg/i;LQf/f;Leg/r;)V

    invoke-static {p0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final r()Leg/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Leg/a<",
            "[TT;>;"
        }
    .end annotation

    sget-object v0, LBg/B$v;->b:LBg/B$v;

    return-object v0
.end method

.method public static final s(LBg/i;LBg/i;Leg/q;)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT1;>;",
            "LBg/i<",
            "+TT2;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, LCg/k;->b(LBg/i;LBg/i;Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method
