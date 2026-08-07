.class public final LCg/v$b$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/v$b;->a(LBg/j;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LCg/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCg/v$b;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(LCg/v$b;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCg/v$b;",
            "LQf/f<",
            "-",
            "LCg/v$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/v$b$a;->c:LCg/v$b;

    invoke-direct {p0, p2}, LTf/d;-><init>(LQf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, LCg/v$b$a;->b:Ljava/lang/Object;

    iget p1, p0, LCg/v$b$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LCg/v$b$a;->d:I

    iget-object p1, p0, LCg/v$b$a;->c:LCg/v$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LCg/v$b;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
