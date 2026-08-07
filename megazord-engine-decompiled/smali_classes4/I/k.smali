.class public final LI/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI/k$a;,
        LI/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/n<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILB/h;)LI/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, LI/k;->c(Landroid/net/Uri;IILB/h;)LI/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, LI/k;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;IILB/h;)LI/n$a;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "LB/h;",
            ")",
            "LI/n$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p2, LI/n$a;

    new-instance p3, LW/e;

    invoke-direct {p3, p1}, LW/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LI/k$b;

    iget-object v0, p0, LI/k;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, LI/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, LI/n$a;-><init>(LB/e;LC/d;)V

    return-object p2
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LD/b;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
