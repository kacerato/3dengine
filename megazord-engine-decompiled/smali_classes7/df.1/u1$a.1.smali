.class public final Ldf/u1$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TT;>;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final e:J = -0x34d6eda843bdac95L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:LCi/d;


# direct methods
.method public constructor <init>(LCi/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Ldf/u1$a;->b:LCi/c;

    iput p2, p0, Ldf/u1$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/u1$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/u1$a;->d:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ldf/u1$a;->c:I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldf/u1$a;->b:LCi/c;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/u1$a;->d:LCi/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, LCi/d;->i(J)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/u1$a;->d:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/u1$a;->d:LCi/d;

    iget-object p1, p0, Ldf/u1$a;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/u1$a;->d:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/u1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
