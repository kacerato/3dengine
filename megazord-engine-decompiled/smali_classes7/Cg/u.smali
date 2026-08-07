.class public final LCg/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "LBg/j<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LCg/u$a;->b:LCg/u$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg/q;

    sput-object v0, LCg/u;->a:Leg/q;

    return-void
.end method

.method public static final synthetic a()Leg/q;
    .locals 1

    sget-object v0, LCg/u;->a:Leg/q;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method
