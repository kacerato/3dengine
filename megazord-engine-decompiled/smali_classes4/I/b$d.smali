.class public LI/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/o<",
        "[B",
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
    .locals 1
    .param p1    # LI/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/r;",
            ")",
            "LI/n<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LI/b;

    new-instance v0, LI/b$d$a;

    invoke-direct {v0, p0}, LI/b$d$a;-><init>(LI/b$d;)V

    invoke-direct {p1, v0}, LI/b;-><init>(LI/b$b;)V

    return-object p1
.end method
