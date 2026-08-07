.class public final Lif/h$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TU;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final e:J = -0x76ddf7e9b08d21a8L


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(LTe/N;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;",
            "LTe/Q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lif/h$a;->b:LTe/N;

    iput-object p2, p0, Lif/h$a;->c:LTe/Q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lif/h$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/h$a;->d:Z

    iget-object v0, p0, Lif/h$a;->c:LTe/Q;

    new-instance v1, Lbf/z;

    iget-object v2, p0, Lif/h$a;->b:LTe/N;

    invoke-direct {v1, p0, v2}, Lbf/z;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LTe/N;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->g(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lif/h$a;->b:LTe/N;

    invoke-interface {p1, p0}, LTe/N;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lif/h$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lif/h$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/h$a;->d:Z

    iget-object v0, p0, Lif/h$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
