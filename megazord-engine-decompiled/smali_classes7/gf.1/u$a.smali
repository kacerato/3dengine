.class public final Lgf/u$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = -0x42f1490d3f05c855L


# instance fields
.field public final b:Lgf/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/u$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lgf/u$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/u$b<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/u$a;->b:Lgf/u$b;

    iput p2, p0, Lgf/u$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/u$a;->b:Lgf/u$b;

    iget v1, p0, Lgf/u$a;->c:I

    invoke-virtual {v0, v1}, Lgf/u$b;->e(I)V

    return-void
.end method

.method public b()V
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/u$a;->b:Lgf/u$b;

    iget v1, p0, Lgf/u$a;->c:I

    invoke-virtual {v0, v1, p1}, Lgf/u$b;->g(ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/u$a;->b:Lgf/u$b;

    iget v1, p0, Lgf/u$a;->c:I

    invoke-virtual {v0, v1, p1}, Lgf/u$b;->f(ILjava/lang/Throwable;)V

    return-void
.end method
