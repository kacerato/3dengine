.class public final LBg/w$e$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1"
    f = "Merge.kt"
    i = {}
    l = {
        0x53
    }
    m = "emit"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/w$e;->a(LBg/i;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LBg/w$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/w$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(LBg/w$e;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/w$e<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/w$e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/w$e$a;->c:LBg/w$e;

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

    iput-object p1, p0, LBg/w$e$a;->b:Ljava/lang/Object;

    iget p1, p0, LBg/w$e$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/w$e$a;->d:I

    iget-object p1, p0, LBg/w$e$a;->c:LBg/w$e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/w$e;->a(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
