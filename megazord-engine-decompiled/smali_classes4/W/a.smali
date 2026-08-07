.class public final LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/e;


# instance fields
.field public final c:I

.field public final d:LB/e;


# direct methods
.method public constructor <init>(ILB/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/a;->c:I

    iput-object p2, p0, LW/a;->d:LB/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)LB/e;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LW/b;->c(Landroid/content/Context;)LB/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    new-instance v1, LW/a;

    invoke-direct {v1, p0, v0}, LW/a;-><init>(ILB/e;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LW/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LW/a;

    iget v0, p0, LW/a;->c:I

    iget v2, p1, LW/a;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LW/a;->d:LB/e;

    iget-object p1, p1, LW/a;->d:LB/e;

    invoke-interface {v0, p1}, LB/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LW/a;->d:LB/e;

    iget v1, p0, LW/a;->c:I

    invoke-static {v0, v1}, LX/m;->p(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LW/a;->d:LB/e;

    invoke-interface {v0, p1}, LB/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, LW/a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
