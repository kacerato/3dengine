.class public LJ/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
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
.method public a()V
    .locals 0

    return-void
.end method

.method public c(LI/r;)LI/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/r;",
            ")",
            "LI/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LJ/c;

    const-class v1, LI/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LI/r;->d(Ljava/lang/Class;Ljava/lang/Class;)LI/n;

    move-result-object p1

    invoke-direct {v0, p1}, LJ/c;-><init>(LI/n;)V

    return-object v0
.end method
