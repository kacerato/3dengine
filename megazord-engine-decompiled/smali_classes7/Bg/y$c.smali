.class public final LBg/y$c;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ReduceKt"
    f = "Reduce.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xb7
    }
    m = "first"
    n = {
        "result",
        "collector$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/y;->a(LBg/i;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTf/d;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public e:I


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LBg/y$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTf/d;-><init>(LQf/f;)V

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

    iput-object p1, p0, LBg/y$c;->d:Ljava/lang/Object;

    iget p1, p0, LBg/y$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/y$c;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, LBg/k;->u0(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
