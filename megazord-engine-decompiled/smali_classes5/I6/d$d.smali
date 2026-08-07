.class public LI6/d$d;
.super LX7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI6/d;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI6/d;


# direct methods
.method public constructor <init>(LI6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI6/d$d;->a:LI6/d;

    invoke-direct {p0}, LX7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LX7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
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

    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0, p1}, LI6/d;->t1(LI6/d;LX7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->u1(LI6/d;)LI6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->v1(LI6/d;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public e(LX7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, LI6/k;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LI6/k;

    invoke-virtual {v0}, LI6/k;->u()LI6/j;

    move-result-object v0

    invoke-virtual {v0}, LI6/j;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LI6/j;->i(Z)V

    invoke-virtual {v0}, LI6/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->w1(LI6/d;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->z(LX7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->w1(LI6/d;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->x(LX7/i;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LI6/h;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, LI6/h;

    invoke-virtual {v0}, LI6/h;->u()LI6/g;

    move-result-object v0

    invoke-virtual {v0}, LI6/g;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LI6/g;->l(Z)V

    invoke-virtual {v0}, LI6/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->w1(LI6/d;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->z(LX7/i;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LI6/d$d;->a:LI6/d;

    invoke-static {v0}, LI6/d;->w1(LI6/d;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->x(LX7/i;)V

    :cond_3
    :goto_0
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

    instance-of v0, p1, LI6/k;

    if-eqz v0, :cond_0

    check-cast p1, LI6/k;

    invoke-virtual {p1}, LI6/k;->u()LI6/j;

    move-result-object p1

    invoke-virtual {p1, p2}, LI6/j;->i(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LI6/h;

    if-eqz v0, :cond_1

    check-cast p1, LI6/h;

    invoke-virtual {p1}, LI6/h;->u()LI6/g;

    move-result-object p1

    invoke-virtual {p1, p2}, LI6/g;->l(Z)V

    :cond_1
    :goto_0
    return-void
.end method
