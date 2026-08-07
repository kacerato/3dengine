.class public LJ/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/o<",
        "LI/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LI/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/m<",
            "LI/g;",
            "LI/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, LI/m;-><init>(J)V

    iput-object v0, p0, LJ/b$a;->a:LI/m;

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
            "LI/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LJ/b;

    iget-object v0, p0, LJ/b$a;->a:LI/m;

    invoke-direct {p1, v0}, LJ/b;-><init>(LI/m;)V

    return-object p1
.end method
