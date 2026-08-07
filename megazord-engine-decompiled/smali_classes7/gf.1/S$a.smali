.class public final Lgf/S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/S;
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
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


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

.field public d:LVe/c;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(LTe/v;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/S$a;->b:LTe/v;

    iput-wide p2, p0, Lgf/S$a;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/S$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/S$a;->f:Z

    iget-object v0, p0, Lgf/S$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/S$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/S$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/S$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/S$a;->d:LVe/c;

    iget-object p1, p0, Lgf/S$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/S$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lgf/S$a;->e:J

    iget-wide v2, p0, Lgf/S$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/S$a;->f:Z

    iget-object v0, p0, Lgf/S$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/S$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgf/S$a;->e:J

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/S$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/S$a;->f:Z

    iget-object v0, p0, Lgf/S$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
