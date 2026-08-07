.class public Lcom/bumptech/glide/load/engine/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LG/a;

.field public final b:LG/a;

.field public final c:LG/a;

.field public final d:LG/a;

.field public final e:Lcom/bumptech/glide/load/engine/l;

.field public final f:Lcom/bumptech/glide/load/engine/o$a;

.field public final g:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LG/a;LG/a;LG/a;LG/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/j$b$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/j$b$a;-><init>(Lcom/bumptech/glide/load/engine/j$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, LY/a;->e(ILY/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->g:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$b;->a:LG/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j$b;->b:LG/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/j$b;->c:LG/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/j$b;->d:LG/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/j$b;->e:Lcom/bumptech/glide/load/engine/l;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/j$b;->f:Lcom/bumptech/glide/load/engine/o$a;

    return-void
.end method


# virtual methods
.method public a(LB/e;ZZZZ)Lcom/bumptech/glide/load/engine/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LB/e;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/k<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->g:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/k;

    invoke-static {v0}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/k;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/k;->l(LB/e;ZZZZ)Lcom/bumptech/glide/load/engine/k;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->a:LG/a;

    invoke-static {v0}, LX/e;->c(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->b:LG/a;

    invoke-static {v0}, LX/e;->c(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->c:LG/a;

    invoke-static {v0}, LX/e;->c(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->d:LG/a;

    invoke-static {v0}, LX/e;->c(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
