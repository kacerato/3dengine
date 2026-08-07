.class public Lye/P$b;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/U;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lye/P;


# direct methods
.method public constructor <init>(Lye/P;Lye/P;)V
    .locals 0

    iput-object p1, p0, Lye/P$b;->e:Lye/P;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 3

    invoke-virtual {p0}, Lye/P$b;->value()S

    move-result v0

    iget-object v1, p0, Lye/P$b;->e:Lye/P;

    iget-object v1, v1, Lye/P;->v:[S

    iget v2, p0, Loe/J;->d:I

    aput-short p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/J;->j()V

    return-void
.end method

.method public key()I
    .locals 2

    iget-object v0, p0, Lye/P$b;->e:Lye/P;

    iget-object v0, v0, Loe/S;->q:[I

    iget v1, p0, Loe/J;->d:I

    aget v0, v0, v1

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

    iget-object v1, p0, Lye/P$b;->e:Lye/P;

    iget v2, p0, Loe/J;->d:I

    invoke-virtual {v1, v2}, Lye/P;->ue(I)V
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

.method public value()S
    .locals 2

    iget-object v0, p0, Lye/P$b;->e:Lye/P;

    iget-object v0, v0, Lye/P;->v:[S

    iget v1, p0, Loe/J;->d:I

    aget-short v0, v0, v1

    return v0
.end method
