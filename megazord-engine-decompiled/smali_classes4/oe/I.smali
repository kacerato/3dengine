.class public abstract Loe/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/V;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lre/V;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Loe/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loe/b0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Loe/H;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Loe/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/b0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {p1}, Loe/H;->size()I

    move-result v0

    iput v0, p0, Loe/I;->d:I

    invoke-virtual {p1}, Loe/H;->le()I

    move-result v0

    iput v0, p0, Loe/I;->e:I

    iput-object p1, p0, Loe/I;->b:Loe/b0;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Loe/I;->nextIndex()I

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

    invoke-virtual {p0}, Loe/I;->nextIndex()I

    move-result v0

    iput v0, p0, Loe/I;->e:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract k(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Loe/I;->j()V

    iget v0, p0, Loe/I;->e:I

    invoke-virtual {p0, v0}, Loe/I;->k(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 4

    iget v0, p0, Loe/I;->d:I

    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Loe/I;->b:Loe/b0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    aget-object v1, v0, v2

    sget-object v3, Loe/b0;->p:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    sget-object v3, Loe/b0;->o:Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Loe/I;->d:I

    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1}, Loe/H;->xe()V

    iget-object v1, p0, Loe/I;->c:Loe/H;

    iget v2, p0, Loe/I;->e:I

    invoke-virtual {v1, v2}, Loe/H;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1, v0}, Loe/H;->se(Z)V

    iget v0, p0, Loe/I;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Loe/I;->d:I

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v2, v0}, Loe/H;->se(Z)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
