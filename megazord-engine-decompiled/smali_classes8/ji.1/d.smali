.class public Lji/d;
.super Lji/c;
.source "SourceFile"


# instance fields
.field public final a:Lvi/e;

.field public final b:Lvi/b;


# direct methods
.method public constructor <init>(Lvi/b;)V
    .locals 1

    invoke-direct {p0}, Lji/c;-><init>()V

    invoke-interface {p1}, Lvi/b;->b()Lvi/e;

    move-result-object v0

    iput-object v0, p0, Lji/d;->a:Lvi/e;

    iput-object p1, p0, Lji/d;->b:Lvi/b;

    return-void
.end method

.method private g(Lpi/v;)V
    .locals 2

    invoke-virtual {p1}, Lpi/v;->e()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    instance-of v1, p1, Lii/c;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    check-cast p1, Lii/c;

    invoke-virtual {p0, p1}, Lji/d;->h(Lii/c;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lji/d;->b:Lvi/b;

    invoke-interface {v1, p1}, Lvi/b;->a(Lpi/v;)V

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lji/c;->A()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lpi/v;)V
    .locals 0

    invoke-super {p0, p1}, Lji/c;->a(Lpi/v;)V

    return-void
.end method

.method public b(Lii/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lji/d;->a:Lvi/e;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Lvi/e;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lii/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    return-void
.end method

.method public d(Lii/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    iget-object p1, p0, Lji/d;->a:Lvi/e;

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Lvi/e;->f(C)V

    iget-object p1, p0, Lji/d;->a:Lvi/e;

    invoke-virtual {p1}, Lvi/e;->e()V

    return-void
.end method

.method public e(Lii/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    return-void
.end method

.method public f(Lii/e;)V
    .locals 1

    iget-object v0, p0, Lji/d;->a:Lvi/e;

    invoke-virtual {v0}, Lvi/e;->d()V

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    iget-object p1, p0, Lji/d;->a:Lvi/e;

    invoke-virtual {p1}, Lvi/e;->d()V

    return-void
.end method

.method public final h(Lii/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lji/d;->g(Lpi/v;)V

    return-void
.end method
