.class public final LBg/q$d$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__CountKt$count$4"
    f = "Count.kt"
    i = {
        0x0
    }
    l = {
        0x1e
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
    value = LBg/q$d;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LBg/q$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/q$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(LBg/q$d;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/q$d<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/q$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/q$d$a;->d:LBg/q$d;

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

    iput-object p1, p0, LBg/q$d$a;->c:Ljava/lang/Object;

    iget p1, p0, LBg/q$d$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/q$d$a;->e:I

    iget-object p1, p0, LBg/q$d$a;->d:LBg/q$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/q$d;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
