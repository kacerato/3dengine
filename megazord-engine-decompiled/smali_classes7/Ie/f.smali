.class public LIe/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/e$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LIe/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/widget/TextView$BufferType;

.field public d:LIe/e$b;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LIe/f;->b:Ljava/util/List;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, LIe/f;->c:Landroid/widget/TextView$BufferType;

    const/4 v0, 0x1

    iput-boolean v0, p0, LIe/f;->e:Z

    iput-object p1, p0, LIe/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LIe/i;",
            ">;)",
            "Ljava/util/List<",
            "LIe/i;",
            ">;"
        }
    .end annotation

    new-instance v0, LIe/u;

    invoke-direct {v0, p0}, LIe/u;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, LIe/u;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)LIe/e$a;
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LIe/i;",
            ">;)",
            "LIe/e$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIe/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LIe/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b(LIe/e$b;)LIe/e$a;
    .locals 0
    .param p1    # LIe/e$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/f;->d:LIe/e$b;

    return-object p0
.end method

.method public build()LIe/e;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LIe/f;->b:Ljava/util/List;

    invoke-static {v0}, LIe/f;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lqi/d$b;

    invoke-direct {v1}, Lqi/d$b;-><init>()V

    iget-object v2, p0, LIe/f;->a:Landroid/content/Context;

    invoke-static {v2}, LJe/c;->k(Landroid/content/Context;)LJe/c$a;

    move-result-object v2

    new-instance v3, LIe/g$b;

    invoke-direct {v3}, LIe/g$b;-><init>()V

    new-instance v4, LIe/o$a;

    invoke-direct {v4}, LIe/o$a;-><init>()V

    new-instance v5, LIe/l$a;

    invoke-direct {v5}, LIe/l$a;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIe/i;

    invoke-interface {v7, v1}, LIe/i;->a(Lqi/d$b;)V

    invoke-interface {v7, v2}, LIe/i;->h(LJe/c$a;)V

    invoke-interface {v7, v3}, LIe/i;->c(LIe/g$b;)V

    invoke-interface {v7, v4}, LIe/i;->b(LIe/m$b;)V

    invoke-interface {v7, v5}, LIe/i;->i(LIe/k$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LJe/c$a;->A()LJe/c;

    move-result-object v2

    invoke-interface {v5}, LIe/k$a;->build()LIe/k;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, LIe/g$b;->i(LJe/c;LIe/k;)LIe/g;

    move-result-object v11

    invoke-static {v4, v11}, LIe/n;->b(LIe/m$b;LIe/g;)LIe/n;

    move-result-object v10

    new-instance v2, LIe/h;

    iget-object v7, p0, LIe/f;->c:Landroid/widget/TextView$BufferType;

    iget-object v8, p0, LIe/f;->d:LIe/e$b;

    invoke-virtual {v1}, Lqi/d$b;->f()Lqi/d;

    move-result-object v9

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iget-boolean v13, p0, LIe/f;->e:Z

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, LIe/h;-><init>(Landroid/widget/TextView$BufferType;LIe/e$b;Lqi/d;LIe/n;LIe/g;Ljava/util/List;Z)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(LIe/i;)LIe/e$a;
    .locals 1
    .param p1    # LIe/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Landroid/widget/TextView$BufferType;)LIe/e$a;
    .locals 0
    .param p1    # Landroid/widget/TextView$BufferType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/f;->c:Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method public e(Z)LIe/e$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, LIe/f;->e:Z

    return-object p0
.end method
