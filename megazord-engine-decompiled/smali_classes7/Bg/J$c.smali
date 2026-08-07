.class public final LBg/J$c;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.SharedFlowImpl"
    f = "SharedFlow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x174,
        0x17b,
        0x17e
    }
    m = "collect$suspendImpl"
    n = {
        "$this",
        "collector",
        "slot",
        "$this",
        "collector",
        "slot",
        "collectorJob",
        "$this",
        "collector",
        "slot",
        "collectorJob"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/J;->E(LBg/J;LBg/j;LQf/f;)Ljava/lang/Object;
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

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:LBg/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/J<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(LBg/J;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/J<",
            "TT;>;",
            "LQf/f<",
            "-",
            "LBg/J$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/J$c;->g:LBg/J;

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

    iput-object p1, p0, LBg/J$c;->f:Ljava/lang/Object;

    iget p1, p0, LBg/J$c;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/J$c;->h:I

    iget-object p1, p0, LBg/J$c;->g:LBg/J;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LBg/J;->E(LBg/J;LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
