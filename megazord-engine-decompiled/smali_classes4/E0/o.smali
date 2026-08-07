.class public final LE0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE0/o$a;,
        LE0/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,908:1\n63#2,3:909\n125#2:912\n126#2:913\n127#2:914\n128#2:915\n129#2,2:916\n131#2,2:924\n129#2,2:926\n131#2,2:934\n129#2,4:936\n129#2,4:940\n134#2:944\n140#2,2:946\n142#2,2:954\n140#2,2:956\n142#2,2:964\n140#2,2:966\n142#2,2:974\n140#2,2:976\n142#2,2:984\n145#2:986\n617#3,6:918\n617#3,6:928\n622#3:945\n617#3,6:948\n617#3,6:958\n617#3,6:968\n617#3,6:978\n622#3:987\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n*L\n74#1:909,3\n84#1:912\n85#1:913\n86#1:914\n87#1:915\n89#1:916,2\n89#1:924,2\n90#1:926,2\n90#1:934,2\n89#1:936,4\n90#1:940,4\n93#1:944\n107#1:946,2\n107#1:954,2\n108#1:956,2\n108#1:964,2\n107#1:966,2\n107#1:974,2\n108#1:976,2\n108#1:984,2\n111#1:986\n89#1:918,6\n90#1:928,6\n93#1:945\n107#1:948,6\n108#1:958,6\n107#1:968,6\n108#1:978,6\n111#1:987\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,908:1\n63#2,3:909\n125#2:912\n126#2:913\n127#2:914\n128#2:915\n129#2,2:916\n131#2,2:924\n129#2,2:926\n131#2,2:934\n129#2,4:936\n129#2,4:940\n134#2:944\n140#2,2:946\n142#2,2:954\n140#2,2:956\n142#2,2:964\n140#2,2:966\n142#2,2:974\n140#2,2:976\n142#2,2:984\n145#2:986\n617#3,6:918\n617#3,6:928\n622#3:945\n617#3,6:948\n617#3,6:958\n617#3,6:968\n617#3,6:978\n622#3:987\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n*L\n74#1:909,3\n84#1:912\n85#1:913\n86#1:914\n87#1:915\n89#1:916,2\n89#1:924,2\n90#1:926,2\n90#1:934,2\n89#1:936,4\n90#1:940,4\n93#1:944\n107#1:946,2\n107#1:954,2\n108#1:956,2\n108#1:964,2\n107#1:966,2\n107#1:974,2\n108#1:976,2\n108#1:984,2\n111#1:986\n89#1:918,6\n90#1:928,6\n93#1:945\n107#1:948,6\n108#1:958,6\n107#1:968,6\n108#1:978,6\n111#1:987\n*E\n"
    }
.end annotation


