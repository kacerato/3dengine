.class public final Lgf/A1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/A1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final c:J = -0x26fd42ce5a1686a7L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/A1$a;->b:LTe/I;

    return-void
.end method


# virtual methods
.method public a(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->i(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lgf/A1$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/A1$a;->b:LTe/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->g(Ljava/lang/Object;)V

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/A1$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_0
    return-void
.end method
