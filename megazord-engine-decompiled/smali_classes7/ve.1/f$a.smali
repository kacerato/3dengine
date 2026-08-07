.class public final Lve/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lte/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Lte/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic e:Lve/f;


# direct methods
.method public constructor <init>(Lve/f;I)V
    .locals 3

    iput-object p1, p0, Lve/f$a;->e:Lve/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lve/f$a;->b:I

    if-ltz p2, :cond_4

    iget v1, p1, Lve/f;->d:I

    if-gt p2, v1, :cond_4

    iput p2, p0, Lve/f$a;->b:I

    if-nez p2, :cond_0

    iget-object p1, p1, Lve/f;->b:Lte/f;

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    goto :goto_2

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    goto :goto_2

    :cond_1
    shr-int/lit8 v2, v1, 0x1

    if-ge p2, v2, :cond_2

    iget-object p1, p1, Lve/f;->b:Lte/f;

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object p1, p0, Lve/f$a;->c:Lte/f;

    invoke-interface {p1}, Lte/f;->getNext()Lte/f;

    move-result-object p1

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    iget-object p1, p1, Lve/f;->c:Lte/f;

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    :goto_1
    if-le v1, p2, :cond_3

    iget-object p1, p0, Lve/f$a;->c:Lte/f;

    invoke-interface {p1}, Lte/f;->ka()Lte/f;

    move-result-object p1

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lte/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lve/f$a;->d:Lte/f;

    iget v0, p0, Lve/f$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lve/f$a;->b:I

    iget-object v0, p0, Lve/f$a;->e:Lve/f;

    iget v1, v0, Lve/f;->d:I

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lve/f;->b(Lte/f;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lve/f$a;->c:Lte/f;

    invoke-virtual {v0, v1, p1}, Lve/f;->d(Lte/f;Lte/f;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lte/f;

    invoke-virtual {p0, p1}, Lve/f$a;->a(Lte/f;)V

    return-void
.end method

.method public final b()Lte/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lve/f$a;->b:I

    iget-object v1, p0, Lve/f$a;->e:Lve/f;

    iget v1, v1, Lve/f;->d:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lve/f$a;->c:Lte/f;

    iput-object v0, p0, Lve/f$a;->d:Lte/f;

    invoke-interface {v0}, Lte/f;->getNext()Lte/f;

    move-result-object v0

    iput-object v0, p0, Lve/f$a;->c:Lte/f;

    iget v0, p0, Lve/f$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lve/f$a;->b:I

    iget-object v0, p0, Lve/f$a;->d:Lte/f;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d()Lte/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lve/f$a;->b:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lve/f$a;->e:Lve/f;

    iget v2, v1, Lve/f;->d:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lve/f;->c:Lte/f;

    iput-object v0, p0, Lve/f$a;->c:Lte/f;

    iput-object v0, p0, Lve/f$a;->d:Lte/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lve/f$a;->c:Lte/f;

    invoke-interface {v0}, Lte/f;->ka()Lte/f;

    move-result-object v0

    iput-object v0, p0, Lve/f$a;->c:Lte/f;

    iput-object v0, p0, Lve/f$a;->d:Lte/f;

    :goto_0
    iget v0, p0, Lve/f$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lve/f$a;->b:I

    iget-object v0, p0, Lve/f$a;->d:Lte/f;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final e(Lte/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lve/f$a;->d:Lte/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lve/f$a;->f(Lte/f;Lte/f;)V

    iput-object p1, p0, Lve/f$a;->d:Lte/f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final f(Lte/f;Lte/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lte/f;->ka()Lte/f;

    move-result-object v0

    invoke-interface {p1}, Lte/f;->getNext()Lte/f;

    move-result-object v1

    invoke-interface {p2}, Lte/f;->ka()Lte/f;

    move-result-object v2

    invoke-interface {p2}, Lte/f;->getNext()Lte/f;

    move-result-object v3

    if-ne v1, p2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lte/f;->J4(Lte/f;)V

    :cond_0
    invoke-interface {p2, v0}, Lte/f;->r9(Lte/f;)V

    invoke-interface {p2, p1}, Lte/f;->J4(Lte/f;)V

    invoke-interface {p1, p2}, Lte/f;->r9(Lte/f;)V

    invoke-interface {p1, v3}, Lte/f;->J4(Lte/f;)V

    if-eqz v3, :cond_7

    invoke-interface {v3, p1}, Lte/f;->r9(Lte/f;)V

    goto :goto_0

    :cond_1
    if-ne v3, p1, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Lte/f;->J4(Lte/f;)V

    :cond_2
    invoke-interface {p2, p1}, Lte/f;->r9(Lte/f;)V

    invoke-interface {p2, v1}, Lte/f;->J4(Lte/f;)V

    invoke-interface {p1, v2}, Lte/f;->r9(Lte/f;)V

    invoke-interface {p1, p2}, Lte/f;->J4(Lte/f;)V

    if-eqz v1, :cond_7

    invoke-interface {v1, p2}, Lte/f;->r9(Lte/f;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v3}, Lte/f;->J4(Lte/f;)V

    invoke-interface {p1, v2}, Lte/f;->r9(Lte/f;)V

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Lte/f;->J4(Lte/f;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lte/f;->r9(Lte/f;)V

    :cond_5
    invoke-interface {p2, v1}, Lte/f;->J4(Lte/f;)V

    invoke-interface {p2, v0}, Lte/f;->r9(Lte/f;)V

    if-eqz v0, :cond_6

    invoke-interface {v0, p2}, Lte/f;->J4(Lte/f;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1, p2}, Lte/f;->r9(Lte/f;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lve/f$a;->e:Lve/f;

    iget-object v1, v0, Lve/f;->b:Lte/f;

    if-ne v1, p1, :cond_8

    iput-object p2, v0, Lve/f;->b:Lte/f;

    goto :goto_1

    :cond_8
    if-ne v1, p2, :cond_9

    iput-object p1, v0, Lve/f;->b:Lte/f;

    :cond_9
    :goto_1
    iget-object v1, v0, Lve/f;->c:Lte/f;

    if-ne v1, p1, :cond_a

    iput-object p2, v0, Lve/f;->c:Lte/f;

    goto :goto_2

    :cond_a
    if-ne v1, p2, :cond_b

    iput-object p1, v0, Lve/f;->c:Lte/f;

    :cond_b
    :goto_2
    iget-object v0, p0, Lve/f$a;->d:Lte/f;

    if-ne v0, p1, :cond_c

    iput-object p2, p0, Lve/f$a;->d:Lte/f;

    goto :goto_3

    :cond_c
    if-ne v0, p2, :cond_d

    iput-object p1, p0, Lve/f$a;->d:Lte/f;

    :cond_d
    :goto_3
    iget-object v0, p0, Lve/f$a;->c:Lte/f;

    if-ne v0, p1, :cond_e

    iput-object p2, p0, Lve/f$a;->c:Lte/f;

    goto :goto_4

    :cond_e
    if-ne v0, p2, :cond_f

    iput-object p1, p0, Lve/f$a;->c:Lte/f;

    :cond_f
    :goto_4
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lve/f$a;->b:I

    iget-object v1, p0, Lve/f$a;->e:Lve/f;

    iget v1, v1, Lve/f;->d:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lve/f$a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lve/f$a;->b()Lte/f;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lve/f$a;->b:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lve/f$a;->d()Lte/f;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lve/f$a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lve/f$a;->d:Lte/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lve/f$a;->c:Lte/f;

    if-eq v0, v1, :cond_0

    iget v1, p0, Lve/f$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lve/f$a;->b:I

    :cond_0
    invoke-interface {v0}, Lte/f;->getNext()Lte/f;

    move-result-object v0

    iput-object v0, p0, Lve/f$a;->c:Lte/f;

    iget-object v0, p0, Lve/f$a;->e:Lve/f;

    iget-object v1, p0, Lve/f$a;->d:Lte/f;

    invoke-virtual {v0, v1}, Lve/f;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lve/f$a;->d:Lte/f;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must invoke next or previous before invoking remove"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lte/f;

    invoke-virtual {p0, p1}, Lve/f$a;->e(Lte/f;)V

    return-void
.end method
