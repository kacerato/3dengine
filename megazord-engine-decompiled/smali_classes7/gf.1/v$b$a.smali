.class public final Lgf/v$b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final d:J = -0x6760725401800ed9L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:Lgf/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/v$b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;Lgf/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;",
            "Lgf/v$b<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/v$b$a;->b:LTe/I;

    iput-object p2, p0, Lgf/v$b$a;->c:Lgf/v$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/v$b$a;->c:Lgf/v$b;

    invoke-virtual {v0}, Lgf/v$b;->c()V

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
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/v$b$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/v$b$a;->c:Lgf/v$b;

    invoke-virtual {v0}, Lgf/v$b;->dispose()V

    iget-object v0, p0, Lgf/v$b$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
