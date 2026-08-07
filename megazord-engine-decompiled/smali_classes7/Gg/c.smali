.class public final LGg/c;
.super Lwg/w0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:LGg/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lwg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LGg/c;

    invoke-direct {v0}, LGg/c;-><init>()V

    sput-object v0, LGg/c;->c:LGg/c;

    sget-object v0, LGg/p;->b:LGg/p;

    const/16 v1, 0x40

    invoke-static {}, LEg/W;->a()I

    move-result v2

    invoke-static {v1, v2}, Lng/u;->w(II)I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, LGg/p;->limitedParallelism(I)Lwg/M;

    move-result-object v0

    sput-object v0, LGg/c;->d:Lwg/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwg/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, LGg/c;->d:Lwg/M;

    invoke-virtual {v0, p1, p2}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(LQf/j;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    sget-object v0, LGg/c;->d:Lwg/M;

    invoke-virtual {v0, p1, p2}, Lwg/M;->dispatchYield(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, LQf/l;->b:LQf/l;

    invoke-virtual {p0, v0, p1}, LGg/c;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitedParallelism(I)Lwg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    sget-object v0, LGg/p;->b:LGg/p;

    invoke-virtual {v0, p1}, LGg/p;->limitedParallelism(I)Lwg/M;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method

.method public v()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method
