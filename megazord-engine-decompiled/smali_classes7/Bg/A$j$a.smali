.class public final LBg/A$j$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$1$1"
    f = "Transform.kt"
    i = {
        0x0
    }
    l = {
        0x6d,
        0x6e
    }
    m = "emit"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/A$j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LBg/A$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/A$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(LBg/A$j;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/A$j<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/A$j$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/A$j$a;->e:LBg/A$j;

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

    iput-object p1, p0, LBg/A$j$a;->d:Ljava/lang/Object;

    iget p1, p0, LBg/A$j$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/A$j$a;->f:I

    iget-object p1, p0, LBg/A$j$a;->e:LBg/A$j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/A$j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
