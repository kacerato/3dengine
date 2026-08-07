.class public final LC/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LC/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LE/b;


# direct methods
.method public constructor <init>(LE/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC/k$a;->a:LE/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)LC/e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, LC/k$a;->c(Ljava/io/InputStream;)LC/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;)LC/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "LC/e<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LC/k;

    iget-object v1, p0, LC/k$a;->a:LE/b;

    invoke-direct {v0, p1, v1}, LC/k;-><init>(Ljava/io/InputStream;LE/b;)V

    return-object v0
.end method
