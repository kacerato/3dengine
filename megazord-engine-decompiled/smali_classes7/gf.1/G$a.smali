.class public final Lgf/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/G$a$a;,
        Lgf/G$a$b;,
        Lgf/G$a$c;
    }
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
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J$c;

.field public final f:Z

.field public g:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/G$a;->b:LTe/I;

    iput-wide p2, p0, Lgf/G$a;->c:J

    iput-object p4, p0, Lgf/G$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/G$a;->e:LTe/J$c;

    iput-boolean p6, p0, Lgf/G$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lgf/G$a;->e:LTe/J$c;

    new-instance v1, Lgf/G$a$a;

    invoke-direct {v1, p0}, Lgf/G$a$a;-><init>(Lgf/G$a;)V

    iget-wide v2, p0, Lgf/G$a;->c:J

    iget-object v4, p0, Lgf/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/G$a;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/G$a;->g:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/G$a;->g:LVe/c;

    iget-object p1, p0, Lgf/G$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

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

    iget-object v0, p0, Lgf/G$a;->e:LTe/J$c;

    new-instance v1, Lgf/G$a$c;

    invoke-direct {v1, p0, p1}, Lgf/G$a$c;-><init>(Lgf/G$a;Ljava/lang/Object;)V

    iget-wide v2, p0, Lgf/G$a;->c:J

    iget-object p1, p0, Lgf/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lgf/G$a;->e:LTe/J$c;

    new-instance v1, Lgf/G$a$b;

    invoke-direct {v1, p0, p1}, Lgf/G$a$b;-><init>(Lgf/G$a;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lgf/G$a;->f:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lgf/G$a;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, Lgf/G$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    return-void
.end method
