.class public final LBg/r$c$c$a$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1"
    f = "Delay.kt"
    i = {}
    l = {
        0xd2
    }
    m = "emit"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/r$c$c$a;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LBg/r$c$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/r$c$c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(LBg/r$c$c$a;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/r$c$c$a<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/r$c$c$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r$c$c$a$a;->c:LBg/r$c$c$a;

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

    iput-object p1, p0, LBg/r$c$c$a$a;->b:Ljava/lang/Object;

    iget p1, p0, LBg/r$c$c$a$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/r$c$c$a$a;->d:I

    iget-object p1, p0, LBg/r$c$c$a$a;->c:LBg/r$c$c$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/r$c$c$a;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
