.class public final Ldf/H0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/H0$a;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/v<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x28bcbbd2bea3b5e9L


# instance fields
.field public final b:Ldf/H0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/H0$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf/H0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/H0$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/H0$a$a;->b:Ldf/H0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/H0$a$a;->b:Ldf/H0$a;

    invoke-virtual {v0}, Ldf/H0$a;->e()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/H0$a$a;->b:Ldf/H0$a;

    invoke-virtual {v0, p1}, Ldf/H0$a;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/H0$a$a;->b:Ldf/H0$a;

    invoke-virtual {v0, p1}, Ldf/H0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
