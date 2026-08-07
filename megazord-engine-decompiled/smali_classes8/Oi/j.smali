.class public final synthetic LOi/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:LOi/r;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(LOi/r;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/j;->b:LOi/r;

    iput-object p2, p0, LOi/j;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LOi/j;->b:LOi/r;

    iget-object v1, p0, LOi/j;->c:Ljava/util/concurrent/ExecutorService;

    check-cast p1, LOi/u;

    invoke-static {v0, v1, p1}, LOi/r;->h(LOi/r;Ljava/util/concurrent/ExecutorService;LOi/u;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