# static fields
.field public static final c:LE0/o$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:LE0/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:LE0/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE0/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE0/o$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LE0/o;->c:LE0/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, LE0/o;-><init>(LE0/e;LE0/e;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(LE0/e;LE0/e;)V
    .locals 1
    .param p1    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LE0/o;->a:LE0/e;

    .line 4
    iput-object p2, p0, LE0/o;->b:LE0/e;

    return-void
.end method

.method public synthetic constructor <init>(LE0/e;LE0/e;ILkotlin/jvm/internal/x;)V
    .locals 4

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, LE0/e;

    invoke-direct {p1, v3, v2, v1, v0}, LE0/e;-><init>(FFILkotlin/jvm/internal/x;)V

    :cond_0
    and-int/2addr p3, v1

    if-eqz p3, :cond_1

    .line 6
    new-instance p2, LE0/e;

    const/4 p3, 0x1

    invoke-direct {p2, v2, v3, p3, v0}, LE0/e;-><init>(FFILkotlin/jvm/internal/x;)V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-void
.end method

.method public constructor <init>(LE0/o;)V
    .locals 4
    .param p1    # LE0/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, LE0/o;->a:LE0/e;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, LE0/e;->h(LE0/e;FFILjava/lang/Object;)LE0/e;

    move-result-object v0

    iget-object p1, p1, LE0/o;->b:LE0/e;

    invoke-static {p1, v1, v1, v2, v3}, LE0/e;->h(LE0/e;FFILjava/lang/Object;)LE0/e;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-void
.end method

.method public static synthetic c(LE0/o;FFILjava/lang/Object;)LE0/o;
    .locals 4

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    new-instance p3, LE0/o;

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v0

    new-instance v1, LE0/e;

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v2

    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_1

    move v2, p4

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    sub-float v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_2

    move v0, p4

    goto :goto_1

    :cond_2
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-direct {v1, v2, v0}, LE0/e;-><init>(FF)V

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object p0

    new-instance v0, LE0/e;

    invoke-virtual {p0}, LE0/e;->z()F

    move-result v2

    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v2, p4

    goto :goto_2

    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {p0}, LE0/e;->B()F

    move-result p0

    sub-float v3, p0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_3
    invoke-direct {v0, v2, p4}, LE0/e;-><init>(FF)V

    invoke-direct {p3, v1, v0}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object p3
.end method

.method public static synthetic d(LE0/o;LE0/o;FILjava/lang/Object;)LE0/o;
    .locals 6

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    const-string p3, "m"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, LE0/o;

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v0

    invoke-virtual {p1}, LE0/o;->s()LE0/e;

    move-result-object v1

    new-instance v2, LE0/e;

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v3

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    sub-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_1

    move v3, p4

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_2

    move v0, p4

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-direct {v2, v3, v0}, LE0/e;-><init>(FF)V

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object p0

    invoke-virtual {p1}, LE0/o;->t()LE0/e;

    move-result-object p1

    new-instance v0, LE0/e;

    invoke-virtual {p0}, LE0/e;->z()F

    move-result v1

    invoke-virtual {p1}, LE0/e;->z()F

    move-result v3

    sub-float v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    move v1, p4

    goto :goto_2

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_2
    invoke-virtual {p0}, LE0/e;->B()F

    move-result p0

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    sub-float v3, p0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_3
    invoke-direct {v0, v1, p4}, LE0/e;-><init>(FF)V

    invoke-direct {p3, v2, v0}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object p3
.end method

.method public static synthetic h(LE0/o;LE0/e;LE0/e;ILjava/lang/Object;)LE0/o;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, LE0/o;->a:LE0/e;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, LE0/o;->b:LE0/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, LE0/o;->g(LE0/e;LE0/e;)LE0/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(LE0/o;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object p3

    invoke-virtual {p3}, LE0/e;->z()F

    move-result p4

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    if-gez p4, :cond_1

    invoke-virtual {p3}, LE0/e;->B()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object p0

    invoke-virtual {p0}, LE0/e;->z()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, LE0/e;->B()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic n(LE0/o;LE0/o;FILjava/lang/Object;)Z
    .locals 2

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "m"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object p3

    invoke-virtual {p1}, LE0/o;->s()LE0/e;

    move-result-object p4

    invoke-virtual {p3}, LE0/e;->z()F

    move-result v0

    invoke-virtual {p4}, LE0/e;->z()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    invoke-virtual {p3}, LE0/e;->B()F

    move-result p3

    invoke-virtual {p4}, LE0/e;->B()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object p0

    invoke-virtual {p1}, LE0/o;->t()LE0/e;

    move-result-object p1

    invoke-virtual {p0}, LE0/e;->z()F

    move-result p3

    invoke-virtual {p1}, LE0/e;->z()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, LE0/e;->B()F

    move-result p0

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(ILE0/e;)V
    .locals 1
    .param p2    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LE0/o;->q(I)LE0/e;

    move-result-object p1

    invoke-virtual {p2}, LE0/e;->z()F

    move-result v0

    invoke-virtual {p1, v0}, LE0/e;->S(F)V

    invoke-virtual {p2}, LE0/e;->B()F

    move-result p2

    invoke-virtual {p1, p2}, LE0/e;->U(F)V

    return-void
.end method

.method public final B(LE0/e;)V
    .locals 1
    .param p1    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LE0/o;->a:LE0/e;

    return-void
.end method

.method public final C(LE0/e;)V
    .locals 1
    .param p1    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LE0/o;->b:LE0/e;

    return-void
.end method

.method public final D(LE0/e;)LE0/e;
    .locals 4
    .param p1    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LE0/e;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v1

    invoke-virtual {p1}, LE0/e;->z()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v2}, LE0/e;->z()F

    move-result v2

    invoke-virtual {p1}, LE0/e;->B()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v2}, LE0/e;->B()F

    move-result v2

    invoke-virtual {p1}, LE0/e;->z()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v3}, LE0/e;->B()F

    move-result v3

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, LE0/e;-><init>(FF)V

    return-object v0
