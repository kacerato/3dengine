.class public LIe/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIe/o$a;
    }
.end annotation


# instance fields
.field public final a:LIe/g;

.field public final b:LIe/v;

.field public final c:LIe/z;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;",
            "LIe/m$c<",
            "+",
            "Lpi/v;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:LIe/m$a;


# direct methods
.method public constructor <init>(LIe/g;LIe/v;LIe/z;Ljava/util/Map;LIe/m$a;)V
    .locals 0
    .param p1    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LIe/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LIe/m$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/g;",
            "LIe/v;",
            "LIe/z;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;",
            "LIe/m$c<",
            "+",
            "Lpi/v;",
            ">;>;",
            "LIe/m$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIe/o;->a:LIe/g;

    iput-object p2, p0, LIe/o;->b:LIe/v;

    iput-object p3, p0, LIe/o;->c:LIe/z;

    iput-object p4, p0, LIe/o;->d:Ljava/util/Map;

    iput-object p5, p0, LIe/o;->e:LIe/m$a;

    return-void
.end method


# virtual methods
.method public B()LIe/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/o;->a:LIe/g;

    return-object v0
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, LIe/o;->c:LIe/z;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LIe/z;->a(C)LIe/z;

    return-void
.end method

.method public D(Lpi/y;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public E(Lpi/d;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public F(Lpi/v;)V
    .locals 1
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LIe/o;->e:LIe/m$a;

    invoke-interface {v0, p0, p1}, LIe/m$a;->b(LIe/m;Lpi/v;)V

    return-void
.end method

.method public G(Lpi/j;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0}, LIe/z;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0}, LIe/z;->j()C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_0

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0, v1}, LIe/z;->a(C)LIe/z;

    :cond_0
    return-void
.end method

.method public I(Lpi/x;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public J(Lpi/A;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public K(Lpi/p;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public L(Lpi/f;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public M(Lpi/i;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public final a(Lpi/v;)V
    .locals 2
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LIe/o;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIe/m$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, LIe/m$c;->a(LIe/m;Lpi/v;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LIe/o;->f(Lpi/v;)V

    :goto_0
    return-void
.end method

.method public b(Lpi/q;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public c(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0}, LIe/z;->length()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, LIe/z;->o(LIe/z;Ljava/lang/Object;II)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LIe/o;->b:LIe/v;

    invoke-interface {v0}, LIe/v;->e()V

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0}, LIe/z;->clear()V

    return-void
.end method

.method public d(Lpi/m;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public e(Lpi/g;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public f(Lpi/v;)V
    .locals 1
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lpi/v;->e()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    invoke-virtual {p1, p0}, Lpi/v;->c(Lpi/C;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lpi/z;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public h()LIe/z;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/o;->c:LIe/z;

    return-object v0
.end method

.method public i(Lpi/l;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public j(Lpi/v;)Z
    .locals 0
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Lpi/r;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public l(Lpi/v;I)V
    .locals 0
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(TN;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LIe/o;->x(Ljava/lang/Class;I)V

    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, LIe/o;->c:LIe/z;

    invoke-virtual {v0}, LIe/z;->length()I

    move-result v0

    return v0
.end method

.method public m(Lpi/u;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public n(Lpi/o;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public o(Ljava/lang/Class;I)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    iget-object v0, p0, LIe/o;->a:LIe/g;

    invoke-virtual {v0}, LIe/g;->f()LIe/k;

    move-result-object v0

    invoke-interface {v0, p1}, LIe/k;->a(Ljava/lang/Class;)LIe/y;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, LIe/o;->a:LIe/g;

    iget-object v1, p0, LIe/o;->b:LIe/v;

    invoke-interface {p1, v0, v1}, LIe/y;->a(LIe/g;LIe/v;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LIe/o;->c(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public p(Lpi/e;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public q()LIe/v;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/o;->b:LIe/v;

    return-object v0
.end method

.method public r(Lpi/w;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public s(Lpi/s;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public t(Lpi/k;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public u(Lpi/c;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public v(Lpi/n;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public w(Lpi/B;)V
    .locals 0

    invoke-virtual {p0, p1}, LIe/o;->a(Lpi/v;)V

    return-void
.end method

.method public x(Ljava/lang/Class;I)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    iget-object v0, p0, LIe/o;->a:LIe/g;

    invoke-virtual {v0}, LIe/g;->f()LIe/k;

    move-result-object v0

    invoke-interface {v0, p1}, LIe/k;->b(Ljava/lang/Class;)LIe/y;

    move-result-object p1

    iget-object v0, p0, LIe/o;->a:LIe/g;

    iget-object v1, p0, LIe/o;->b:LIe/v;

    invoke-interface {p1, v0, v1}, LIe/y;->a(LIe/g;LIe/v;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LIe/o;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public y(Lpi/v;)V
    .locals 1
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LIe/o;->e:LIe/m$a;

    invoke-interface {v0, p0, p1}, LIe/m$a;->a(LIe/m;Lpi/v;)V

    return-void
.end method

.method public z(Lpi/v;I)V
    .locals 0
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(TN;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LIe/o;->o(Ljava/lang/Class;I)V

    return-void
.end method
