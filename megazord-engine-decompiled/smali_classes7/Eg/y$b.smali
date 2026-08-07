.class public final LEg/y$b;
.super LEg/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LEg/y;->R(LEg/y;Leg/a;)LEg/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,367:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,367:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic d:Leg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LEg/y;Leg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/y;",
            "Leg/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, LEg/y$b;->d:Leg/a;

    invoke-direct {p0, p1}, LEg/y$a;-><init>(LEg/y;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LEg/y;

    invoke-virtual {p0, p1}, LEg/y$b;->g(LEg/y;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(LEg/y;)Ljava/lang/Object;
    .locals 0
    .param p1    # LEg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, LEg/y$b;->d:Leg/a;

    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, LEg/x;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
