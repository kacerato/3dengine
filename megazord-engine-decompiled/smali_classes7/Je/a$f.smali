.class public LJe/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->C(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/r;",
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

    check-cast p2, Lpi/r;

    invoke-virtual {p0, p1, p2}, LJe/a$f;->b(LIe/m;Lpi/r;)V

    return-void
.end method

.method public b(LIe/m;Lpi/r;)V
    .locals 4
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    invoke-virtual {p2}, Lpi/r;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LJe/b;->e:LIe/s;

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, LIe/m;->z(Lpi/v;I)V

    return-void
.end method
