.class public final LBg/P;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LBg/O$a;JJ)LBg/O;
    .locals 0
    .param p0    # LBg/O$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, LBg/T;

    invoke-static {p1, p2}, Lkotlin/time/h;->A(J)J

    move-result-wide p1

    invoke-static {p3, p4}, Lkotlin/time/h;->A(J)J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, LBg/T;-><init>(JJ)V

    return-object p0
.end method

.method public static synthetic b(LBg/O$a;JJILjava/lang/Object;)LBg/O;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p1}, Lkotlin/time/h$a;->W()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    sget-object p3, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p3}, Lkotlin/time/h$a;->o()J

    move-result-wide p3

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, LBg/P;->a(LBg/O$a;JJ)LBg/O;

    move-result-object p0

    return-object p0
.end method
