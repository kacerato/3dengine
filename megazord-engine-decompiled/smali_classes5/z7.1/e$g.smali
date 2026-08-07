.class public Lz7/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/e;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz7/e;


# direct methods
.method public constructor <init>(Lz7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz7/e$g;->a:Lz7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v0, v0, Lz7/e;->d:LF7/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LF7/f;->a()V

    :cond_0
    return-void
.end method

.method public b(LX7/i;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    invoke-static {}, Lf8/c;->Y()V

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v0, v0, Lz7/e;->d:LF7/f;

    check-cast p1, LB7/b;

    invoke-interface {v0, p1, p2}, LF7/f;->i(LB7/b;Landroid/view/View;)V

    return-void
.end method

.method public c(LX7/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v0, v0, Lz7/e;->d:LF7/f;

    move-object v1, p1

    check-cast v1, LB7/b;

    invoke-interface {v0, v1}, LF7/f;->e(LB7/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB7/b;

    iget-object v3, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v3, v3, Lz7/e;->e:LC7/b;

    invoke-interface {v3, v2}, LC7/b;->a(LB7/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX7/i;

    invoke-virtual {p1}, LX7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LX7/i;->q(I)V

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v0, v0, Lz7/e;->d:LF7/f;

    invoke-interface {v0}, LF7/f;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB7/b;

    iget-object v3, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v3, v3, Lz7/e;->e:LC7/b;

    invoke-interface {v3, v2}, LC7/b;->a(LB7/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public e(LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    check-cast p1, LB7/b;

    invoke-static {v0, p1}, Lz7/e;->d(Lz7/e;LB7/b;)V

    return-void
.end method

.method public f(LX7/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    iget-object v0, p0, Lz7/e$g;->a:Lz7/e;

    iget-object v0, v0, Lz7/e;->d:LF7/f;

    if-eqz v0, :cond_0

    check-cast p1, LB7/b;

    invoke-interface {v0, p1, p2}, LF7/f;->f(LB7/b;Z)V

    :cond_0
    return-void
.end method
