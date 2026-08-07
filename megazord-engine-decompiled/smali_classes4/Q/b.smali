.class public LQ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LQ/i;)V
    .locals 0
    .param p1    # LQ/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LQ/i;->onStart()V

    return-void
.end method

.method public b(LQ/i;)V
    .locals 0
    .param p1    # LQ/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
