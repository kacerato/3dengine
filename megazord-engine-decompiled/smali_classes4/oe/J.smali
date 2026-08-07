.class public abstract Loe/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/m0;


# instance fields
.field public final b:Loe/c0;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Loe/c0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {p1}, Loe/H;->size()I

    move-result v0

    iput v0, p0, Loe/J;->c:I

    invoke-virtual {p1}, Loe/c0;->le()I

    move-result p1

    iput p1, p0, Loe/J;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Loe/J;->nextIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Loe/J;->nextIndex()I

    move-result v0

    iput v0, p0, Loe/J;->d:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 4

    iget v0, p0, Loe/J;->c:I

    iget-object v1, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Loe/J;->b:Loe/c0;

    iget-object v0, v0, Loe/c0;->l:[B

    iget v1, p0, Loe/J;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    aget-byte v1, v0, v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Loe/J;->c:I

    iget-object v1, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {v1}, Loe/H;->xe()V

    iget-object v1, p0, Loe/J;->b:Loe/c0;

    iget v2, p0, Loe/J;->d:I

    invoke-virtual {v1, v2}, Loe/c0;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {v1, v0}, Loe/H;->se(Z)V

    iget v0, p0, Loe/J;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Loe/J;->c:I

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Loe/J;->b:Loe/c0;

    invoke-virtual {v2, v0}, Loe/H;->se(Z)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
