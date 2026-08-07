.class public final LDg/e$d;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDg/e;->g(Ljava/util/concurrent/CompletionStage;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LDg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDg/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;LDg/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "LDg/b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LDg/e$d;->b:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, LDg/e$d;->c:LDg/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LDg/e$d;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, LDg/e$d;->b:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 3
    iget-object p1, p0, LDg/e$d;->c:LDg/b;

    const/4 v0, 0x0

    iput-object v0, p1, LDg/b;->cont:LQf/f;

    return-void
.end method
