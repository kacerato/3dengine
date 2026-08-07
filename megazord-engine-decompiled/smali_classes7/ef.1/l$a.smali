.class public final Lef/l$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/l;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/v<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final h:J = 0x4d4175c4cbdbad1cL


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/v;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lef/l$a;->b:LTe/v;

    iput-wide p2, p0, Lef/l$a;->c:J

    iput-object p4, p0, Lef/l$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lef/l$a;->e:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lef/l$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lef/l$a;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lef/l$a;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lef/l$a;->e:LTe/J;

    iget-wide v1, p0, Lef/l$a;->c:J

    iget-object v3, p0, Lef/l$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v0

    invoke-static {p0, v0}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

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

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lef/l$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lef/l$a;->g:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lef/l$a;->c()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lef/l$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lef/l$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lef/l$a;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lef/l$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lef/l$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :goto_0
    return-void
.end method
