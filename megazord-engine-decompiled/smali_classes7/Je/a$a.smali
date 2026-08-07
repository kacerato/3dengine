.class public LJe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->K(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/B;",
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

    check-cast p2, Lpi/B;

    invoke-virtual {p0, p1, p2}, LJe/a$a;->b(LIe/m;Lpi/B;)V

    return-void
.end method

.method public b(LIe/m;Lpi/B;)V
    .locals 3
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/B;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, LIe/m;->F(Lpi/v;)V

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1}, LIe/m;->h()LIe/z;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, LIe/z;->a(C)LIe/z;

    invoke-interface {p1, p2, v0}, LIe/m;->z(Lpi/v;I)V

    invoke-interface {p1, p2}, LIe/m;->y(Lpi/v;)V

    return-void
.end method
