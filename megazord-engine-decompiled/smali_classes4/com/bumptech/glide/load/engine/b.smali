.class public Lcom/bumptech/glide/load/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/e;
.implements LC/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/e;",
        "LC/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lcom/bumptech/glide/load/engine/e$a;

.field public e:I

.field public f:LB/e;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LI/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:I

.field public volatile i:LI/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/e$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LB/e;",
            ">;",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/e$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b;->b:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/b;->d:Lcom/bumptech/glide/load/engine/e$a;

    return-void
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/b;->h:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->d:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->f:LB/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    iget-object v2, v2, LI/n$a;->c:LC/d;

    sget-object v3, LB/a;->DATA_DISK_CACHE:LB/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/e$a;->a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V

    return-void
.end method

.method public c()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Ljava/util/List;

    iget v3, p0, Lcom/bumptech/glide/load/engine/b;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/b;->h:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/n;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->j:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->s()I

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->f()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/f;->k()LB/h;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, LI/n;->a(Ljava/lang/Object;IILB/h;)LI/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    iget-object v3, v3, LI/n$a;->c:LC/d;

    invoke-interface {v3}, LC/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/f;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    iget-object v0, v0, LI/n$a;->c:LC/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/f;->l()Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-interface {v0, v2, p0}, LC/d;->c(Lcom/bumptech/glide/h;LC/d$a;)V

    move v2, v1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->b:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/e;

    new-instance v1, Lcom/bumptech/glide/load/engine/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/f;->o()LB/e;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/bumptech/glide/load/engine/c;-><init>(LB/e;LB/e;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/f;->d()LF/a;

    move-result-object v3

    invoke-interface {v3, v1}, LF/a;->c(LB/e;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/b;->j:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->f:LB/e;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/f;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Ljava/util/List;

    iput v2, p0, Lcom/bumptech/glide/load/engine/b;->h:I

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LI/n$a;->c:LC/d;

    invoke-interface {v0}, LC/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->d:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->f:LB/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->i:LI/n$a;

    iget-object v3, v2, LI/n$a;->c:LC/d;

    sget-object v4, LB/a;->DATA_DISK_CACHE:LB/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->f:LB/e;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V

    return-void
.end method
