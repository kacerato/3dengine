.class public final Lgf/v$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x245ca3bdfb16b82cL


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lgf/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/v$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;Lgf/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "Lgf/v$a<",
            "*TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/v$a$a;->b:LTe/I;

    iput-object p2, p0, Lgf/v$a$a;->c:Lgf/v$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/v$a$a;->c:Lgf/v$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgf/v$a;->j:Z

    invoke-virtual {v0}, Lgf/v$a;->b()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/v$a$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/v$a$a;->c:Lgf/v$a;

    iget-object v1, v0, Lgf/v$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, v0, Lgf/v$a;->g:Z

    if-nez p1, :cond_0

    iget-object p1, v0, Lgf/v$a;->i:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lgf/v$a;->j:Z

    invoke-virtual {v0}, Lgf/v$a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
