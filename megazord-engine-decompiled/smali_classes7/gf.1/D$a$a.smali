.class public final Lgf/D$a$a;
.super Lof/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/D$a;
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
        "Lof/e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final c:Lgf/D$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/D$a<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lgf/D$a;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/D$a<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lof/e;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgf/D$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lgf/D$a$a;->c:Lgf/D$a;

    iput-wide p2, p0, Lgf/D$a$a;->d:J

    iput-object p4, p0, Lgf/D$a$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/D$a$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/D$a$a;->f:Z

    invoke-virtual {p0}, Lgf/D$a$a;->f()V

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lgf/D$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/D$a$a;->c:Lgf/D$a;

    iget-wide v1, p0, Lgf/D$a$a;->d:J

    iget-object v3, p0, Lgf/D$a$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lgf/D$a;->b(JLjava/lang/Object;)V

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

    iget-boolean p1, p0, Lgf/D$a$a;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/D$a$a;->f:Z

    invoke-virtual {p0}, Lof/e;->dispose()V

    invoke-virtual {p0}, Lgf/D$a$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/D$a$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/D$a$a;->f:Z

    iget-object v0, p0, Lgf/D$a$a;->c:Lgf/D$a;

    invoke-virtual {v0, p1}, Lgf/D$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
