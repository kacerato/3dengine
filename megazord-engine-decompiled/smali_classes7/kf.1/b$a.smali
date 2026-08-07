.class public final Lkf/b$a;
.super LTe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:LYe/f;

.field public final c:LVe/b;

.field public final d:LYe/f;

.field public final e:Lkf/b$c;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lkf/b$c;)V
    .locals 2

    invoke-direct {p0}, LTe/J$c;-><init>()V

    iput-object p1, p0, Lkf/b$a;->e:Lkf/b$c;

    new-instance p1, LYe/f;

    invoke-direct {p1}, LYe/f;-><init>()V

    iput-object p1, p0, Lkf/b$a;->b:LYe/f;

    new-instance v0, LVe/b;

    invoke-direct {v0}, LVe/b;-><init>()V

    iput-object v0, p0, Lkf/b$a;->c:LVe/b;

    new-instance v1, LYe/f;

    invoke-direct {v1}, LYe/f;-><init>()V

    iput-object v1, p0, Lkf/b$a;->d:LYe/f;

    invoke-virtual {v1, p1}, LYe/f;->b(LVe/c;)Z

    invoke-virtual {v1, v0}, LYe/f;->b(LVe/c;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    iget-boolean v0, p0, Lkf/b$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    iget-object v0, p0, Lkf/b$a;->e:Lkf/b$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lkf/b$a;->b:LYe/f;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lkf/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LYe/c;)Lkf/n;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 6
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

    iget-boolean v0, p0, Lkf/b$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    iget-object v0, p0, Lkf/b$a;->e:Lkf/b$c;

    iget-object v5, p0, Lkf/b$a;->c:LVe/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lkf/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LYe/c;)Lkf/n;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lkf/b$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lkf/b$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkf/b$a;->f:Z

    iget-object v0, p0, Lkf/b$a;->d:LYe/f;

    invoke-virtual {v0}, LYe/f;->dispose()V

    :cond_0
    return-void
.end method
