.class public final Lgf/F1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/F1;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final i:J = -0x67d4a190b6f57310L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public e:J

.field public f:LVe/c;

.field public g:Ltf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile h:Z


# direct methods
.method public constructor <init>(LTe/I;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/F1$a;->b:LTe/I;

    iput-wide p2, p0, Lgf/F1$a;->c:J

    iput p4, p0, Lgf/F1$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/F1$a;->g:Ltf/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lgf/F1$a;->g:Ltf/j;

    invoke-virtual {v0}, Ltf/j;->a()V

    :cond_0
    iget-object v0, p0, Lgf/F1$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/F1$a;->h:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/F1$a;->h:Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/F1$a;->f:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/F1$a;->f:LVe/c;

    iget-object p1, p0, Lgf/F1$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/F1$a;->g:Ltf/j;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lgf/F1$a;->h:Z

    if-nez v1, :cond_0

    iget v0, p0, Lgf/F1$a;->d:I

    invoke-static {v0, p0}, Ltf/j;->q8(ILjava/lang/Runnable;)Ltf/j;

    move-result-object v0

    iput-object v0, p0, Lgf/F1$a;->g:Ltf/j;

    iget-object v1, p0, Lgf/F1$a;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ltf/j;->g(Ljava/lang/Object;)V

    iget-wide v1, p0, Lgf/F1$a;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lgf/F1$a;->e:J

    iget-wide v3, p0, Lgf/F1$a;->c:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lgf/F1$a;->e:J

    const/4 p1, 0x0

    iput-object p1, p0, Lgf/F1$a;->g:Ltf/j;

    invoke-virtual {v0}, Ltf/j;->a()V

    iget-boolean p1, p0, Lgf/F1$a;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgf/F1$a;->f:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/F1$a;->g:Ltf/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lgf/F1$a;->g:Ltf/j;

    invoke-virtual {v0, p1}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lgf/F1$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lgf/F1$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/F1$a;->f:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method
