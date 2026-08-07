.class public LJe/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->D(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LIe/m;Lpi/v;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lpi/u;

    invoke-virtual {p0, p1, p2}, LJe/a$o;->b(LIe/m;Lpi/u;)V

    return-void
.end method

.method public b(LIe/m;Lpi/u;)V
    .locals 6
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    invoke-virtual {p2}, Lpi/b;->p()Lpi/b;

    move-result-object v1

    instance-of v2, v1, Lpi/w;

    if-eqz v2, :cond_0

    check-cast v1, Lpi/w;

    invoke-virtual {v1}, Lpi/w;->t()I

    move-result v2

    sget-object v3, LJe/b;->a:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v4

    sget-object v5, LJe/b$a;->ORDERED:LJe/b$a;

    invoke-virtual {v3, v4, v5}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    sget-object v3, LJe/b;->c:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lpi/w;->t()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lpi/w;->v(I)V

    goto :goto_0

    :cond_0
    sget-object v1, LJe/b;->a:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v2

    sget-object v3, LJe/b$a;->BULLET:LJe/b$a;

    invoke-virtual {v1, v2, v3}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    sget-object v1, LJe/b;->b:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v2

    invoke-static {p2}, LJe/a;->m(Lpi/v;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p1, p2, v0}, LIe/m;->z(Lpi/v;I)V

    invoke-interface {p1, p2}, LIe/m;->j(Lpi/v;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, LIe/m;->H()V

    :cond_1
    return-void
.end method
