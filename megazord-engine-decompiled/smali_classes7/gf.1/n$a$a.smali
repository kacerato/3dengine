.class public final Lgf/n$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Open:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TOpen;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final c:J = -0x75f145dafa87c3a6L


# instance fields
.field public final b:Lgf/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/n$a<",
            "**TOpen;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgf/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/n$a<",
            "**TOpen;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/n$a$a;->b:Lgf/n$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/n$a$a;->b:Lgf/n$a;

    invoke-virtual {v0, p0}, Lgf/n$a;->i(Lgf/n$a$a;)V

    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/n$a$a;->b:Lgf/n$a;

    invoke-virtual {v0, p1}, Lgf/n$a;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/n$a$a;->b:Lgf/n$a;

    invoke-virtual {v0, p0, p1}, Lgf/n$a;->b(LVe/c;Ljava/lang/Throwable;)V

    return-void
.end method
