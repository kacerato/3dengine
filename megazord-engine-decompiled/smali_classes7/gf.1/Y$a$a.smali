.class public final Lgf/Y$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/Y$a;
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
        "LTe/f;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final c:J = 0x77710b9f43210614L


# instance fields
.field public final synthetic b:Lgf/Y$a;


# direct methods
.method public constructor <init>(Lgf/Y$a;)V
    .locals 0

    iput-object p1, p0, Lgf/Y$a$a;->b:Lgf/Y$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/Y$a$a;->b:Lgf/Y$a;

    invoke-virtual {v0, p0}, Lgf/Y$a;->c(Lgf/Y$a$a;)V

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

    iget-object v0, p0, Lgf/Y$a$a;->b:Lgf/Y$a;

    invoke-virtual {v0, p0, p1}, Lgf/Y$a;->f(Lgf/Y$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
