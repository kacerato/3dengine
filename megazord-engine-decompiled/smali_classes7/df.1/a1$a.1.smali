.class public final Ldf/a1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LXe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "Ljava/lang/Runnable;",
        "LXe/g<",
        "LVe/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:J = -0x3f2c4fd6dc101621L


# instance fields
.field public final b:Ldf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/a1<",
            "*>;"
        }
    .end annotation
.end field

.field public c:LVe/c;

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ldf/a1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/a1<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/a1$a;->b:Ldf/a1;

    return-void
.end method


# virtual methods
.method public a(LVe/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    iget-object v0, p0, Ldf/a1$a;->b:Ldf/a1;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ldf/a1$a;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf/a1$a;->b:Ldf/a1;

    iget-object v1, v1, Ldf/a1;->c:LWe/a;

    check-cast v1, LYe/g;

    invoke-interface {v1, p1}, LYe/g;->c(LVe/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LVe/c;

    invoke-virtual {p0, p1}, Ldf/a1$a;->a(LVe/c;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Ldf/a1$a;->b:Ldf/a1;

    invoke-virtual {v0, p0}, Ldf/a1;->Q8(Ldf/a1$a;)V

    return-void
.end method
