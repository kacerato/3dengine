.class public final Lif/E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/E;
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
        "LTe/q<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LCi/d;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Z

.field public volatile f:Z


# direct methods
.method public constructor <init>(LTe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif/E$a;->b:LTe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lif/E$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/E$a;->e:Z

    iget-object v0, p0, Lif/E$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lif/E$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lif/E$a;->b:LTe/N;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "The source Publisher is empty"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lif/E$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lif/E$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/E$a;->f:Z

    iget-object v0, p0, Lif/E$a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lif/E$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lif/E$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lif/E$a;->c:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lif/E$a;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lif/E$a;->d:Ljava/lang/Object;

    iget-object p1, p0, Lif/E$a;->b:LTe/N;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Too many elements in the Publisher"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lif/E$a;->d:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Lif/E$a;->c:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lif/E$a;->c:LCi/d;

    iget-object v0, p0, Lif/E$a;->b:LTe/N;

    invoke-interface {v0, p0}, LTe/N;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lif/E$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/E$a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lif/E$a;->d:Ljava/lang/Object;

    iget-object v0, p0, Lif/E$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
