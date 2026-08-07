.class public abstract LB1/Q;
.super LB1/Y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LB1/Y<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, LB1/Y;-><init>()V

    const-string v0, "index"

    invoke-static {p2, p1, v0}, LB1/O;->b(IILjava/lang/String;)I

    iput p1, p0, LB1/Q;->b:I

    iput p2, p0, LB1/Q;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, LB1/Q;->c:I

    iget v1, p0, LB1/Q;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, LB1/Q;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, LB1/Q;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LB1/Q;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LB1/Q;->c:I

    invoke-virtual {p0, v0}, LB1/Q;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, LB1/Q;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, LB1/Q;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LB1/Q;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LB1/Q;->c:I

    invoke-virtual {p0, v0}, LB1/Q;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, LB1/Q;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
