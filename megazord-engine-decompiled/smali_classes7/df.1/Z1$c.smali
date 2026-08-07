.class public final Ldf/Z1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:J = 0x2d3210de62c61a18L


# instance fields
.field public final b:Ldf/Z1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/Z1$b<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ldf/Z1$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/Z1$b<",
            "**>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/Z1$c;->b:Ldf/Z1$b;

    iput p2, p0, Ldf/Z1$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ldf/Z1$c;->b:Ldf/Z1$b;

    iget v1, p0, Ldf/Z1$c;->c:I

    iget-boolean v2, p0, Ldf/Z1$c;->d:Z

    invoke-virtual {v0, v1, v2}, Ldf/Z1$b;->c(IZ)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Ldf/Z1$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Z1$c;->d:Z

    :cond_0
    iget-object v0, p0, Ldf/Z1$c;->b:Ldf/Z1$b;

    iget v1, p0, Ldf/Z1$c;->c:I

    invoke-virtual {v0, v1, p1}, Ldf/Z1$b;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Ldf/Z1$c;->b:Ldf/Z1$b;

    iget v1, p0, Ldf/Z1$c;->c:I

    invoke-virtual {v0, v1, p1}, Ldf/Z1$b;->d(ILjava/lang/Throwable;)V

    return-void
.end method
