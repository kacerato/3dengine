.class public final LBg/b$a;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    i = {
        0x0
    }
    l = {
        0x14e
    }
    m = "collectTo"
    n = {
        "scope"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/b;->f(Lyg/B;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LBg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(LBg/b;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/b<",
            "TT;>;",
            "LQf/f<",
            "-",
            "LBg/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/b$a;->d:LBg/b;

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

    iput-object p1, p0, LBg/b$a;->c:Ljava/lang/Object;

    iget p1, p0, LBg/b$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LBg/b$a;->e:I

    iget-object p1, p0, LBg/b$a;->d:LBg/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LBg/b;->f(Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
