.class public Lp3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lp3/y$a;->INSTANCE:Lp3/y$a;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;I)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lp3/A;

    invoke-direct {v0, p0, p1}, Lp3/A;-><init>(Ljava/util/concurrent/Executor;I)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lp3/D;

    invoke-direct {v0, p0, p1}, Lp3/D;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    new-instance v0, Lp3/o;

    invoke-static {p0, p1}, Lp3/y;->c(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lo3/y;

    invoke-virtual {p1}, Lo3/y;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, p1}, Lp3/o;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static e(Ljava/util/concurrent/Executor;)Lp3/E;
    .locals 2

    new-instance v0, Lp3/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lp3/F;-><init>(ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static f(Ljava/util/concurrent/ExecutorService;)Lp3/G;
    .locals 2

    new-instance v0, Lp3/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lp3/J;-><init>(ZLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static g(Ljava/util/concurrent/ScheduledExecutorService;)Lp3/K;
    .locals 2

    new-instance v0, Lp3/L;

    invoke-static {p0}, Lp3/y;->f(Ljava/util/concurrent/ExecutorService;)Lp3/G;

    move-result-object p0

    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lo3/y;

    invoke-virtual {v1}, Lo3/y;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v1}, Lp3/L;-><init>(Lp3/G;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static h(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lp3/M;

    invoke-direct {v0, p0}, Lp3/M;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
