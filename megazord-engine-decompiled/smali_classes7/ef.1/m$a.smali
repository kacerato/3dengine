.class public final Lef/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/m;
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
        "Ljava/lang/Object;",
        "LTe/v<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:Lef/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/m$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field public d:LVe/c;


# direct methods
.method public constructor <init>(LTe/v;LCi/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;",
            "LCi/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lef/m$b;

    invoke-direct {v0, p1}, Lef/m$b;-><init>(LTe/v;)V

    iput-object v0, p0, Lef/m$a;->b:Lef/m$b;

    iput-object p2, p0, Lef/m$a;->c:LCi/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/m$a;->d:LVe/c;

    invoke-virtual {p0}, Lef/m$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/m$a;->d:LVe/c;

    iget-object v0, p0, Lef/m$a;->b:Lef/m$b;

    iput-object p1, v0, Lef/m$b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lef/m$a;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lef/m$a;->c:LCi/b;

    iget-object v1, p0, Lef/m$a;->b:Lef/m$b;

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lef/m$a;->b:Lef/m$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/m$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/m$a;->d:LVe/c;

    iget-object v0, p0, Lef/m$a;->b:Lef/m$b;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/m$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lef/m$a;->d:LVe/c;

    iget-object p1, p0, Lef/m$a;->b:Lef/m$b;

    iget-object p1, p1, Lef/m$b;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/m$a;->d:LVe/c;

    iget-object v0, p0, Lef/m$a;->b:Lef/m$b;

    iput-object p1, v0, Lef/m$b;->d:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lef/m$a;->c()V

    return-void
.end method
