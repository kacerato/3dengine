.class public final Lgf/V0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/V0$a;
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
        "LTe/I<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = 0x2d2b4e5564d98c4aL


# instance fields
.field public final synthetic b:Lgf/V0$a;


# direct methods
.method public constructor <init>(Lgf/V0$a;)V
    .locals 0

    iput-object p1, p0, Lgf/V0$a$a;->b:Lgf/V0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/V0$a$a;->b:Lgf/V0$a;

    invoke-virtual {v0}, Lgf/V0$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lgf/V0$a$a;->b:Lgf/V0$a;

    invoke-virtual {p1}, Lgf/V0$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/V0$a$a;->b:Lgf/V0$a;

    invoke-virtual {v0, p1}, Lgf/V0$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
