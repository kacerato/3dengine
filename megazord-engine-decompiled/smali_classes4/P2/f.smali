.class public final LP2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP2/f$a;,
        LP2/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)LP2/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Lz1/q0;->a(Landroid/content/Context;)Lz1/q0;

    move-result-object p0

    invoke-virtual {p0}, Lz1/q0;->b()Lz1/w0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;LP2/f$b;LP2/f$a;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # LP2/f$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # LP2/f$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lz1/q0;->a(Landroid/content/Context;)Lz1/q0;

    move-result-object p0

    invoke-virtual {p0}, Lz1/q0;->c()Lz1/C;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lz1/C;->a(LP2/f$b;LP2/f$a;)V

    return-void
.end method
