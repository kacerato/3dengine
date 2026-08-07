.class public Lxe/e$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/e$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Loe/H;

.field public c:I

.field public d:I

.field public final synthetic e:Lxe/e$e;


# direct methods
.method public constructor <init>(Lxe/e$e;)V
    .locals 0

    iput-object p1, p0, Lxe/e$e$b;->e:Lxe/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lxe/e$e;->b:Lxe/e;

    iput-object p1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {p1}, Loe/H;->size()I

    move-result p1

    iput p1, p0, Lxe/e$e$b;->c:I

    iget-object p1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {p1}, Loe/H;->le()I

    move-result p1

    iput p1, p0, Lxe/e$e$b;->d:I

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lxe/e$e$b;->i()I

    move-result v0

    iput v0, p0, Lxe/e$e$b;->d:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lxe/e$e$b;->i()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()I
    .locals 4

    iget v0, p0, Lxe/e$e$b;->c:I

    iget-object v1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lxe/e$e$b;->e:Lxe/e$e;

    iget-object v0, v0, Lxe/e$e;->b:Lxe/e;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Lxe/e$e$b;->d:I

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

.method public next()I
    .locals 2

    invoke-virtual {p0}, Lxe/e$e$b;->h()V

    iget-object v0, p0, Lxe/e$e$b;->e:Lxe/e$e;

    iget-object v0, v0, Lxe/e$e;->b:Lxe/e;

    iget-object v0, v0, Lxe/e;->t:[I

    iget v1, p0, Lxe/e$e$b;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Lxe/e$e$b;->c:I

    iget-object v1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {v1}, Loe/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {v1}, Loe/H;->xe()V

    iget-object v1, p0, Lxe/e$e$b;->e:Lxe/e$e;

    iget-object v1, v1, Lxe/e$e;->b:Lxe/e;

    iget v2, p0, Lxe/e$e$b;->d:I

    invoke-virtual {v1, v2}, Lxe/e;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {v1, v0}, Loe/H;->se(Z)V

    iget v0, p0, Lxe/e$e$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lxe/e$e$b;->c:I

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lxe/e$e$b;->b:Loe/H;

    invoke-virtual {v2, v0}, Loe/H;->se(Z)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
