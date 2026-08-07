.class public final Lwg/R0$f;
.super LEg/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/R0;->e0(Ljava/lang/Object;Lwg/W0;Lwg/Q0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic d:Lwg/R0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LEg/y;Lwg/R0;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lwg/R0$f;->d:Lwg/R0;

    iput-object p3, p0, Lwg/R0$f;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, LEg/y$a;-><init>(LEg/y;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LEg/y;

    invoke-virtual {p0, p1}, Lwg/R0$f;->g(LEg/y;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(LEg/y;)Ljava/lang/Object;
    .locals 1
    .param p1    # LEg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lwg/R0$f;->d:Lwg/R0;

    invoke-virtual {p1}, Lwg/R0;->J0()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lwg/R0$f;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, LEg/x;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
