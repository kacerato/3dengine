.class public final Lcom/google/android/gms/internal/play_billing/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/Z1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/a0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/a0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/a0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    return-void
.end method

.method public static L(Lcom/google/android/gms/internal/play_billing/a0;)Lcom/google/android/gms/internal/play_billing/b0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/a0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/b0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/b0;-><init>(Lcom/google/android/gms/internal/play_billing/a0;)V

    return-object v0
.end method


# virtual methods
.method public final A(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final B(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    return-void
.end method

.method public final C(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final D(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    return-void
.end method

.method public final E(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final F(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0xb

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/Y;->p(II)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->f(ILcom/google/android/gms/internal/play_billing/T;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/f1;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/play_billing/Y;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    invoke-virtual {v4, v2, p1}, Lcom/google/android/gms/internal/play_billing/Y;->p(II)V

    const/16 p1, 0x1a

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/f1;->R1()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/play_billing/f1;->a(Lcom/google/android/gms/internal/play_billing/a0;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    return-void
.end method

.method public final G(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    check-cast p2, Lcom/google/android/gms/internal/play_billing/f1;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/z;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/z;->b(Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/Y;->q(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/a0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/r1;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    return-void
.end method

.method public final H(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/d0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/d0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/d0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/d0;->j(I)D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/d0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/d0;->j(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/d0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/d0;->j(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final I(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    return-void
.end method

.method public final J(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/M0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/play_billing/M0;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/M0;->Y3(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->n(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->f(ILcom/google/android/gms/internal/play_billing/T;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->n(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final K(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    return-void
.end method

.method public final a(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final b(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    return-void
.end method

.method public final c(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final d(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final e(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    return-void
.end method

.method public final f(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    return-void
.end method

.method public final h(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final i(ILjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T0;

    const/4 v1, 0x2

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v3

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v3

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->s(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final j(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->f(ILcom/google/android/gms/internal/play_billing/T;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->n(ILjava/lang/String;)V

    return-void
.end method

.method public final l(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/play_billing/f1;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/a0;->a:Lcom/google/android/gms/internal/play_billing/b0;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/play_billing/r1;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    return-void
.end method

.method public final m(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->e(IZ)V

    return-void
.end method

.method public final n(ILcom/google/android/gms/internal/play_billing/T;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->f(ILcom/google/android/gms/internal/play_billing/T;)V

    return-void
.end method

.method public final o(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    return-void
.end method

.method public final p(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/G;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/G;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/G;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/G;->j(I)Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/G;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/G;->j(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->d(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/G;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/G;->j(I)Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->e(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->d(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->e(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final q(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/w0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/w0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/w0;->j(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final r(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->k(II)V

    return-void
.end method

.method public final s(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/a0;->r(IJ)V

    return-void
.end method

.method public final t(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/T0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/T0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/T0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/T0;->j(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->i(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final u(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    return-void
.end method

.method public final v(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/n0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/n0;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/n0;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/n0;->j(I)F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/n0;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/n0;->j(I)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/n0;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/n0;->j(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->q(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/a0;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/a0;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final w(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    return-void
.end method

.method public final x(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    return-void
.end method

.method public final y(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/a0;->o(II)V

    return-void
.end method

.method public final z(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b0;->a:Lcom/google/android/gms/internal/play_billing/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a0;->p(II)V

    return-void
.end method
