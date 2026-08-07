.class public final LBg/Y$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.SubscribedFlowCollector"
    f = "Share.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1a3,
        0x1a7
    }
    m = "onSubscription"
    n = {
        "this",
        "safeCollector"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/Y;->a(LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LBg/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/Y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(LBg/Y;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/Y<",
            "TT;>;",
            "LQf/f<",
            "-",
            "LBg/Y$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/Y$a;->e:LBg/Y;

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

    iput-object p1, p0, LBg/Y$a;->d:Ljava/lang/Object;

    iget p1, p0, LBg/Y$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/Y$a;->f:I

    iget-object p1, p0, LBg/Y$a;->e:LBg/Y;

    invoke-virtual {p1, p0}, LBg/Y;->a(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
