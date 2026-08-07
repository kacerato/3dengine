.class public Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/e$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements LY/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/g$h;,
        Lcom/bumptech/glide/load/engine/g$g;,
        Lcom/bumptech/glide/load/engine/g$e;,
        Lcom/bumptech/glide/load/engine/g$b;,
        Lcom/bumptech/glide/load/engine/g$d;,
        Lcom/bumptech/glide/load/engine/g$f;,
        Lcom/bumptech/glide/load/engine/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/e$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/g<",
        "*>;>;",
        "LY/a$f;"
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "DecodeJob"


# instance fields
.field public A:Ljava/lang/Object;

.field public B:LB/a;

.field public C:LC/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile D:Lcom/bumptech/glide/load/engine/e;

.field public volatile E:Z

.field public volatile F:Z

.field public final b:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LY/c;

.field public final e:Lcom/bumptech/glide/load/engine/g$e;

.field public final f:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Lcom/bumptech/glide/load/engine/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g$d<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lcom/bumptech/glide/load/engine/g$f;

.field public i:Lcom/bumptech/glide/d;

.field public j:LB/e;

.field public k:Lcom/bumptech/glide/h;

.field public l:Lcom/bumptech/glide/load/engine/m;

.field public m:I

.field public n:I

.field public o:Lcom/bumptech/glide/load/engine/i;

.field public p:LB/h;

.field public q:Lcom/bumptech/glide/load/engine/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Lcom/bumptech/glide/load/engine/g$h;

.field public t:Lcom/bumptech/glide/load/engine/g$g;

.field public u:J

.field public v:Z

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Thread;

.field public y:LB/e;

.field public z:LB/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/g$e;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g$e;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-static {}, LY/c;->a()LY/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:LY/c;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/g$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/g$e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->f:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/g$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->F()V

    :cond_0
    return-void
.end method

