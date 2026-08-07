.class public final Lgf/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x10756d62aa142dccL


# instance fields
.field public final b:Lgf/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lgf/h$a;ILTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/h$a<",
            "TT;>;I",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/h$b;->b:Lgf/h$a;

    iput p2, p0, Lgf/h$b;->c:I

    iput-object p3, p0, Lgf/h$b;->d:LTe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/h$b;->b:Lgf/h$a;

    iget v1, p0, Lgf/h$b;->c:I

    invoke-virtual {v0, v1}, Lgf/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/h$b;->e:Z

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/h$b;->b:Lgf/h$a;

    iget v1, p0, Lgf/h$b;->c:I

    invoke-virtual {v0, v1}, Lgf/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/h$b;->e:Z

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lgf/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/h$b;->b:Lgf/h$a;

    iget v1, p0, Lgf/h$b;->c:I

    invoke-virtual {v0, v1}, Lgf/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/h$b;->e:Z

    iget-object v0, p0, Lgf/h$b;->d:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
