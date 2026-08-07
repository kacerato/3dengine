.class public final Lgf/l0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "Ljava/lang/Object;",
        ">;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final e:J = 0x1a24ec53e2780a15L


# instance fields
.field public final b:Lgf/l0$b;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Lgf/l0$b;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/l0$c;->b:Lgf/l0$b;

    iput-boolean p2, p0, Lgf/l0$c;->c:Z

    iput p3, p0, Lgf/l0$c;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/l0$c;->b:Lgf/l0$b;

    iget-boolean v1, p0, Lgf/l0$c;->c:Z

    invoke-interface {v0, v1, p0}, Lgf/l0$b;->e(ZLgf/l0$c;)V

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

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/l0$c;->b:Lgf/l0$b;

    iget-boolean v0, p0, Lgf/l0$c;->c:Z

    invoke-interface {p1, v0, p0}, Lgf/l0$b;->e(ZLgf/l0$c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/l0$c;->b:Lgf/l0$b;

    invoke-interface {v0, p1}, Lgf/l0$b;->b(Ljava/lang/Throwable;)V

    return-void
.end method
