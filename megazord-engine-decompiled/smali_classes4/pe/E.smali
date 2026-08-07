.class public Lpe/E;
.super Lpe/A;
.source "SourceFile"

# interfaces
.implements Lte/c;


# static fields
.field public static final f:J = -0x6b9c101c7cbbef84L


# instance fields
.field public final e:Lte/c;


# direct methods
.method public constructor <init>(Lte/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpe/A;-><init>(Lke/e;)V

    .line 2
    iput-object p1, p0, Lpe/E;->e:Lte/c;

    return-void
.end method

.method public constructor <init>(Lte/c;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lpe/A;-><init>(Lke/e;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lpe/E;->e:Lte/c;

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/E;->e:Lte/c;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lpe/A0;

    invoke-direct {v1, v0}, Lpe/A0;-><init>(Lte/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public Ad(Lze/z;)Lte/c;
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->Ad(Lze/z;)Lte/c;

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

.method public Ba(I[D)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->Ba(I[D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public C9(I[DII)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/c;->C9(I[DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Cc(ID)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->Cc(ID)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public D3([DII)[D
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->D3([DII)[D

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

.method public D8(D)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->D8(D)I

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

.method public F0(II)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->F0(II)V

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

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->G0(Ljava/util/Random;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H4([DIII)[D
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/c;->H4([DIII)[D

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

.method public I4(Lze/z;)Z
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->I4(Lze/z;)Z

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

.method public N7(Lze/z;)Lte/c;
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->N7(Lze/z;)Lte/c;

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

.method public Pd(I[D)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->Pd(I[D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q3([D)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->Q3([D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public X3([DII)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->X3([DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y6(ID)D
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->Y6(ID)D

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

.method public Z2(D)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->Z2(D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d4(D)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->d4(D)I

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

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

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

.method public fb(IID)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/c;->fb(IID)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g9(DII)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/c;->g9(DII)I

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

.method public get(I)D
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->get(I)D

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

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

.method public i9(ID)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->i9(ID)I

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

.method public k5(D)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->k5(D)I

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

.method public max()D
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1}, Lte/c;->max()D

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

.method public min()D
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1}, Lte/c;->min()D

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

.method public n(Lme/c;)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->n(Lme/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public na(I[DII)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lte/c;->na(I[DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nd(ID)D
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->nd(ID)D

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

.method public r()D
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1}, Lte/c;->r()D

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

.method public r0(II)[D
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->r0(II)[D

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

.method public s0(II)V
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->s0(II)V

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

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1}, Lte/c;->sort()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Lte/c;
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lpe/E;

    iget-object v2, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v2, p1, p2}, Lte/c;->subList(II)Lte/c;

    move-result-object p1

    iget-object p2, p0, Lpe/A;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, Lpe/E;-><init>(Lte/c;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t0(I)D
    .locals 3

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1}, Lte/c;->t0(I)D

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

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1}, Lte/c;->u0()V

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

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->w0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z8(ID)I
    .locals 2

    iget-object v0, p0, Lpe/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/E;->e:Lte/c;

    invoke-interface {v1, p1, p2, p3}, Lte/c;->z8(ID)I

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
