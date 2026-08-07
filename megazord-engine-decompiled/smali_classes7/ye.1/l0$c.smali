.class public Lye/l0$c;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lye/l0;


# direct methods
.method public constructor <init>(Lye/l0;Lye/l0;)V
    .locals 0

    iput-object p1, p0, Lye/l0$c;->e:Lye/l0;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 4

    invoke-virtual {p0}, Lye/l0$c;->value()J

    move-result-wide v0

    iget-object v2, p0, Lye/l0$c;->e:Lye/l0;

    iget-object v2, v2, Lye/l0;->v:[J

    iget v3, p0, Loe/J;->d:I

    aput-wide p1, v2, v3

    return-wide v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/J;->j()V

    return-void
.end method

.method public key()S
    .locals 2

    iget-object v0, p0, Lye/l0$c;->e:Lye/l0;

    iget-object v0, v0, Loe/j0;->q:[S

    iget v1, p0, Loe/J;->d:I

    aget-short v0, v0, v1

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

    iget-object v1, p0, Lye/l0$c;->e:Lye/l0;

    iget v2, p0, Loe/J;->d:I

    invoke-virtual {v1, v2}, Lye/l0;->ue(I)V
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

.method public value()J
    .locals 3

    iget-object v0, p0, Lye/l0$c;->e:Lye/l0;

    iget-object v0, v0, Lye/l0;->v:[J

    iget v1, p0, Loe/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
