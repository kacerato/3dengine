.class public Lcom/bumptech/glide/load/engine/u;
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
.field public final b:Lcom/bumptech/glide/load/engine/e$a;

.field public final c:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;"
        }
    .end annotation
.end field

.field public d:I

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

.field public k:Lcom/bumptech/glide/load/engine/v;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/u;->e:I

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/e$a;

    return-void
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->h:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->g:Ljava/util/List;

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

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->k:Lcom/bumptech/glide/load/engine/v;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    iget-object v2, v2, LI/n$a;->c:LC/d;

    sget-object v3, LB/a;->RESOURCE_DISK_CACHE:LB/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/e$a;->a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V

    return-void
.end method

.method public c()Z
    .locals 14

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->q()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find any load path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/f;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/f;->q()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->g:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/u;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/u;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->g:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/u;->h:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/engine/u;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/n;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->j:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/f;->s()I

    move-result v3

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->f()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/f;->k()LB/h;

    move-result-object v6

    invoke-interface {v0, v1, v3, v5, v6}, LI/n;->a(Ljava/lang/Object;IILB/h;)LI/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    iget-object v1, v1, LI/n$a;->c:LC/d;

    invoke-interface {v1}, LC/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/f;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    iget-object v0, v0, LI/n$a;->c:LC/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->l()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-interface {v0, v1, p0}, LC/d;->c(Lcom/bumptech/glide/h;LC/d$a;)V

    move v2, v4

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/engine/u;->e:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/u;->e:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    iget v3, p0, Lcom/bumptech/glide/load/engine/u;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/u;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    :cond_7
    iput v2, p0, Lcom/bumptech/glide/load/engine/u;->e:I

    :cond_8
    iget v3, p0, Lcom/bumptech/glide/load/engine/u;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LB/e;

    iget v4, p0, Lcom/bumptech/glide/load/engine/u;->e:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/f;->r(Ljava/lang/Class;)LB/l;

    move-result-object v10

    new-instance v13, Lcom/bumptech/glide/load/engine/v;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->b()LE/b;

    move-result-object v5

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->o()LB/e;

    move-result-object v7

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->s()I

    move-result v8

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->f()I

    move-result v9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->k()LB/h;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/v;-><init>(LE/b;LB/e;LB/e;IILB/l;Ljava/lang/Class;LB/h;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/engine/u;->k:Lcom/bumptech/glide/load/engine/v;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->d()LF/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->k:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v4, v5}, LF/a;->c(LB/e;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/u;->j:Ljava/io/File;

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/u;->f:LB/e;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/f;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/u;->g:Ljava/util/List;

    iput v2, p0, Lcom/bumptech/glide/load/engine/u;->h:I

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LI/n$a;->c:LC/d;

    invoke-interface {v0}, LC/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:LB/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->i:LI/n$a;

    iget-object v3, v2, LI/n$a;->c:LC/d;

    sget-object v4, LB/a;->RESOURCE_DISK_CACHE:LB/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->k:Lcom/bumptech/glide/load/engine/v;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V

    return-void
.end method
