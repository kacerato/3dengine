.class public final synthetic LBg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LBg/s$b;->b:LBg/s$b;

    sput-object v0, LBg/s;->a:Leg/l;

    sget-object v0, LBg/s$a;->b:LBg/s$a;

    sput-object v0, LBg/s;->b:Leg/p;

    return-void
.end method

.method public static final a(LBg/i;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, LBg/U;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LBg/s;->a:Leg/l;

    sget-object v1, LBg/s;->b:Leg/p;

    invoke-static {p0, v0, v1}, LBg/s;->d(LBg/i;Leg/l;Leg/p;)LBg/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(LBg/i;Leg/p;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LBg/s;->a:Leg/l;

    const-string v1, "null cannot be cast to non-null type kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Boolean>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leg/p;

    invoke-static {p0, v0, p1}, LBg/s;->d(LBg/i;Leg/l;Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LBg/i;Leg/l;)LBg/i;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/l<",
            "-TT;+TK;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LBg/s;->b:Leg/p;

    invoke-static {p0, p1, v0}, LBg/s;->d(LBg/i;Leg/l;Leg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LBg/i;Leg/l;Leg/p;)LBg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Leg/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LBg/g;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LBg/g;

    iget-object v1, v0, LBg/g;->c:Leg/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, LBg/g;->d:Leg/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LBg/g;

    invoke-direct {v0, p0, p1, p2}, LBg/g;-><init>(LBg/i;Leg/l;Leg/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
