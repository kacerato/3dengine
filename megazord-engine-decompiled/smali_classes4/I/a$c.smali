.class public LI/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;
.implements LI/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "LI/a$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/a$c;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/res/AssetManager;Ljava/lang/String;)LC/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "LC/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LC/n;

    invoke-direct {v0, p1, p2}, LC/n;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LI/a;

    iget-object v0, p0, LI/a$c;->a:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, LI/a;-><init>(Landroid/content/res/AssetManager;LI/a$a;)V

    return-object p1
.end method
