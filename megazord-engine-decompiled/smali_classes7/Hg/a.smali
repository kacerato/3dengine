.class public final LHg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LHg/a;->a:J

    return-void
.end method

.method public static final synthetic a(LHg/a;LHg/m;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LHg/a;->d(LHg/m;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b()LHg/e;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, LHg/f;

    sget-object v0, LHg/a$b;->b:LHg/a$b;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Leg/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LHg/f;-><init>(Ljava/lang/Object;Leg/q;Leg/q;ILkotlin/jvm/internal/x;)V

    return-object v6
.end method

.method public final d(LHg/m;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, LHg/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-interface {p1, p2}, LHg/m;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, LHg/a$a;

    invoke-direct {p2, p1, p0}, LHg/a$a;-><init>(LHg/m;LHg/a;)V

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, LHg/l;

    invoke-interface {p1}, LHg/m;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0}, Lwg/c0;->d(LQf/j;)Lwg/b0;

    move-result-object v1

    iget-wide v2, p0, LHg/a;->a:J

    invoke-interface {v1, v2, v3, p2, v0}, Lwg/b0;->q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;

    move-result-object p2

    invoke-interface {p1, p2}, LHg/m;->q(Lwg/m0;)V

    return-void
.end method
