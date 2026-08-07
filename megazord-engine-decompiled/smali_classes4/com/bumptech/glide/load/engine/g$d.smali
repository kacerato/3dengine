.class public Lcom/bumptech/glide/load/engine/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:LB/e;

.field public b:LB/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB/k<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Lcom/bumptech/glide/load/engine/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/s<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$d;->a:LB/e;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$d;->b:LB/k;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/g$e;LB/h;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, LY/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/g$e;->a()LF/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g$d;->a:LB/e;

    new-instance v1, Lcom/bumptech/glide/load/engine/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g$d;->b:LB/k;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/d;-><init>(LB/d;Ljava/lang/Object;LB/h;)V

    invoke-interface {p1, v0, v1}, LF/a;->b(LB/e;LF/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/s;->f()V

    invoke-static {}, LY/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/s;->f()V

    invoke-static {}, LY/b;->e()V

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(LB/e;LB/k;Lcom/bumptech/glide/load/engine/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "LB/e;",
            "LB/k<",
            "TX;>;",
            "Lcom/bumptech/glide/load/engine/s<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g$d;->a:LB/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g$d;->b:LB/k;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g$d;->c:Lcom/bumptech/glide/load/engine/s;

    return-void
.end method
