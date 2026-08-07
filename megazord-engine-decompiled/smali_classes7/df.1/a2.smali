.class public final Ldf/a2;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/a2$b;,
        Ldf/a2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:[LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>([LCi/b;Ljava/lang/Iterable;LXe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/a2;->c:[LCi/b;

    iput-object p2, p0, Ldf/a2;->d:Ljava/lang/Iterable;

    iput-object p3, p0, Ldf/a2;->e:LXe/o;

    iput p4, p0, Ldf/a2;->f:I

    iput-boolean p5, p0, Ldf/a2;->g:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a2;->c:[LCi/b;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [LCi/b;

    iget-object v1, p0, Ldf/a2;->d:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCi/b;

    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [LCi/b;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    :goto_1
    move v7, v3

    goto :goto_2

    :cond_2
    array-length v3, v0

    goto :goto_1

    :goto_2
    if-nez v7, :cond_3

    invoke-static {p1}, Lmf/g;->a(LCi/c;)V

    return-void

    :cond_3
    new-instance v8, Ldf/a2$a;

    iget-object v3, p0, Ldf/a2;->e:LXe/o;

    iget v5, p0, Ldf/a2;->f:I

    iget-boolean v6, p0, Ldf/a2;->g:Z

    move-object v1, v8

    move-object v2, p1

    move v4, v7

    invoke-direct/range {v1 .. v6}, Ldf/a2$a;-><init>(LCi/c;LXe/o;IIZ)V

    invoke-interface {p1, v8}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v8, v0, v7}, Ldf/a2$a;->d([LCi/b;I)V

    return-void
.end method
