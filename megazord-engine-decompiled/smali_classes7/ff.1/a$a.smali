.class public final Lff/a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TR;>;",
        "LTe/f;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final d:J = -0x7c2e9f0a46fa84b0L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LTe/G<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lff/a$a;->c:LTe/G;

    iput-object p1, p0, Lff/a$a;->b:LTe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lff/a$a;->c:LTe/G;

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/a$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lff/a$a;->c:LTe/G;

    invoke-interface {v0, p0}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/a$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/a$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
