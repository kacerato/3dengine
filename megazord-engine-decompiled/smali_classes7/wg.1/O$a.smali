.class public final Lwg/O$a;
.super LQf/a;
.source "SourceFile"

# interfaces
.implements Lwg/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/O;->a(Leg/p;)Lwg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,110:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,110:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "LQf/j;",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/p;Lwg/N$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "LQf/j;",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;",
            "Lwg/N$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwg/O$a;->b:Leg/p;

    invoke-direct {p0, p2}, LQf/a;-><init>(LQf/j$c;)V

    return-void
.end method


# virtual methods
.method public n(LQf/j;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lwg/O$a;->b:Leg/p;

    invoke-interface {v0, p1, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
