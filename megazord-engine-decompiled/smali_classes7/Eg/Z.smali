.class public final LEg/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Ljava/lang/Object;",
            "LQf/j$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Lwg/l1<",
            "*>;",
            "LQf/j$b;",
            "Lwg/l1<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "LEg/f0;",
            "LQf/j$b;",
            "LEg/f0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LEg/Z;->a:LEg/T;

    sget-object v0, LEg/Z$a;->b:LEg/Z$a;

    sput-object v0, LEg/Z;->b:Leg/p;

    sget-object v0, LEg/Z$b;->b:LEg/Z$b;

    sput-object v0, LEg/Z;->c:Leg/p;

    sget-object v0, LEg/Z$c;->b:LEg/Z$c;

    sput-object v0, LEg/Z;->d:Leg/p;

    return-void
.end method

.method public static final a(LQf/j;Ljava/lang/Object;)V
    .locals 2
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, LEg/Z;->a:LEg/T;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, LEg/f0;

    if-eqz v0, :cond_1

    check-cast p1, LEg/f0;

    invoke-virtual {p1, p0}, LEg/f0;->b(LQf/j;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, LEg/Z;->c:Leg/p;

    invoke-interface {p0, v0, v1}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lwg/l1;

    invoke-interface {v0, p0, p1}, Lwg/l1;->Z(LQf/j;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(LQf/j;)Ljava/lang/Object;
    .locals 2
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LEg/Z;->b:Leg/p;

    invoke-interface {p0, v0, v1}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, LEg/Z;->b(LQf/j;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, LEg/Z;->a:LEg/T;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, LEg/f0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, LEg/f0;-><init>(LQf/j;I)V

    sget-object p1, LEg/Z;->d:Leg/p;

    invoke-interface {p0, v0, p1}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwg/l1;

    invoke-interface {p1, p0}, Lwg/l1;->B(LQf/j;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
