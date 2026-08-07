.class public Lve/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/h;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/g$b;,
        Lve/g$c;
    }
.end annotation


# instance fields
.field public b:J

.field public c:I

.field public d:Lve/g$c;

.field public e:Lve/g$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lve/g;->d:Lve/g$c;

    .line 3
    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lve/g;->d:Lve/g$c;

    .line 6
    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    .line 7
    iput-wide p1, p0, Lve/g;->b:J

    return-void
.end method

.method public constructor <init>(Lte/h;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lve/g;->d:Lve/g$c;

    .line 10
    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    .line 11
    invoke-interface {p1}, Lte/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lve/g;->b:J

    .line 12
    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lve/g;->J0(J)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lve/g;Lve/g$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lve/g;->l(Lve/g$c;)V

    return-void
.end method

.method public static b(Lve/g$c;II)Lve/g$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lve/g;->c(Lve/g$c;IIZ)Lve/g$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lve/g$c;IIZ)Lve/g$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lve/g;->f(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lve/g$c;->a()Lve/g$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lve/g$c;->b()Lve/g$c;

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

.method public static j([JII)Lve/g;
    .locals 4

    new-instance v0, Lve/g;

    invoke-direct {v0}, Lve/g;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-wide v2, p0, v2

    invoke-virtual {v0, v2, v3}, Lve/g;->J0(J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Z
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
.method public C3([J)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lve/g;->J0(J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E5([JII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lve/g;->J0(J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lve/g;->d(I)Lve/g$c;

    move-result-object p2

    invoke-virtual {p1}, Lve/g$c;->b()Lve/g$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lve/g$c;->a()Lve/g$c;

    move-result-object v2

    invoke-virtual {v1}, Lve/g$c;->b()Lve/g$c;

    move-result-object v3

    invoke-virtual {v1}, Lve/g$c;->a()Lve/g$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lve/g$c;->d(Lve/g$c;)V

    invoke-virtual {v1, v2}, Lve/g$c;->e(Lve/g$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lve/g$c;->d(Lve/g$c;)V

    invoke-virtual {p2, v0}, Lve/g$c;->e(Lve/g$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lve/g$c;->d(Lve/g$c;)V

    invoke-virtual {p2, p1}, Lve/g$c;->e(Lve/g$c;)V

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

.method public G0(Ljava/util/Random;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lve/g;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lve/g;->l(Lve/g$c;)V

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lve/g;->J0(J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H8(I[JII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lve/g;->j([JII)Lve/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve/g;->g(ILve/g;)V

    return-void
.end method

.method public J0(J)Z
    .locals 1

    new-instance v0, Lve/g$c;

    invoke-direct {v0, p1, p2}, Lve/g$c;-><init>(J)V

    iget-object p1, p0, Lve/g;->d:Lve/g$c;

    invoke-static {p1}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lve/g;->d:Lve/g$c;

    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lve/g;->e:Lve/g$c;

    invoke-virtual {v0, p1}, Lve/g$c;->e(Lve/g$c;)V

    iget-object p1, p0, Lve/g;->e:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->d(Lve/g$c;)V

    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    :goto_0
    iget p1, p0, Lve/g;->c:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lve/g;->c:I

    return p2
.end method

.method public L0([J)[J
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/g;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lve/g;->h6([JII)[J

    move-result-object p1

    return-object p1
.end method

.method public La(I[J)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lve/g;->za(I[JII)V

    return-void
.end method

.method public M1([J)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public O8(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lve/g;->q9(IJ)I

    move-result p1

    return p1
.end method

.method public P5(Lze/b0;)Z
    .locals 3

    iget-object v0, p0, Lve/g;->e:Lve/g$c;

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lze/b0;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lve/g$c;->b()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public S4(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lve/g;->r8(IJ)I

    move-result p1

    return p1
.end method

.method public Sc([JIII)[J
    .locals 4

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lve/g;->d(I)Lve/g$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lve/g$c;->c()J

    move-result-wide v2

    aput-wide v2, p1, v1

    invoke-virtual {p2}, Lve/g$c;->a()Lve/g$c;

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

.method public Td(IJ)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lve/g;->k7(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public W0(J)Z
    .locals 4

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public W8(IIJ)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    iget v1, p0, Lve/g;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lve/g;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3, p4}, Lve/g$c;->f(J)V

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3, p4}, Lve/g;->J0(J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3, p4}, Lve/g$c;->f(J)V

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

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

.method public Wd(I[J)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lve/g;->j([JII)Lve/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve/g;->g(ILve/g;)V

    return-void
.end method

.method public a1(Lze/b0;)Z
    .locals 3

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lze/b0;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
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

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lve/g;->J0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public ae(Lze/b0;)Lte/h;
    .locals 4

    new-instance v0, Lve/g;

    invoke-direct {v0}, Lve/g;-><init>()V

    iget-object v1, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v1}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lze/b0;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lte/h;->J0(J)Z

    :cond_0
    invoke-virtual {v1}, Lve/g$c;->a()Lve/g$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b2([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lve/g;->J0(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b6(J)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lve/g;->ge(JII)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lve/g;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lve/g;->d:Lve/g$c;

    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

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

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lve/g;->W0(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d(I)Lve/g$c;
    .locals 4

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lve/g;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    invoke-static {v0, v2, p1, v1}, Lve/g;->c(Lve/g$c;IIZ)Lve/g$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lve/g;->e:Lve/g$c;

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lve/g;->c(Lve/g$c;IIZ)Lve/g$c;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Z
    .locals 4

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lve/g;->l(Lve/g$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    check-cast p1, Lve/g;

    iget-wide v2, p0, Lve/g;->b:J

    iget-wide v4, p1, Lve/g;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lve/g;->c:I

    iget v3, p1, Lve/g;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v2

    invoke-virtual {p1}, Lve/g;->iterator()Lre/b0;

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
    invoke-interface {v2}, Lre/b0;->next()J

    move-result-wide v3

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public g(ILve/g;)V
    .locals 3

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object p1

    iget v0, p0, Lve/g;->c:I

    iget v1, p2, Lve/g;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lve/g;->c:I

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lve/g;->e:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->d(Lve/g$c;)V

    iget-object p1, p0, Lve/g;->d:Lve/g$c;

    iget-object v0, p2, Lve/g;->e:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->e(Lve/g$c;)V

    iget-object p1, p2, Lve/g;->d:Lve/g$c;

    iput-object p1, p0, Lve/g;->d:Lve/g$c;

    return-void

    :cond_0
    invoke-static {p1}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lve/g;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lve/g;->d:Lve/g$c;

    iput-object p1, p0, Lve/g;->d:Lve/g$c;

    iget-object p1, p2, Lve/g;->e:Lve/g$c;

    iput-object p1, p0, Lve/g;->e:Lve/g$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lve/g;->e:Lve/g$c;

    iget-object v0, p2, Lve/g;->d:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->d(Lve/g$c;)V

    iget-object p1, p2, Lve/g;->d:Lve/g$c;

    iget-object v0, p0, Lve/g;->e:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->e(Lve/g$c;)V

    iget-object p1, p2, Lve/g;->e:Lve/g$c;

    iput-object p1, p0, Lve/g;->e:Lve/g$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lve/g$c;->b()Lve/g$c;

    move-result-object v0

    invoke-virtual {p1}, Lve/g$c;->b()Lve/g$c;

    move-result-object v1

    iget-object v2, p2, Lve/g;->d:Lve/g$c;

    invoke-virtual {v1, v2}, Lve/g$c;->d(Lve/g$c;)V

    iget-object v1, p2, Lve/g;->e:Lve/g$c;

    invoke-virtual {v1, p1}, Lve/g$c;->d(Lve/g$c;)V

    iget-object v1, p2, Lve/g;->e:Lve/g$c;

    invoke-virtual {p1, v1}, Lve/g$c;->e(Lve/g$c;)V

    iget-object p1, p2, Lve/g;->d:Lve/g$c;

    invoke-virtual {p1, v0}, Lve/g$c;->e(Lve/g$c;)V

    :goto_0
    return-void
.end method

.method public g2(Lke/h;)Z
    .locals 4

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lke/h;->W0(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public ge(JII)I
    .locals 5

    if-ltz p3, :cond_5

    iget v0, p0, Lve/g;->c:I

    if-gt p4, v0, :cond_4

    if-ge p4, p3, :cond_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    neg-int p1, p3

    return p1

    :cond_1
    invoke-virtual {p0, p3}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    :goto_0
    if-ge p3, p4, :cond_0

    add-int v1, p3, p4

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p3, v1}, Lve/g;->b(Lve/g$c;II)Lve/g$c;

    move-result-object v2

    invoke-virtual {v2}, Lve/g$c;->c()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lve/g$c;->c()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_3

    add-int/lit8 p3, v1, 0x1

    iget-object v0, v2, Lve/g$c;->c:Lve/g$c;

    goto :goto_0

    :cond_3
    add-int/lit8 p4, v1, -0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "end index > size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lve/g;->c:I

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

.method public get(I)J
    .locals 3

    iget v0, p0, Lve/g;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object p1

    invoke-static {p1}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lve/g;->b:J

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lve/g$c;->c()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lve/g;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Lme/f;)V
    .locals 3

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lme/f;->a(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lve/g$c;->f(J)V

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h6([JII)[J
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lve/g;->Sc([JIII)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lve/g;->b:J

    invoke-static {v0, v1}, Lne/b;->e(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lve/g;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {v2, v3}, Lne/b;->e(J)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lve/g;->b:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lve/g;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lre/b0;
    .locals 1

    new-instance v0, Lve/g$a;

    invoke-direct {v0, p0}, Lve/g$a;-><init>(Lve/g;)V

    return-object v0
.end method

.method public j2(Lke/h;)Z
    .locals 4

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lve/g;->W0(J)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public j6(Lze/b0;)Lte/h;
    .locals 4

    new-instance v0, Lve/g;

    invoke-direct {v0}, Lve/g;-><init>()V

    iget-object v1, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v1}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lze/b0;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lte/h;->J0(J)Z

    :cond_0
    invoke-virtual {v1}, Lve/g$c;->a()Lve/g$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k7(IJ)J
    .locals 3

    iget v0, p0, Lve/g;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    invoke-static {v0}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-virtual {v0, p2, p3}, Lve/g$c;->f(J)V

    return-wide v1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lve/g;->c:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final l(Lve/g$c;)V
    .locals 3

    invoke-static {p1}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lve/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lve/g;->c:I

    invoke-virtual {p1}, Lve/g$c;->b()Lve/g$c;

    move-result-object v0

    invoke-virtual {p1}, Lve/g$c;->a()Lve/g$c;

    move-result-object v1

    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lve/g$c;->d(Lve/g$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lve/g;->d:Lve/g$c;

    :goto_0
    invoke-static {v1}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lve/g$c;->e(Lve/g$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lve/g$c;->d(Lve/g$c;)V

    invoke-virtual {p1, v0}, Lve/g$c;->e(Lve/g$c;)V

    return-void
.end method

.method public l2([J)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public m2([J)Z
    .locals 5

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lve/g;->W0(J)Z

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

.method public max()J
    .locals 5

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    :cond_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-wide v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()J
    .locals 5

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    :cond_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-wide v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public p3(J)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/g;->c:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lve/g;->W8(IIJ)V

    return-void
.end method

.method public q9(IJ)I
    .locals 3

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v1

    invoke-static {v1}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public r()J
    .locals 5

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public r0(II)[J
    .locals 2

    new-array v0, p2, [J

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lve/g;->Sc([JIII)[J

    move-result-object p1

    return-object p1
.end method

.method public r8(IJ)I
    .locals 4

    invoke-virtual {p0}, Lve/g;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v2

    invoke-static {v2}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lve/g$c;->a()Lve/g$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lve/g;->b:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lve/g;->J0(J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-virtual {p0, p1}, Lve/g;->t0(I)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lve/g;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lve/g;->c:I

    invoke-virtual {p0, v0, v1}, Lve/g;->w0(II)V

    return-void
.end method

.method public subList(II)Lte/h;
    .locals 4

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lve/g;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lve/g;

    invoke-direct {v0}, Lve/g;-><init>()V

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lve/g$c;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lve/g;->J0(J)Z

    invoke-virtual {v1}, Lve/g$c;->a()Lve/g$c;

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

    iget v0, p0, Lve/g;->c:I

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

    iget p1, p0, Lve/g;->c:I

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

.method public t0(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lve/g;->d(I)Lve/g$c;

    move-result-object v0

    invoke-static {v0}, Lve/g;->k(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lve/g$c;->c()J

    move-result-wide v1

    invoke-virtual {p0, v0}, Lve/g;->l(Lve/g$c;)V

    return-wide v1

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

.method public t1(Lke/h;)Z
    .locals 3

    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lve/g;->J0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public toArray()[J
    .locals 3

    iget v0, p0, Lve/g;->c:I

    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lve/g;->h6([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lre/b0;->next()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lve/g;->d:Lve/g$c;

    iget-object v1, p0, Lve/g;->e:Lve/g$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lve/g;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lve/g$c;->a()Lve/g$c;

    move-result-object v3

    invoke-virtual {v2}, Lve/g$c;->b()Lve/g$c;

    move-result-object v4

    invoke-virtual {v2}, Lve/g$c;->a()Lve/g$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lve/g$c;->d(Lve/g$c;)V

    invoke-virtual {v2, v3}, Lve/g$c;->e(Lve/g$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lve/g;->d:Lve/g$c;

    iput-object v0, p0, Lve/g;->e:Lve/g$c;

    return-void
.end method

.method public v1(Lke/h;)Z
    .locals 4

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lke/h;->W0(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lve/g;->subList(II)Lte/h;

    move-result-object p2

    invoke-interface {p2}, Lte/h;->toArray()[J

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([J)V

    invoke-virtual {p0, p1, p2}, Lve/g;->La(I[J)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-wide v0, p0, Lve/g;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Lve/g;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lve/g;->iterator()Lre/b0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public yb(IJ)V
    .locals 1

    new-instance v0, Lve/g;

    invoke-direct {v0}, Lve/g;-><init>()V

    invoke-virtual {v0, p2, p3}, Lve/g;->J0(J)Z

    invoke-virtual {p0, p1, v0}, Lve/g;->g(ILve/g;)V

    return-void
.end method

.method public za(I[JII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget-wide v1, p2, v1

    add-int v3, p1, v0

    invoke-virtual {p0, v3, v1, v2}, Lve/g;->k7(IJ)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
