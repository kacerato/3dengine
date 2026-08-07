.class public Lng/u;
.super Lng/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1573:1\n1#2:1574\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1573:1\n1#2:1574\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lng/t;-><init>()V

    return-void
.end method

.method public static final A(BB)B
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final A0(Lng/m;)J
    .locals 3
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/m;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final A1(Lng/r;I)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Short;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->R1(I)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final B(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final B0(Lng/a;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/a;->c()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final B1(Lng/r;J)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Short;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->S1(J)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final C(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final C0(Lng/j;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/j;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final C1(Lng/a;I)Lng/a;
    .locals 3
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lng/t;->a(ZLjava/lang/Number;)V

    sget-object v0, Lng/a;->e:Lng/a$a;

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v1

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v2

    invoke-virtual {p0}, Lng/a;->g()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lng/a$a;->a(CCI)Lng/a;

    move-result-object p0

    return-object p0
.end method

.method public static D(II)I
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final D0(Lng/m;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/m;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static D1(Lng/j;I)Lng/j;
    .locals 3
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lng/t;->a(ZLjava/lang/Number;)V

    sget-object v0, Lng/j;->e:Lng/j$a;

    invoke-virtual {p0}, Lng/j;->c()I

    move-result v1

    invoke-virtual {p0}, Lng/j;->d()I

    move-result v2

    invoke-virtual {p0}, Lng/j;->g()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static E(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final synthetic E0(Lng/g;B)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final E1(Lng/m;J)Lng/m;
    .locals 11
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lng/t;->a(ZLjava/lang/Number;)V

    sget-object v4, Lng/m;->e:Lng/m$a;

    invoke-virtual {p0}, Lng/m;->c()J

    move-result-wide v5

    invoke-virtual {p0}, Lng/m;->d()J

    move-result-wide v7

    invoke-virtual {p0}, Lng/m;->g()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    :goto_1
    move-wide v9, p1

    goto :goto_2

    :cond_1
    neg-long p1, p1

    goto :goto_1

    :goto_2
    invoke-virtual/range {v4 .. v10}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final F(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maximumValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static final F0(Lng/g;D)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Float;",
            ">;D)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final F1(D)Ljava/lang/Byte;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3fa0000000000000L    # -128.0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x405fc00000000000L    # 127.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final G(SS)S
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final synthetic G0(Lng/g;I)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final G1(F)Ljava/lang/Byte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x3d000000    # -128.0f

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x42fe0000    # 127.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final H(BBB)B
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic H0(Lng/g;J)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final H1(I)Ljava/lang/Byte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, -0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final I(DDD)D
    .locals 1

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic I0(Lng/g;S)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final I1(J)Ljava/lang/Byte;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, -0x80

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final J(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final J0(Lng/g;B)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Integer;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final J1(S)Ljava/lang/Byte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, -0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static K(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic K0(Lng/g;D)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->K1(D)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final K1(D)Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final L(ILng/g;)I
    .locals 2
    .param p1    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lng/g<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lng/f;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Lng/f;

    invoke-static {p0, p1}, Lng/u;->P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lng/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le p0, v0, :cond_2

    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :cond_2
    :goto_0
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic L0(Lng/g;F)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->L1(F)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final L1(F)Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x31000000

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x4f000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static M(JJJ)J
    .locals 1

    cmp-long v0, p2, p4

    if-gtz v0, :cond_2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final M0(Lng/g;J)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->M1(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final M1(J)Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/32 v0, -0x80000000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x80000000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static N(JLng/g;)J
    .locals 2
    .param p2    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lng/g<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lng/f;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lng/f;

    invoke-static {p0, p2}, Lng/u;->P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-interface {p2}, Lng/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    invoke-interface {p2}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :cond_2
    :goto_0
    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final N0(Lng/g;S)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Integer;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final N1(D)Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final O(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    return-object p2

    :cond_4
    return-object p0
.end method

.method public static final O0(Lng/r;B)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Integer;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final O1(F)Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x21000000

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x5f000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lng/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;",
            "Lng/f<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lng/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lng/f;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lng/f;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lng/f;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lng/f;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final P0(Lng/r;J)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->M1(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final P1(D)Ljava/lang/Short;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3f20000000000000L    # -32768.0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x40dfffc000000000L    # 32767.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final Q(Ljava/lang/Comparable;Lng/g;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;",
            "Lng/g<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lng/f;

    if-eqz v0, :cond_0

    check-cast p1, Lng/f;

    invoke-static {p0, p1}, Lng/u;->P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lng/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final Q0(Lng/r;S)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Integer;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final Q1(F)Ljava/lang/Short;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x39000000    # -32768.0f

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const v0, 0x46fffe00    # 32767.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final R(SSS)S
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final R0(Lng/a;)C
    .locals 3
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final R1(I)Ljava/lang/Short;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, -0x8000

    if-gt v0, p0, :cond_0

    const v0, 0x8000

    if-ge p0, v0, :cond_0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final S(Lng/c;Ljava/lang/Character;)Z
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lng/c;->j(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final S0(Lng/j;)I
    .locals 3
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/j;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/j;->d()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final S1(J)Ljava/lang/Short;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, -0x8000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final T(Lng/l;B)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lng/u;->J0(Lng/g;B)Z

    move-result p0

    return p0
.end method

.method public static final T0(Lng/m;)J
    .locals 3
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/m;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final T1(CC)Lng/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/c;->f:Lng/c$a;

    invoke-virtual {p0}, Lng/c$a;->a()Lng/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/c;

    add-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    invoke-direct {v0, p0, p1}, Lng/c;-><init>(CC)V

    return-object v0
.end method

.method public static final U(Lng/l;J)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lng/u;->M0(Lng/g;J)Z

    move-result p0

    return p0
.end method

.method public static final U0(Lng/a;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/a;->d()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final U1(BB)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final V(Lng/l;Ljava/lang/Integer;)Z
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/l;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final V0(Lng/j;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/j;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final V1(BI)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lng/l;->f:Lng/l$a;

    invoke-virtual {p0}, Lng/l$a;->a()Lng/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final W(Lng/l;S)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lng/u;->N0(Lng/g;S)Z

    move-result p0

    return p0
.end method

.method public static final W0(Lng/m;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/m;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final W1(BS)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final X(Lng/o;B)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lng/u;->X0(Lng/g;B)Z

    move-result p0

    return p0
.end method

.method public static final X0(Lng/g;B)Z
    .locals 2
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Long;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final X1(IB)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final Y(Lng/o;I)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lng/u;->a1(Lng/g;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic Y0(Lng/g;D)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->N1(D)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Y1(II)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lng/l;->f:Lng/l$a;

    invoke-virtual {p0}, Lng/l$a;->a()Lng/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final Z(Lng/o;Ljava/lang/Long;)Z
    .locals 2
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/o;->j(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic Z0(Lng/g;F)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->O1(F)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final Z1(IS)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final a0(Lng/o;S)Z
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lng/u;->b1(Lng/g;S)Z

    move-result p0

    return p0
.end method

.method public static final a1(Lng/g;I)Z
    .locals 2
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final a2(SB)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final synthetic b0(Lng/g;B)Z
    .locals 2
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final b1(Lng/g;S)Z
    .locals 2
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Long;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final b2(SI)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lng/l;->f:Lng/l$a;

    invoke-virtual {p0}, Lng/l$a;->a()Lng/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final c0(Lng/g;F)Z
    .locals 2
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Double;",
            ">;F)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final c1(Lng/r;B)Z
    .locals 2
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Long;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final c2(SS)Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/l;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lng/l;-><init>(II)V

    return-object v0
.end method

.method public static final synthetic d0(Lng/g;I)Z
    .locals 2
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final d1(Lng/r;I)Z
    .locals 2
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final d2(BJ)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/o;->f:Lng/o$a;

    invoke-virtual {p0}, Lng/o$a;->a()Lng/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/o;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final synthetic e0(Lng/g;J)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final e1(Lng/r;S)Z
    .locals 2
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Long;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final e2(IJ)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/o;->f:Lng/o$a;

    invoke-virtual {p0}, Lng/o$a;->a()Lng/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/o;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final synthetic f0(Lng/g;S)Z
    .locals 2
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final f1(Lng/c;)C
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->g1(Lng/c;Llg/f;)C

    move-result p0

    return p0
.end method

.method public static final f2(JB)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/o;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final g0(Lng/r;F)Z
    .locals 2
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Double;",
            ">;F)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final g1(Lng/c;Llg/f;)C
    .locals 1
    .param p0    # Lng/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Llg/f;->n(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final g2(JI)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/o;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final h0(CC)Lng/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/a;->e:Lng/a$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/a$a;->a(CCI)Lng/a;

    move-result-object p0

    return-object p0
.end method

.method public static final h1(Lng/l;)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->i1(Lng/l;Llg/f;)I

    move-result p0

    return p0
.end method

.method public static final h2(JJ)Lng/o;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/o;->f:Lng/o$a;

    invoke-virtual {p0}, Lng/o$a;->a()Lng/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/o;

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    invoke-direct {v0, p0, p1, p2, p3}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final i0(BB)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final i1(Lng/l;Llg/f;)I
    .locals 1
    .param p0    # Lng/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Llg/g;->h(Llg/f;Lng/l;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final i2(JS)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/o;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final j0(BI)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final j1(Lng/o;)J
    .locals 2
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->k1(Lng/o;Llg/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final j2(SJ)Lng/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/o;->f:Lng/o$a;

    invoke-virtual {p0}, Lng/o$a;->a()Lng/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/o;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lng/o;-><init>(JJ)V

    return-object v0
.end method

.method public static final k0(BS)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final k1(Lng/o;Llg/f;)J
    .locals 1
    .param p0    # Lng/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Llg/g;->i(Llg/f;Lng/o;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic l(Lng/g;D)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->F1(D)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final l0(IB)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final l1(Lng/c;)Ljava/lang/Character;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->m1(Lng/c;Llg/f;)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lng/g;F)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->G1(F)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m0(II)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final m1(Lng/c;Llg/f;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lng/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Llg/f;->n(II)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lng/g;I)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->H1(I)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final n0(IS)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final n1(Lng/l;)Ljava/lang/Integer;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->o1(Lng/l;Llg/f;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lng/g;J)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Byte;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->I1(J)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o0(SB)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final o1(Lng/l;Llg/f;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lng/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Llg/g;->h(Llg/f;Lng/l;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lng/g;S)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Byte;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->J1(S)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final p0(SI)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final p1(Lng/o;)Ljava/lang/Long;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/u;->q1(Lng/o;Llg/f;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lng/r;I)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->H1(I)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final q0(SS)Lng/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/j;->e:Lng/j$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final q1(Lng/o;Llg/f;)Ljava/lang/Long;
    .locals 1
    .param p0    # Lng/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Llg/g;->i(Llg/f;Lng/o;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lng/r;J)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Byte;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->I1(J)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final r0(BJ)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final r1(Lng/a;)Lng/a;
    .locals 3
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lng/a;->e:Lng/a$a;

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v1

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v2

    invoke-virtual {p0}, Lng/a;->g()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lng/a$a;->a(CCI)Lng/a;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lng/r;S)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Byte;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->J1(S)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final s0(IJ)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final s1(Lng/j;)Lng/j;
    .locals 3
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lng/j;->e:Lng/j$a;

    invoke-virtual {p0}, Lng/j;->d()I

    move-result v1

    invoke-virtual {p0}, Lng/j;->c()I

    move-result v2

    invoke-virtual {p0}, Lng/j;->g()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lng/j$a;->a(III)Lng/j;

    move-result-object p0

    return-object p0
.end method

.method public static final t(BB)B
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final t0(JB)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final t1(Lng/m;)Lng/m;
    .locals 8
    .param p0    # Lng/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lng/m;->e:Lng/m$a;

    invoke-virtual {p0}, Lng/m;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lng/m;->c()J

    move-result-wide v4

    invoke-virtual {p0}, Lng/m;->g()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual/range {v1 .. v7}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final u(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final u0(JI)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final u1(Lng/g;B)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Short;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final v(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final v0(JJ)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    const-wide/16 v5, -0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v1(Lng/g;D)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->P1(D)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final w0(JS)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w1(Lng/g;F)Z
    .locals 1
    .annotation runtime LFf/o;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime LFf/p;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->Q1(F)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final x0(SJ)Lng/m;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/m;->e:Lng/m$a;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lng/m$a;->a(JJJ)Lng/m;

    move-result-object p0

    return-object p0
.end method

.method public static final x1(Lng/g;I)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Short;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lng/u;->R1(I)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final y(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimumValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static final y0(Lng/a;)C
    .locals 3
    .param p0    # Lng/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/a;->c()C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final y1(Lng/g;J)Z
    .locals 1
    .param p0    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/g<",
            "Ljava/lang/Short;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lng/u;->S1(J)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lng/g;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final z(SS)S
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final z0(Lng/j;)I
    .locals 3
    .param p0    # Lng/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/j;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/j;->c()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final z1(Lng/r;B)Z
    .locals 1
    .param p0    # Lng/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lng/r<",
            "Ljava/lang/Short;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Lng/r;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method
