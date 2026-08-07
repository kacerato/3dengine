.class public final Lyg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final B:I = 0x0

.field public static final C:I = 0x1

.field public static final D:I = 0x2

.field public static final E:I = 0x3

.field public static final F:I = 0x3c

.field public static final G:J = 0xfffffffffffffffL

.field public static final H:J = 0x4000000000000000L

.field public static final I:J = 0x3fffffffffffffffL

.field public static final a:Lyg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final c:I

.field public static final d:J = 0x0L

.field public static final e:J = 0x7fffffffffffffffL

.field public static final f:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lyg/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lyg/q;-><init>(JLyg/q;Lyg/j;I)V

    sput-object v6, Lyg/k;->a:Lyg/q;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lyg/k;->b:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lyg/k;->c:I

    new-instance v0, LEg/T;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->f:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->g:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->h:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->i:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->j:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->k:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->l:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->m:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->n:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->o:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->p:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->q:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->x:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->y:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->z:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/k;->A:LEg/T;

    return-void
.end method

.method public static final A(J)J
    .locals 2

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static final B(J)Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final C(J)I
    .locals 1

    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final D(J)J
    .locals 2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static final E(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final F(Lwg/p;Ljava/lang/Object;Leg/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/p<",
            "-TT;>;TT;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lwg/p;->J(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lwg/p;->V(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic G(Lwg/p;Ljava/lang/Object;Leg/l;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lyg/k;->F(Lwg/p;Ljava/lang/Object;Leg/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lyg/k;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lyg/k;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLyg/q;)Lyg/q;
    .locals 0

    invoke-static {p0, p1, p2}, Lyg/k;->x(JLyg/q;)Lyg/q;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->y:LEg/T;

    return-object v0
.end method

.method public static final synthetic e()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->z:LEg/T;

    return-object v0
.end method

.method public static final synthetic f()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->k:LEg/T;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Lyg/k;->c:I

    return v0
.end method

.method public static final synthetic h()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->q:LEg/T;

    return-object v0
.end method

.method public static final synthetic i()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->m:LEg/T;

    return-object v0
.end method

.method public static final synthetic j()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->l:LEg/T;

    return-object v0
.end method

.method public static final synthetic k()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->g:LEg/T;

    return-object v0
.end method

.method public static final synthetic l()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->A:LEg/T;

    return-object v0
.end method

.method public static final synthetic m()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->x:LEg/T;

    return-object v0
.end method

.method public static final synthetic n()Lyg/q;
    .locals 1

    sget-object v0, Lyg/k;->a:Lyg/q;

    return-object v0
.end method

.method public static final synthetic o()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->j:LEg/T;

    return-object v0
.end method

.method public static final synthetic p()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->i:LEg/T;

    return-object v0
.end method

.method public static final synthetic q()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->h:LEg/T;

    return-object v0
.end method

.method public static final synthetic r()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->o:LEg/T;

    return-object v0
.end method

.method public static final synthetic s()LEg/T;
    .locals 1

    sget-object v0, Lyg/k;->p:LEg/T;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, Lyg/k;->E(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Lwg/p;Ljava/lang/Object;Leg/l;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lyg/k;->F(Lwg/p;Ljava/lang/Object;Leg/l;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLyg/q;)Lyg/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(J",
            "Lyg/q<",
            "TE;>;)",
            "Lyg/q<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Lyg/q;

    invoke-virtual {p2}, Lyg/q;->w()Lyg/j;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lyg/q;-><init>(JLyg/q;Lyg/j;I)V

    return-object v6
.end method

.method public static final y()Log/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Log/h<",
            "Lyg/q<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyg/k$a;->b:Lyg/k$a;

    return-object v0
.end method

.method public static final z()LEg/T;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyg/k;->n:LEg/T;

    return-object v0
.end method