.end method

.method public final E(F)LE0/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-direct {v2, v3, v1}, LE0/e;-><init>(FF)V

    iget-object v1, p0, LE0/o;->b:LE0/e;

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-direct {v3, v4, v1}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v2, v3}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final F(LE0/o;)LE0/o;
    .locals 6
    .param p1    # LE0/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LE0/o;

    new-instance v1, LE0/e;

    iget-object v2, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v2}, LE0/e;->z()F

    move-result v2

    iget-object v3, p1, LE0/o;->a:LE0/e;

    invoke-virtual {v3}, LE0/e;->z()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v3}, LE0/e;->z()F

    move-result v3

    iget-object v4, p1, LE0/o;->a:LE0/e;

    invoke-virtual {v4}, LE0/e;->B()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v3}, LE0/e;->B()F

    move-result v3

    iget-object v4, p1, LE0/o;->a:LE0/e;

    invoke-virtual {v4}, LE0/e;->z()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v4}, LE0/e;->B()F

    move-result v4

    iget-object v5, p1, LE0/o;->a:LE0/e;

    invoke-virtual {v5}, LE0/e;->B()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, LE0/e;-><init>(FF)V

    new-instance v2, LE0/e;

    iget-object v3, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v3}, LE0/e;->z()F

    move-result v3

    iget-object v4, p1, LE0/o;->b:LE0/e;

    invoke-virtual {v4}, LE0/e;->z()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v4}, LE0/e;->z()F

    move-result v4

    iget-object v5, p1, LE0/o;->b:LE0/e;

    invoke-virtual {v5}, LE0/e;->B()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v4}, LE0/e;->B()F

    move-result v4

    iget-object v5, p1, LE0/o;->b:LE0/e;

    invoke-virtual {v5}, LE0/e;->z()F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v5}, LE0/e;->B()F

    move-result v5

    iget-object p1, p1, LE0/o;->b:LE0/e;

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v1, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final G()[F
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v0

    iget-object v1, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v1

    iget-object v2, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v2}, LE0/e;->B()F

    move-result v2

    iget-object v3, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v3}, LE0/e;->B()F

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public final H()LE0/o;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v1}, LE0/e;->Z()LE0/e;

    move-result-object v1

    iget-object v2, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v2}, LE0/e;->Z()LE0/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final a(FF)LE0/o;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v1

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    sub-float v4, v3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float v4, v1, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-direct {v2, v3, v1}, LE0/e;-><init>(FF)V

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object v1

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    sub-float v6, v4, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    int-to-float v4, v4

    :goto_2
    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float v6, v1, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float p2, v6, p2

    if-gez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v5, p1

    :goto_3
    invoke-direct {v3, v4, v5}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v2, v3}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final b(LE0/o;F)LE0/o;
    .locals 8
    .param p1    # LE0/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LE0/o;

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v1

    invoke-virtual {p1}, LE0/o;->s()LE0/e;

    move-result-object v2

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    invoke-virtual {v2}, LE0/e;->z()F

    move-result v5

    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, p2

    const/4 v7, 0x0

    if-gez v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    int-to-float v4, v4

    :goto_0
    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    invoke-virtual {v2}, LE0/e;->B()F

    move-result v2

    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-direct {v3, v4, v1}, LE0/e;-><init>(FF)V

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object v1

    invoke-virtual {p1}, LE0/o;->t()LE0/e;

    move-result-object p1

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    invoke-virtual {p1}, LE0/e;->z()F

    move-result v5

    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    int-to-float v4, v4

    :goto_2
    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    sub-float v5, v1, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float p2, v5, p2

    if-gez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v7, p1

    :goto_3
    invoke-direct {v2, v4, v7}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v3, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final e()LE0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->a:LE0/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE0/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    iget-object v3, p1, LE0/o;->a:LE0/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LE0/o;->b:LE0/e;

    iget-object p1, p1, LE0/o;->b:LE0/e;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()LE0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->b:LE0/e;

    return-object v0
.end method

