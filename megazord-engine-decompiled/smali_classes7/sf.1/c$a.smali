.class public final Lsf/c$a;
.super LTe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf/c$a$a;
    }
.end annotation


# instance fields
.field public volatile b:Z

.field public final synthetic c:Lsf/c;


# direct methods
.method public constructor <init>(Lsf/c;)V
    .locals 0

    iput-object p1, p0, Lsf/c$a;->c:Lsf/c;

    invoke-direct {p0}, LTe/J$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param

    iget-object v0, p0, Lsf/c$a;->c:Lsf/c;

    invoke-virtual {v0, p1}, Lsf/c;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    iget-boolean v0, p0, Lsf/c$a;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    new-instance v7, Lsf/c$b;

    iget-object v0, p0, Lsf/c$a;->c:Lsf/c;

    iget-wide v5, v0, Lsf/c;->d:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v5

    iput-wide v1, v0, Lsf/c;->d:J

    const-wide/16 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lsf/c$b;-><init>(Lsf/c$a;JLjava/lang/Runnable;J)V

    iget-object p1, p0, Lsf/c$a;->c:Lsf/c;

    iget-object p1, p1, Lsf/c;->c:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance p1, Lsf/c$a$a;

    invoke-direct {p1, p0, v7}, Lsf/c$a$a;-><init>(Lsf/c$a;Lsf/c$b;)V

    invoke-static {p1}, LVe/d;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    iget-boolean v0, p0, Lsf/c$a;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    new-instance v7, Lsf/c$b;

    iget-object v0, p0, Lsf/c$a;->c:Lsf/c;

    iget-wide v0, v0, Lsf/c;->e:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long v2, v0, p2

    iget-object p2, p0, Lsf/c$a;->c:Lsf/c;

    iget-wide v5, p2, Lsf/c;->d:J

    const-wide/16 p3, 0x1

    add-long/2addr p3, v5

    iput-wide p3, p2, Lsf/c;->d:J

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lsf/c$b;-><init>(Lsf/c$a;JLjava/lang/Runnable;J)V

    iget-object p1, p0, Lsf/c$a;->c:Lsf/c;

    iget-object p1, p1, Lsf/c;->c:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance p1, Lsf/c$a$a;

    invoke-direct {p1, p0, v7}, Lsf/c$a$a;-><init>(Lsf/c$a;Lsf/c$b;)V

    invoke-static {p1}, LVe/d;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lsf/c$a;->b:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsf/c$a;->b:Z

    return-void
.end method
