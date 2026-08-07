.class public LJe/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->H(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/y;",
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

    check-cast p2, Lpi/y;

    invoke-virtual {p0, p1, p2}, LJe/a$c;->b(LIe/m;Lpi/y;)V

    return-void
.end method

.method public b(LIe/m;Lpi/y;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->h()LIe/z;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, LIe/z;->a(C)LIe/z;

    return-void
.end method
