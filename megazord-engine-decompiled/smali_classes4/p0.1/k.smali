.class public abstract Lp0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lr0/h;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .annotation runtime Lr0/i;
    .end annotation

    new-instance v0, Lp0/p;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lp0/p;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
