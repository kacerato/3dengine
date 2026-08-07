.class public LJe/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->G(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/x;",
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

    check-cast p2, Lpi/x;

    invoke-virtual {p0, p1, p2}, LJe/a$e;->b(LIe/m;Lpi/x;)V

    return-void
.end method

.method public b(LIe/m;Lpi/x;)V
    .locals 5
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, LJe/a;->n(Lpi/x;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, LIe/m;->F(Lpi/v;)V

    :cond_0
    invoke-interface {p1}, LIe/m;->length()I

    move-result v1

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    sget-object v2, LJe/b;->f:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, LIe/m;->z(Lpi/v;I)V

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, LIe/m;->y(Lpi/v;)V

    :cond_1
    return-void
.end method
