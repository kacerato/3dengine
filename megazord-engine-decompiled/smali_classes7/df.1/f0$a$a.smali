.class public final Ldf/f0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/N;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/N<",
        "TR;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final c:J = -0x6f97610685c39ceL


# instance fields
.field public final synthetic b:Ldf/f0$a;


# direct methods
.method public constructor <init>(Ldf/f0$a;)V
    .locals 0

    iput-object p1, p0, Ldf/f0$a$a;->b:Ldf/f0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/f0$a$a;->b:Ldf/f0$a;

    invoke-virtual {v0, p0, p1}, Ldf/f0$a;->j(Ldf/f0$a$a;Ljava/lang/Object;)V

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

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/f0$a$a;->b:Ldf/f0$a;

    invoke-virtual {v0, p0, p1}, Ldf/f0$a;->f(Ldf/f0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
