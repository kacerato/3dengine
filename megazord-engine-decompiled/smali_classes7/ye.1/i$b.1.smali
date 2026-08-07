.class public Lye/i$b;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lye/i;


# direct methods
.method public constructor <init>(Lye/i;Lye/i;)V
    .locals 0

    iput-object p1, p0, Lye/i$b;->e:Lye/i;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 3

    invoke-virtual {p0}, Lye/i$b;->value()B

    move-result v0

    iget-object v1, p0, Lye/i$b;->e:Lye/i;

    iget-object v1, v1, Lye/i;->v:[B

    iget v2, p0, Loe/J;->d:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/J;->j()V

    return-void
.end method

.method public key()C
    .locals 2

    iget-object v0, p0, Lye/i$b;->e:Lye/i;

    iget-object v0, v0, Loe/i;->q:[C

    iget v1, p0, Loe/J;->d:I

    aget-char v0, v0, v1

    return v0
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

    iget-object v1, p0, Lye/i$b;->e:Lye/i;

    iget v2, p0, Loe/J;->d:I

    invoke-virtual {v1, v2}, Lye/i;->ue(I)V
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

.method public value()B
    .locals 2

    iget-object v0, p0, Lye/i$b;->e:Lye/i;

    iget-object v0, v0, Lye/i;->v:[B

    iget v1, p0, Loe/J;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
