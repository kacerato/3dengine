.class public LJe/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->y(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/m;",
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

    check-cast p2, Lpi/m;

    invoke-virtual {p0, p1, p2}, LJe/a$b;->b(LIe/m;Lpi/m;)V

    return-void
.end method

.method public b(LIe/m;Lpi/m;)V
    .locals 4
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, LIe/m;->F(Lpi/v;)V

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    sget-object v1, LJe/b;->d:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v2

    invoke-virtual {p2}, Lpi/m;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, LIe/m;->z(Lpi/v;I)V

    invoke-interface {p1, p2}, LIe/m;->y(Lpi/v;)V

    return-void
.end method
