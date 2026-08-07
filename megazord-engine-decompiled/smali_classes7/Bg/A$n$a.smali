.class public final LBg/A$n$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1"
    f = "Transform.kt"
    i = {}
    l = {
        0x47
    }
    m = "emit"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/A$n;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LBg/A$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/A$n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(LBg/A$n;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/A$n<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/A$n$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/A$n$a;->c:LBg/A$n;

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

    iput-object p1, p0, LBg/A$n$a;->b:Ljava/lang/Object;

    iget p1, p0, LBg/A$n$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/A$n$a;->d:I

    iget-object p1, p0, LBg/A$n$a;->c:LBg/A$n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/A$n;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
