.class public final Ly1/h;
.super Ly1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Ly1/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ly1/h;
    .locals 0

    invoke-super {p0, p1}, Ly1/e;->a(Ljava/lang/Object;)Ly1/e;

    return-object p0
.end method

.method public final c(Ljava/util/Iterator;)Ly1/h;
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ly1/e;->a(Ljava/lang/Object;)Ly1/e;

    goto :goto_0

    :cond_0
    return-object p0
.end method
