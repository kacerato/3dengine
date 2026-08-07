.class public final Ldf/B$a;
.super Llf/t;
.source "SourceFile"

# interfaces
.implements LTe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/B;
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
        "Llf/t<",
        "TT;TT;>;",
        "LTe/v<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = -0x65f39aa804f9be51L


# instance fields
.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public j:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(LCi/c;LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LTe/y<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/t;-><init>(LCi/c;)V

    iput-object p2, p0, Ldf/B$a;->j:LTe/y;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/B$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/B$a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/B$a;->k:Z

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Llf/t;->c:LCi/d;

    iget-object v0, p0, Ldf/B$a;->j:LTe/y;

    const/4 v1, 0x0

    iput-object v1, p0, Ldf/B$a;->j:LTe/y;

    invoke-interface {v0, p0}, LTe/y;->d(LTe/v;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Llf/t;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Llf/t;->cancel()V

    iget-object v0, p0, Ldf/B$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Ldf/B$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Llf/t;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llf/t;->e:J

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
