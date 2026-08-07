.class public Lid/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lid/n;

.field public b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lid/n;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Lid/n;-><init>(I)V

    iput-object v0, p0, Lid/r;->a:Lid/n;

    return-void
.end method

.method public static synthetic a(Lid/r;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lid/r;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;Lid/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/q;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lid/r;->b:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lid/r;->a:Lid/n;

    new-instance v1, Lid/r$a;

    invoke-direct {v1, p0, p2}, Lid/r$a;-><init>(Lid/r;Lid/q;)V

    invoke-virtual {v0, p1, v1}, Lid/n;->F(Ljava/util/List;Lid/p;)V

    :try_start_0
    iget-object p1, p0, Lid/r;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