.method public final g(LE0/e;LE0/e;)LE0/o;
    .locals 1
    .param p1    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LE0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LE0/o;

    invoke-direct {v0, p1, p2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v0}, LE0/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v1}, LE0/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()LE0/o;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v1}, LE0/e;->i()LE0/e;

    move-result-object v2

    iput-object v2, p0, LE0/o;->a:LE0/e;

    iget-object v2, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v2}, LE0/e;->i()LE0/e;

    move-result-object v3

    iput-object v3, p0, LE0/o;->b:LE0/e;

    invoke-direct {v0, v1, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final j(F)LE0/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    div-float/2addr v1, p1

    invoke-direct {v2, v3, v1}, LE0/e;-><init>(FF)V

    iget-object v1, p0, LE0/o;->b:LE0/e;

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    div-float/2addr v4, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    div-float/2addr v1, p1

    invoke-direct {v3, v4, v1}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v2, v3}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final k(FF)Z
    .locals 2

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v0

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object v0

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l(LE0/o;F)Z
    .locals 4
    .param p1    # LE0/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LE0/o;->s()LE0/e;

    move-result-object v0

    invoke-virtual {p1}, LE0/o;->s()LE0/e;

    move-result-object v1

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v2

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, LE0/o;->t()LE0/e;

    move-result-object v0

    invoke-virtual {p1}, LE0/o;->t()LE0/e;

    move-result-object p1

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v1

    invoke-virtual {p1}, LE0/e;->z()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    invoke-virtual {v0}, LE0/e;->B()F

    move-result v0

    invoke-virtual {p1}, LE0/e;->B()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(II)F
    .locals 0

    invoke-virtual {p0, p1}, LE0/o;->q(I)LE0/e;

    move-result-object p1

    invoke-virtual {p1, p2}, LE0/e;->p(I)F

    move-result p1

    return p1
.end method

.method public final p(LE0/r;I)F
    .locals 1
    .param p1    # LE0/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LE0/o;->r(LE0/r;)LE0/e;

    move-result-object p1

    invoke-virtual {p1, p2}, LE0/e;->p(I)F

    move-result p1

    return p1
.end method

.method public final q(I)LE0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LE0/o;->b:LE0/e;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "column must be in 0..1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, LE0/o;->a:LE0/e;

    :goto_0
    return-object p1
.end method

.method public final r(LE0/r;)LE0/e;
    .locals 1
    .param p1    # LE0/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LE0/o$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LE0/o;->b:LE0/e;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "column must be X or Y"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, LE0/o;->a:LE0/e;

    :goto_0
    return-object p1
.end method

.method public final s()LE0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->a:LE0/e;

    return-object v0
.end method

.method public final t()LE0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->b:LE0/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v0}, LE0/e;->z()F

    move-result v0

    iget-object v1, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v1

    iget-object v2, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v2}, LE0/e;->B()F

    move-result v2

    iget-object v3, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v3}, LE0/e;->B()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n            |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|\n            |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "|\n            "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsg/D;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()LE0/o;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    invoke-virtual {v1}, LE0/e;->C()LE0/e;

    move-result-object v2

    iput-object v2, p0, LE0/o;->a:LE0/e;

    iget-object v2, p0, LE0/o;->b:LE0/e;

    invoke-virtual {v2}, LE0/e;->C()LE0/e;

    move-result-object v3

    iput-object v3, p0, LE0/o;->b:LE0/e;

    invoke-direct {v0, v1, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final v(II)F
    .locals 0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, LE0/o;->q(I)LE0/e;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, LE0/e;->p(I)F

    move-result p1

    return p1
.end method

.method public final w(IIF)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2, p1, p3}, LE0/o;->z(IIF)V

    return-void
.end method

.method public final x(F)LE0/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-direct {v2, v3, v1}, LE0/e;-><init>(FF)V

    iget-object v1, p0, LE0/o;->b:LE0/e;

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-direct {v3, v4, v1}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v2, v3}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final y(F)LE0/o;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    iget-object v1, p0, LE0/o;->a:LE0/e;

    new-instance v2, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    add-float/2addr v1, p1

    invoke-direct {v2, v3, v1}, LE0/e;-><init>(FF)V

    iget-object v1, p0, LE0/o;->b:LE0/e;

    new-instance v3, LE0/e;

    invoke-virtual {v1}, LE0/e;->z()F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {v1}, LE0/e;->B()F

    move-result v1

    add-float/2addr v1, p1

    invoke-direct {v3, v4, v1}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v2, v3}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final z(IIF)V
    .locals 0

    invoke-virtual {p0, p1}, LE0/o;->q(I)LE0/e;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, LE0/e;->I(IF)V

    return-void
.end method
