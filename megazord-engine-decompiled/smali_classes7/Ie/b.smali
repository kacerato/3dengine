.class public LIe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIe/m;Lpi/v;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, LIe/m;->j(Lpi/v;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, LIe/m;->H()V

    invoke-interface {p1}, LIe/m;->C()V

    :cond_0
    return-void
.end method

.method public b(LIe/m;Lpi/v;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->H()V

    return-void
.end method
