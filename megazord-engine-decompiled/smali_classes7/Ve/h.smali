.class public final LVe/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVe/c;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(LVe/c;)V
    .locals 1
    .param p1    # LVe/c;
        .annotation build LUe/g;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()LVe/c;
    .locals 2
    .annotation build LUe/g;
    .end annotation

    iget-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    invoke-static {}, LVe/d;->a()LVe/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(LVe/c;)Z
    .locals 1
    .param p1    # LVe/c;
        .annotation build LUe/g;
        .end annotation
    .end param

    iget-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    return p1
.end method

.method public c(LVe/c;)Z
    .locals 1
    .param p1    # LVe/c;
        .annotation build LUe/g;
        .end annotation
    .end param

    iget-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->g(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LVe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
