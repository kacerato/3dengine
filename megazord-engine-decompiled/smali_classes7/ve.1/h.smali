.class public Lve/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/i;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/h$b;,
        Lve/h$c;
    }
.end annotation


# instance fields
.field public b:S

.field public c:I

.field public d:Lve/h$c;

.field public e:Lve/h$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lve/h;->d:Lve/h$c;

    .line 3
    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    return-void
.end method

.method public constructor <init>(Lte/i;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lve/h;->d:Lve/h$c;

    .line 10
    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    .line 11
    invoke-interface {p1}, Lte/i;->i()S

    move-result v0

    iput-short v0, p0, Lve/h;->b:S

    .line 12
    invoke-interface {p1}, Lke/i;->iterator()Lre/s0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, Lre/s0;->next()S

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lve/h;->d1(S)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lve/h;->d:Lve/h$c;

    .line 6
    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    .line 7
    iput-short p1, p0, Lve/h;->b:S

    return-void
.end method

.method public static synthetic a(Lve/h;Lve/h$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lve/h;->k(Lve/h$c;)V

    return-void
.end method

.method public static b(Lve/h$c;II)Lve/h$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lve/h;->c(Lve/h$c;IIZ)Lve/h$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lve/h$c;IIZ)Lve/h$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    add-int/2addr p1, v0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lve/h$c;->a()Lve/h$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lve/h$c;->b()Lve/h$c;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h([SII)Lve/h;
    .locals 3

    new-instance v0, Lve/h;

    invoke-direct {v0}, Lve/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-short v2, p0, v2

    invoke-virtual {v0, v2}, Lve/h;->d1(S)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public C8(IS)I
    .locals 3

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v2

    invoke-static {v2}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    if-ne v2, p2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public D7(S)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lve/h;->w9(IS)I

    move-result p1

    return p1
.end method

.method public F0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lve/h;->e(I)Lve/h$c;

    move-result-object p2

    invoke-virtual {p1}, Lve/h$c;->b()Lve/h$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v2

    invoke-virtual {v1}, Lve/h$c;->b()Lve/h$c;

    move-result-object v3

    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lve/h$c;->d(Lve/h$c;)V

    invoke-virtual {v1, v2}, Lve/h$c;->e(Lve/h$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lve/h$c;->d(Lve/h$c;)V

    invoke-virtual {p2, v0}, Lve/h$c;->e(Lve/h$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lve/h$c;->d(Lve/h$c;)V

    invoke-virtual {p2, p1}, Lve/h$c;->e(Lve/h$c;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from > to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F3(S)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/h;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lve/h;->S8(IIS)V

    return-void
.end method

.method public F6([SII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-short v1, p1, v1

    invoke-virtual {p0, v1}, Lve/h;->d1(S)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Fb(IS)V
    .locals 1

    new-instance v0, Lve/h;

    invoke-direct {v0}, Lve/h;-><init>()V

    invoke-virtual {v0, p2}, Lve/h;->d1(S)Z

    invoke-virtual {p0, p1, v0}, Lve/h;->g(ILve/h;)V

    return-void
.end method

.method public G0(Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lve/h;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lve/h;->k(Lve/h$c;)V

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v1

    invoke-virtual {p0, v1}, Lve/h;->d1(S)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K0([S)[S
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/h;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lve/h;->r7([SII)[S

    move-result-object p1

    return-object p1
.end method

.method public L5(S)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lve/h;->t7(SII)I

    move-result p1

    return p1
.end method

.method public Ld(IS)S
    .locals 0

    invoke-virtual {p0, p1, p2}, Lve/h;->v7(IS)S

    move-result p1

    return p1
.end method

.method public S8(IIS)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    iget v1, p0, Lve/h;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lve/h;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3}, Lve/h$c;->f(S)V

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3}, Lve/h;->d1(S)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3}, Lve/h$c;->f(S)V

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U0(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    invoke-interface {p1, v1}, Lze/t0;->a(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public V0(S)Z
    .locals 3

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public Wa(I[S)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lve/h;->o3(I[SII)V

    return-void
.end method

.method public Ya([SIII)[S
    .locals 3

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lve/h;->e(I)Lve/h$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lve/h$c;->c()S

    move-result v2

    aput-short v2, p1, v1

    invoke-virtual {p2}, Lve/h$c;->a()Lve/h$c;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lve/h;->d1(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public cc(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lve/h;->e:Lve/h$c;

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    invoke-interface {p1, v1}, Lze/t0;->a(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lve/h$c;->b()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lve/h;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lve/h;->d:Lve/h$c;

    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Short;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lve/h;->V0(S)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d(S)Z
    .locals 3

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lve/h;->k(Lve/h$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public d1(S)Z
    .locals 1

    new-instance v0, Lve/h$c;

    invoke-direct {v0, p1}, Lve/h$c;-><init>(S)V

    iget-object p1, p0, Lve/h;->d:Lve/h$c;

    invoke-static {p1}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lve/h;->d:Lve/h$c;

    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lve/h;->e:Lve/h$c;

    invoke-virtual {v0, p1}, Lve/h$c;->e(Lve/h$c;)V

    iget-object p1, p0, Lve/h;->e:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->d(Lve/h$c;)V

    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    :goto_0
    iget p1, p0, Lve/h;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lve/h;->c:I

    return v0
.end method

.method public d2([S)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v3, p1, v1

    invoke-virtual {p0, v3}, Lve/h;->d1(S)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public dc(I[SII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lve/h;->h([SII)Lve/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve/h;->g(ILve/h;)V

    return-void
.end method

.method public e(I)Lve/h$c;
    .locals 4

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lve/h;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    invoke-static {v0, v2, p1, v1}, Lve/h;->c(Lve/h$c;IIZ)Lve/h$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lve/h;->e:Lve/h$c;

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lve/h;->c(Lve/h$c;IIZ)Lve/h$c;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lve/h;

    iget-short v2, p0, Lve/h;->b:S

    iget-short v3, p1, Lve/h;->b:S

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lve/h;->c:I

    iget v3, p1, Lve/h;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v2

    invoke-virtual {p1}, Lve/h;->iterator()Lre/s0;

    move-result-object p1

    :cond_4
    invoke-interface {v2}, Lre/V;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    invoke-interface {v2}, Lre/s0;->next()S

    move-result v3

    invoke-interface {p1}, Lre/s0;->next()S

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public f2(Lke/i;)Z
    .locals 2

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lke/i;->iterator()Lre/s0;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lre/s0;->next()S

    move-result v0

    invoke-virtual {p0, v0}, Lve/h;->V0(S)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public fe(I[S)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lve/h;->h([SII)Lve/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve/h;->g(ILve/h;)V

    return-void
.end method

.method public g(ILve/h;)V
    .locals 3

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object p1

    iget v0, p0, Lve/h;->c:I

    iget v1, p2, Lve/h;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lve/h;->c:I

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lve/h;->e:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->d(Lve/h$c;)V

    iget-object p1, p0, Lve/h;->d:Lve/h$c;

    iget-object v0, p2, Lve/h;->e:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->e(Lve/h$c;)V

    iget-object p1, p2, Lve/h;->d:Lve/h$c;

    iput-object p1, p0, Lve/h;->d:Lve/h$c;

    return-void

    :cond_0
    invoke-static {p1}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lve/h;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lve/h;->d:Lve/h$c;

    iput-object p1, p0, Lve/h;->d:Lve/h$c;

    iget-object p1, p2, Lve/h;->e:Lve/h$c;

    iput-object p1, p0, Lve/h;->e:Lve/h$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lve/h;->e:Lve/h$c;

    iget-object v0, p2, Lve/h;->d:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->d(Lve/h$c;)V

    iget-object p1, p2, Lve/h;->d:Lve/h$c;

    iget-object v0, p0, Lve/h;->e:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->e(Lve/h$c;)V

    iget-object p1, p2, Lve/h;->e:Lve/h$c;

    iput-object p1, p0, Lve/h;->e:Lve/h$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lve/h$c;->b()Lve/h$c;

    move-result-object v0

    invoke-virtual {p1}, Lve/h$c;->b()Lve/h$c;

    move-result-object v1

    iget-object v2, p2, Lve/h;->d:Lve/h$c;

    invoke-virtual {v1, v2}, Lve/h$c;->d(Lve/h$c;)V

    iget-object v1, p2, Lve/h;->e:Lve/h$c;

    invoke-virtual {v1, p1}, Lve/h$c;->d(Lve/h$c;)V

    iget-object v1, p2, Lve/h;->e:Lve/h$c;

    invoke-virtual {p1, v1}, Lve/h$c;->e(Lve/h$c;)V

    iget-object p1, p2, Lve/h;->d:Lve/h$c;

    invoke-virtual {p1, v0}, Lve/h$c;->e(Lve/h$c;)V

    :goto_0
    return-void
.end method

.method public get(I)S
    .locals 3

    iget v0, p0, Lve/h;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object p1

    invoke-static {p1}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short p1, p0, Lve/h;->b:S

    return p1

    :cond_0
    invoke-virtual {p1}, Lve/h$c;->c()S

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lve/h;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h4(S)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lve/h;->C8(IS)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-short v0, p0, Lve/h;->b:S

    invoke-static {v0}, Lne/b;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lve/h;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Lre/s0;->next()S

    move-result v2

    invoke-static {v2}, Lne/b;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()S
    .locals 1

    iget-short v0, p0, Lve/h;->b:S

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lve/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lre/s0;
    .locals 1

    new-instance v0, Lve/h$a;

    invoke-direct {v0, p0}, Lve/h$a;-><init>(Lve/h;)V

    return-object v0
.end method

.method public j1(Lke/i;)Z
    .locals 2

    invoke-interface {p1}, Lke/i;->iterator()Lre/s0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lre/s0;->next()S

    move-result v1

    invoke-virtual {p0, v1}, Lve/h;->d1(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final k(Lve/h$c;)V
    .locals 3

    invoke-static {p1}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lve/h;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lve/h;->c:I

    invoke-virtual {p1}, Lve/h$c;->b()Lve/h$c;

    move-result-object v0

    invoke-virtual {p1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lve/h$c;->d(Lve/h$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v1}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lve/h$c;->e(Lve/h$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lve/h$c;->d(Lve/h$c;)V

    invoke-virtual {p1, v0}, Lve/h$c;->e(Lve/h$c;)V

    return-void
.end method

.method public l1(Lke/i;)Z
    .locals 3

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-interface {p1, v2}, Lke/i;->V0(S)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public l3([S)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lve/h;->d1(S)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public max()S
    .locals 3

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    const/16 v1, -0x8000

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()S
    .locals 3

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    const/16 v1, 0x7fff

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n2(Lke/i;)Z
    .locals 3

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-interface {p1, v2}, Lke/i;->V0(S)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o3(I[SII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget-short v1, p2, v1

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lve/h;->v7(IS)S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p1([S)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([S)V

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public q(Lme/h;)V
    .locals 2

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    invoke-interface {p1, v1}, Lme/h;->a(S)S

    move-result v1

    invoke-virtual {v0, v1}, Lve/h$c;->f(S)V

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()S
    .locals 3

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public r0(II)[S
    .locals 2

    new-array v0, p2, [S

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lve/h;->Ya([SIII)[S

    move-result-object p1

    return-object p1
.end method

.method public r7([SII)[S
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lve/h;->Ya([SIII)[S

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lve/h;->b:S

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-virtual {p0, v2}, Lve/h;->d1(S)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public s0(II)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lve/h;->t0(I)S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s9(Lze/t0;)Lte/i;
    .locals 3

    new-instance v0, Lve/h;

    invoke-direct {v0}, Lve/h;-><init>()V

    iget-object v1, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v1}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v2

    invoke-interface {p1, v2}, Lze/t0;->a(S)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v2

    invoke-interface {v0, v2}, Lte/i;->d1(S)Z

    :cond_0
    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public sb(Lze/t0;)Lte/i;
    .locals 3

    new-instance v0, Lve/h;

    invoke-direct {v0}, Lve/h;-><init>()V

    iget-object v1, p0, Lve/h;->d:Lve/h$c;

    :goto_0
    invoke-static {v1}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v2

    invoke-interface {p1, v2}, Lze/t0;->a(S)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v2

    invoke-interface {v0, v2}, Lte/i;->d1(S)Z

    :cond_0
    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lve/h;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/h;->c:I

    invoke-virtual {p0, v0, v1}, Lve/h;->w0(II)V

    return-void
.end method

.method public subList(II)Lte/i;
    .locals 3

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lve/h;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lve/h;

    invoke-direct {v0}, Lve/h;-><init>()V

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lve/h$c;->c()S

    move-result v2

    invoke-virtual {v0, v2}, Lve/h;->d1(S)Z

    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end index < "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lve/h;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than last index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lve/h;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than end index "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public t0(I)S
    .locals 3

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    invoke-static {v0}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result p1

    invoke-virtual {p0, v0}, Lve/h;->k(Lve/h$c;)V

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no elemenet at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t7(SII)I
    .locals 4

    if-ltz p2, :cond_5

    iget v0, p0, Lve/h;->c:I

    if-gt p3, v0, :cond_4

    if-ge p3, p2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    neg-int p1, p2

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int v1, p2, p3

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p2, v1}, Lve/h;->b(Lve/h$c;II)Lve/h$c;

    move-result-object v2

    invoke-virtual {v2}, Lve/h$c;->c()S

    move-result v3

    if-ne v3, p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lve/h$c;->c()S

    move-result v3

    if-ge v3, p1, :cond_3

    add-int/lit8 p2, v1, 0x1

    iget-object v0, v2, Lve/h$c;->c:Lve/h$c;

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v1, -0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end index > size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lve/h;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toArray()[S
    .locals 3

    iget v0, p0, Lve/h;->c:I

    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lve/h;->r7([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lre/s0;->next()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 6

    iget-object v0, p0, Lve/h;->d:Lve/h$c;

    iget-object v1, p0, Lve/h;->e:Lve/h$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lve/h$c;->a()Lve/h$c;

    move-result-object v3

    invoke-virtual {v2}, Lve/h$c;->b()Lve/h$c;

    move-result-object v4

    invoke-virtual {v2}, Lve/h$c;->a()Lve/h$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lve/h$c;->d(Lve/h$c;)V

    invoke-virtual {v2, v3}, Lve/h$c;->e(Lve/h$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lve/h;->d:Lve/h$c;

    iput-object v0, p0, Lve/h;->e:Lve/h$c;

    return-void
.end method

.method public u2([S)Z
    .locals 4

    invoke-virtual {p0}, Lve/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-short v3, p1, v2

    invoke-virtual {p0, v3}, Lve/h;->V0(S)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public v7(IS)S
    .locals 2

    iget v0, p0, Lve/h;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    invoke-static {v0}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result p1

    invoke-virtual {v0, p2}, Lve/h$c;->f(S)V

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lve/h;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lve/h;->subList(II)Lte/i;

    move-result-object p2

    invoke-interface {p2}, Lte/i;->toArray()[S

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([S)V

    invoke-virtual {p0, p1, p2}, Lve/h;->Wa(I[S)V

    return-void
.end method

.method public w1([S)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([S)V

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public w9(IS)I
    .locals 2

    invoke-virtual {p0, p1}, Lve/h;->e(I)Lve/h$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    invoke-static {v1}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v1

    if-ne v1, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lve/h$c;->a()Lve/h$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, p0, Lve/h;->b:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget v0, p0, Lve/h;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lve/h;->iterator()Lre/s0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
