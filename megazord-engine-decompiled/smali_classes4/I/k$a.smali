.class public final LI/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/o<",
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

    iput-object p1, p0, LI/k$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(LI/r;)LI/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/r;",
            ")",
            "LI/n<",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p1, LI/k;

    iget-object v0, p0, LI/k$a;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, LI/k;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
