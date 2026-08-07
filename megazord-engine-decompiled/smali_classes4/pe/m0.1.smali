.class public Lpe/m0;
.super Lpe/i0;
.source "SourceFile"

# interfaces
.implements Lte/h;


# static fields
.field public static final f:J = -0x6b9c101c7cbbef84L


# instance fields
.field public final e:Lte/h;


# direct methods
.method public constructor <init>(Lte/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpe/i0;-><init>(Lke/h;)V

    .line 2
    iput-object p1, p0, Lpe/m0;->e:Lte/h;

    return-void
.end method

.method public constructor <init>(Lte/h;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lpe/m0;->e:Lte/h;

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/m0;->e:Lte/h;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lpe/D0;

    invoke-direct {v1, v0}, Lpe/D0;-><init>(Lte/h;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public C3([J)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->C3([J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E5([JII)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->E5([JII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public F0(II)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->F0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public G0(Ljava/util/Random;)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->G0(Ljava/util/Random;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H8(I[JII)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/h;->H8(I[JII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public La(I[J)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->La(I[J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public O8(J)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->O8(J)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P5(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->P5(Lze/b0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S4(J)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->S4(J)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Sc([JIII)[J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/h;->Sc([JIII)[J

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Td(IJ)J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->Td(IJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W8(IIJ)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/h;->W8(IIJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Wd(I[J)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->Wd(I[J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ae(Lze/b0;)Lte/h;
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->ae(Lze/b0;)Lte/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b6(J)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->b6(J)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ge(JII)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/h;->ge(JII)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)J
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->get(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lme/f;)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->h(Lme/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h6([JII)[J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->h6([JII)[J

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j6(Lze/b0;)Lte/h;
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->j6(Lze/b0;)Lte/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k7(IJ)J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->k7(IJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public max()J
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1}, Lte/h;->max()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public min()J
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1}, Lte/h;->min()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p3(J)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->p3(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q9(IJ)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->q9(IJ)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r()J
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1}, Lte/h;->r()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r0(II)[J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->r0(II)[J

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r8(IJ)I
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->r8(IJ)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s0(II)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->s0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1}, Lte/h;->sort()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Lte/h;
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lpe/m0;

    iget-object v2, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v2, p1, p2}, Lte/h;->subList(II)Lte/h;

    move-result-object p1

    iget-object p2, p0, Lpe/i0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, Lpe/m0;-><init>(Lte/h;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t0(I)J
    .locals 3

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1}, Lte/h;->t0(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u0()V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1}, Lte/h;->u0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w0(II)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->w0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public yb(IJ)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3}, Lte/h;->yb(IJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public za(I[JII)V
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/m0;->e:Lte/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/h;->za(I[JII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
