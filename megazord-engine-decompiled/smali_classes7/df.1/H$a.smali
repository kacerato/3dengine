.class public final Ldf/H$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/H;
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
        "Ljava/lang/Runnable;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = 0x5e8933e4e0c30cf5L


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ldf/H$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/H$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLdf/H$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ldf/H$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ldf/H$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ldf/H$a;->b:Ljava/lang/Object;

    iput-wide p2, p0, Ldf/H$a;->c:J

    iput-object p4, p0, Ldf/H$a;->d:Ldf/H$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ldf/H$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/H$a;->d:Ldf/H$b;

    iget-wide v1, p0, Ldf/H$a;->c:J

    iget-object v3, p0, Ldf/H$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p0}, Ldf/H$b;->b(JLjava/lang/Object;Ldf/H$a;)V

    :cond_0
    return-void
.end method

.method public b(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

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

.method public run()V
    .locals 0

    invoke-virtual {p0}, Ldf/H$a;->a()V

    return-void
.end method
