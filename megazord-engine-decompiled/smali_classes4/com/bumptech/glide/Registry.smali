.class public Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "Gif"

.field public static final l:Ljava/lang/String; = "Bitmap"

.field public static final m:Ljava/lang/String; = "BitmapDrawable"

.field public static final n:Ljava/lang/String; = "legacy_prepend_all"

.field public static final o:Ljava/lang/String; = "legacy_append"


# instance fields
.field public final a:LI/p;

.field public final b:LS/a;

.field public final c:LS/e;

.field public final d:LS/f;

.field public final e:LC/f;

.field public final f:LP/f;

.field public final g:LS/b;

.field public final h:LS/d;

.field public final i:LS/c;

.field public final j:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS/d;

    invoke-direct {v0}, LS/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->h:LS/d;

    new-instance v0, LS/c;

    invoke-direct {v0}, LS/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->i:LS/c;

    invoke-static {}, LY/a;->f()Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->j:Landroidx/core/util/Pools$Pool;

    new-instance v1, LI/p;

    invoke-direct {v1, v0}, LI/p;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v1, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    new-instance v0, LS/a;

    invoke-direct {v0}, LS/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->b:LS/a;

    new-instance v0, LS/e;

    invoke-direct {v0}, LS/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    new-instance v0, LS/f;

    invoke-direct {v0}, LS/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->d:LS/f;

    new-instance v0, LC/f;

    invoke-direct {v0}, LC/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->e:LC/f;

    new-instance v0, LP/f;

    invoke-direct {v0}, LP/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->f:LP/f;

    new-instance v0, LS/b;

    invoke-direct {v0}, LS/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->g:LS/b;

    const-string v0, "Bitmap"

    const-string v1, "BitmapDrawable"

    const-string v2, "Gif"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/Registry;->z(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;LB/d;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "LB/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:LS/a;

    invoke-virtual {v0, p1, p2}, LS/a;->a(Ljava/lang/Class;LB/d;)V

    return-object p0
.end method

.method public b(Ljava/lang/Class;LB/k;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/k<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:LS/f;

    invoke-virtual {v0, p1, p2}, LS/f;->a(Ljava/lang/Class;LB/k;)V

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LB/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;LI/o;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LI/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "LI/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    invoke-virtual {v0, p1, p2, p3}, LI/p;->a(Ljava/lang/Class;Ljava/lang/Class;LI/o;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {v0, p1, p4, p2, p3}, LS/e;->a(Ljava/lang/String;LB/j;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/h<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {v1, p1, p2}, LS/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/Registry;->f:LP/f;

    invoke-virtual {v2, v1, p3}, LP/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {v2, p1, v1}, LS/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lcom/bumptech/glide/Registry;->f:LP/f;

    invoke-virtual {v2, v1, v5}, LP/f;->a(Ljava/lang/Class;Ljava/lang/Class;)LP/e;

    move-result-object v7

    new-instance v10, Lcom/bumptech/glide/load/engine/h;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->j:Landroidx/core/util/Pools$Pool;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/engine/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;LP/e;Landroidx/core/util/Pools$Pool;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:LS/b;

    invoke-virtual {v0}, LS/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/r;
    .locals 9
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/r<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->i:LS/c;

    invoke-virtual {v0, p1, p2, p3}, LS/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->i:LS/c;

    invoke-virtual {v1, v0}, LS/c;->c(Lcom/bumptech/glide/load/engine/r;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/r;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->j:Landroidx/core/util/Pools$Pool;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->i:LS/c;

    invoke-virtual {v1, p1, p2, p3, v0}, LS/c;->d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/r;)V

    :cond_2
    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "LI/n<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    invoke-virtual {v0, p1}, LI/p;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->h:LS/d;

    invoke-virtual {v0, p1, p2, p3}, LS/d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    invoke-virtual {v1, p1}, LI/p;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {v3, v2, p2}, LS/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/Registry;->f:LP/f;

    invoke-virtual {v4, v3, p3}, LP/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->h:LS/d;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, LS/d;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public k(Lcom/bumptech/glide/load/engine/t;)LB/k;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TX;>;)",
            "LB/k<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:LS/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, LS/f;->b(Ljava/lang/Class;)LB/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public l(Ljava/lang/Object;)LC/e;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "LC/e<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:LC/f;

    invoke-virtual {v0, p1}, LC/f;->a(Ljava/lang/Object;)LC/e;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;)LB/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "LB/d<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:LS/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, LS/a;->b(Ljava/lang/Class;)LB/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public n(Lcom/bumptech/glide/load/engine/t;)Z
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:LS/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, LS/f;->b(Ljava/lang/Class;)LB/k;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Ljava/lang/Class;LB/d;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "LB/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:LS/a;

    invoke-virtual {v0, p1, p2}, LS/a;->c(Ljava/lang/Class;LB/d;)V

    return-object p0
.end method

.method public p(Ljava/lang/Class;LB/k;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/k<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:LS/f;

    invoke-virtual {v0, p1, p2}, LS/f;->c(Ljava/lang/Class;LB/k;)V

    return-object p0
.end method

.method public q(Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LB/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_prepend_all"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->s(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public r(Ljava/lang/Class;Ljava/lang/Class;LI/o;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LI/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "LI/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    invoke-virtual {v0, p1, p2, p3}, LI/p;->g(Ljava/lang/Class;Ljava/lang/Class;LI/o;)V

    return-object p0
.end method

.method public s(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LB/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {v0, p1, p4, p2, p3}, LS/e;->e(Ljava/lang/String;LB/j;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public t(LC/e$a;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # LC/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:LC/f;

    invoke-virtual {v0, p1}, LC/f;->b(LC/e$a;)V

    return-object p0
.end method

.method public u(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/ImageHeaderParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:LS/b;

    invoke-virtual {v0, p1}, LS/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public v(Ljava/lang/Class;LB/d;)Lcom/bumptech/glide/Registry;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "LB/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;LB/d;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Class;LB/k;)Lcom/bumptech/glide/Registry;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "LB/k<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;LB/k;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Class;Ljava/lang/Class;LP/e;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LP/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "LP/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->f:LP/f;

    invoke-virtual {v0, p1, p2, p3}, LP/f;->c(Ljava/lang/Class;Ljava/lang/Class;LP/e;)V

    return-object p0
.end method

.method public y(Ljava/lang/Class;Ljava/lang/Class;LI/o;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LI/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "LI/o<",
            "+TModel;+TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:LI/p;

    invoke-virtual {v0, p1, p2, p3}, LI/p;->i(Ljava/lang/Class;Ljava/lang/Class;LI/o;)V

    return-object p0
.end method

.method public final z(Ljava/util/List;)Lcom/bumptech/glide/Registry;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const-string v1, "legacy_prepend_all"

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/Registry;->c:LS/e;

    invoke-virtual {p1, v0}, LS/e;->f(Ljava/util/List;)V

    return-object p0
.end method
