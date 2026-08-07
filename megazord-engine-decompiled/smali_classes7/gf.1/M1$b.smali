.class public final Lgf/M1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lgf/M1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/M1$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Throwable;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgf/M1$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/M1$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lgf/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lgf/M1$b;->b:Lgf/M1$a;

    new-instance p1, Ljf/c;

    invoke-direct {p1, p2}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/M1$b;->c:Ljf/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/M1$b;->d:Z

    iget-object v0, p0, Lgf/M1$b;->b:Lgf/M1$a;

    invoke-virtual {v0}, Lgf/M1$a;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lgf/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/M1$b;->c:Ljf/c;

    invoke-virtual {v0, p1}, Ljf/c;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgf/M1$b;->b:Lgf/M1$a;

    invoke-virtual {p1}, Lgf/M1$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lgf/M1$b;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/M1$b;->d:Z

    iget-object p1, p0, Lgf/M1$b;->b:Lgf/M1$a;

    invoke-virtual {p1}, Lgf/M1$a;->f()V

    return-void
.end method