.method public C(LB/a;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 11
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "LB/a;",
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, LB/a;->RESOURCE_DISK_CACHE:LB/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/f;->r(Ljava/lang/Class;)LB/l;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/d;

    iget v3, p0, Lcom/bumptech/glide/load/engine/g;->m:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/g;->n:I

    invoke-interface {v0, v2, p2, v3, v4}, LB/l;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/t;->recycle()V

    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/f;->v(Lcom/bumptech/glide/load/engine/t;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/f;->n(Lcom/bumptech/glide/load/engine/t;)LB/k;

    move-result-object v1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    invoke-interface {v1, p2}, LB/k;->b(LB/h;)LB/c;

    move-result-object p2

    :goto_1
    move-object v10, v1

    goto :goto_2

    :cond_2
    sget-object p2, LB/c;->NONE:LB/c;

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/f;->x(LB/e;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->o:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/engine/i;->d(ZLB/a;LB/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    sget-object p1, Lcom/bumptech/glide/load/engine/g$a;->c:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/bumptech/glide/load/engine/v;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/f;->b()LE/b;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->j:LB/e;

    iget v5, p0, Lcom/bumptech/glide/load/engine/g;->m:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/g;->n:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/v;-><init>(LE/b;LB/e;LB/e;IILB/l;Ljava/lang/Class;LB/h;)V

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/c;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->j:LB/e;

    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/c;-><init>(LB/e;LB/e;)V

    :goto_3
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/s;->c(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/s;

    move-result-object v0

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/g$d;->d(LB/e;LB/k;Lcom/bumptech/glide/load/engine/s;)V

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public D(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/g$f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/g$f;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->F()V

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/g$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g$f;->e()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g$d;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->E:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/d;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->j:LB/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/m;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->x:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->A:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->B:LB/a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->C:LC/d;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/g;->u:J

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->w:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->x:Ljava/lang/Thread;

    invoke-static {}, LX/g;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/g;->u:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/g;->o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->n()Lcom/bumptech/glide/load/engine/e;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    sget-object v2, Lcom/bumptech/glide/load/engine/g$h;->SOURCE:Lcom/bumptech/glide/load/engine/g$h;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->b()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    sget-object v2, Lcom/bumptech/glide/load/engine/g$h;->FINISHED:Lcom/bumptech/glide/load/engine/g$h;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->y()V

    :cond_3
    return-void
.end method

.method public final H(Ljava/lang/Object;LB/a;Lcom/bumptech/glide/load/engine/r;)Lcom/bumptech/glide/load/engine/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "LB/a;",
            "Lcom/bumptech/glide/load/engine/r<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/g;->p(LB/a;)LB/h;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->l(Ljava/lang/Object;)LC/e;

    move-result-object p1

    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/g;->m:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/g;->n:I

    new-instance v5, Lcom/bumptech/glide/load/engine/g$c;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/g$c;-><init>(Lcom/bumptech/glide/load/engine/g;LB/a;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/r;->b(LC/e;LB/h;IILcom/bumptech/glide/load/engine/h$a;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, LC/e;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, LC/e;->cleanup()V

    throw p2
.end method

.method public final I()V
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/g$a;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->k()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->G()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/g$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/g;->o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->n()Lcom/bumptech/glide/load/engine/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->G()V

    :goto_0
    return-void
.end method

.method public final J()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:LY/c;

    invoke-virtual {v0}, LY/c;->c()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->E:Z

    return-void
.end method

.method public K()Z
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/engine/g$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/g;->o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/g$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/engine/g$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Ljava/lang/Exception;",
            "LC/d<",
            "*>;",
            "LB/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, LC/d;->cleanup()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, LC/d;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(LB/e;LB/a;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/g$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/g$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/g$b;->a(Lcom/bumptech/glide/load/engine/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->G()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/g$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/g$g;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/g$b;->a(Lcom/bumptech/glide/load/engine/g;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->D:Lcom/bumptech/glide/load/engine/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/e;->cancel()V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/g;->g(Lcom/bumptech/glide/load/engine/g;)I

    move-result p1

    return p1
.end method

.method public d()LY/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:LY/c;

    return-object v0
.end method

.method public e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Ljava/lang/Object;",
            "LC/d<",
            "*>;",
            "LB/a;",
            "LB/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->A:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g;->C:LC/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/g;->B:LB/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/g;->z:LB/e;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/g$g;->DECODE_DATA:Lcom/bumptech/glide/load/engine/g$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/g$b;->a(Lcom/bumptech/glide/load/engine/g;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    invoke-static {p1}, LY/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, LY/b;->e()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, LY/b;->e()V

    throw p1
.end method

.method public g(Lcom/bumptech/glide/load/engine/g;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->r()I

    move-result v0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->r()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/g;->r:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/g;->r:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final h(LC/d;Ljava/lang/Object;LB/a;)Lcom/bumptech/glide/load/engine/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "LC/d<",
            "*>;TData;",
            "LB/a;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-interface {p1}, LC/d;->cleanup()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, LX/g;->b()J

    move-result-wide v0

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/engine/g;->i(Ljava/lang/Object;LB/a;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/g;->u(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, LC/d;->cleanup()V

    return-object p2

    :goto_1
    invoke-interface {p1}, LC/d;->cleanup()V

    throw p2
.end method

.method public final i(Ljava/lang/Object;LB/a;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "LB/a;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/f;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/g;->H(Ljava/lang/Object;LB/a;Lcom/bumptech/glide/load/engine/r;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    return-object p1
.end method

.method public final k()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/g;->u:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->A:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->y:LB/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->C:LC/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/g;->v(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->C:LC/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->A:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->B:LB/a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/g;->h(LC/d;Ljava/lang/Object;LB/a;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->z:LB/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->B:LB/a;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(LB/e;LB/a;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->B:LB/a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/g;->x(Lcom/bumptech/glide/load/engine/t;LB/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->G()V

    :goto_1
    return-void
.end method

.method public final n()Lcom/bumptech/glide/load/engine/e;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/g$a;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/x;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/x;-><init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/u;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/u;-><init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    return-object v0
.end method

.method public final o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/g$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->o:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/g;->o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->FINISHED:Lcom/bumptech/glide/load/engine/g$h;

    return-object p1

    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/g;->v:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->FINISHED:Lcom/bumptech/glide/load/engine/g$h;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->SOURCE:Lcom/bumptech/glide/load/engine/g$h;

    :goto_1
    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->o:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/i;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/g;->o(Lcom/bumptech/glide/load/engine/g$h;)Lcom/bumptech/glide/load/engine/g$h;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final p(LB/a;)LB/h;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    sget-object v1, LB/a;->RESOURCE_DISK_CACHE:LB/a;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/f;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/q;->k:LB/g;

    invoke-virtual {v0, v1}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, LB/h;

    invoke-direct {v0}, LB/h;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    invoke-virtual {v0, v2}, LB/h;->b(LB/h;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LB/h;->c(LB/g;Ljava/lang/Object;)LB/h;

    return-object v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob#run(model=%s)"

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->w:Ljava/lang/Object;

    invoke-static {v1, v2}, LY/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->C:LC/d;

    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->y()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, LC/d;->cleanup()V

    :cond_0
    invoke-static {}, LY/b;->e()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->I()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, LC/d;->cleanup()V

    :cond_2
    invoke-static {}, LY/b;->e()V

    return-void

    :goto_0
    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    sget-object v3, Lcom/bumptech/glide/load/engine/g$h;->ENCODE:Lcom/bumptech/glide/load/engine/g$h;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->y()V

    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->F:Z

    if-nez v0, :cond_5

    throw v2

    :cond_5
    throw v2

    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, LC/d;->cleanup()V

    :cond_6
    invoke-static {}, LY/b;->e()V

    throw v0
.end method

.method public s(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/m;LB/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZZLB/h;Lcom/bumptech/glide/load/engine/g$b;I)Lcom/bumptech/glide/load/engine/g;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/m;",
            "LB/e;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "LB/l<",
            "*>;>;ZZZ",
            "LB/h;",
            "Lcom/bumptech/glide/load/engine/g$b<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/f;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/g$e;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/f;->u(Lcom/bumptech/glide/d;Ljava/lang/Object;LB/e;IILcom/bumptech/glide/load/engine/i;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;LB/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/g$e;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/d;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->j:LB/e;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/m;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/engine/g;->m:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/engine/g;->n:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->o:Lcom/bumptech/glide/load/engine/i;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/g;->v:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/engine/g;->r:I

    sget-object v1, Lcom/bumptech/glide/load/engine/g$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/g$g;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/g$g;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/g;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final u(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/g;->v(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, LX/g;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final w(Lcom/bumptech/glide/load/engine/t;LB/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;",
            "LB/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->J()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/g$b;->c(Lcom/bumptech/glide/load/engine/t;LB/a;)V

    return-void
.end method

.method public final x(Lcom/bumptech/glide/load/engine/t;LB/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;",
            "LB/a;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/p;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/p;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/p;->initialize()V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g$d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/s;->c(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/g;->w(Lcom/bumptech/glide/load/engine/t;LB/a;)V

    sget-object p1, Lcom/bumptech/glide/load/engine/g$h;->ENCODE:Lcom/bumptech/glide/load/engine/g$h;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->s:Lcom/bumptech/glide/load/engine/g$h;

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g$d;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/g$d;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/g$e;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->p:LB/h;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/g$d;->b(Lcom/bumptech/glide/load/engine/g$e;LB/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/s;->f()V

    :cond_3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->z()V

    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/s;->f()V

    :cond_4
    throw p1
.end method

.method public final y()V
    .locals 3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->J()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/g$b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/g$b;->b(Lcom/bumptech/glide/load/engine/GlideException;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->A()V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/g$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->F()V

    :cond_0
    return-void
.end method
