.class public LX0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)LX0/J;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LX0/K;->c:LX0/K;

    invoke-static {p0, v0}, LX0/I;->b(Landroid/content/Context;LX0/K;)LX0/J;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;LX0/K;)LX0/J;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LX0/K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La1/p;

    invoke-direct {v0, p0, p1}, La1/p;-><init>(Landroid/content/Context;LX0/K;)V

    return-object v0
.end method
