.class public final LBg/v$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/v;->e(LBg/i;Leg/p;)LBg/i;
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
        "Ljava/lang/Object;",
        "LBg/j;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$a;

.field public final synthetic c:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TT;",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$a;LBg/j;Leg/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$a;",
            "LBg/j<",
            "-TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/v$f;->b:Lkotlin/jvm/internal/m0$a;

    iput-object p2, p0, LBg/v$f;->c:LBg/j;

    iput-object p3, p0, LBg/v$f;->d:Leg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 6
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/v$f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/v$f$a;

    iget v1, v0, LBg/v$f$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/v$f$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/v$f$a;

    invoke-direct {v0, p0, p2}, LBg/v$f$a;-><init>(LBg/v$f;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/v$f$a;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/v$f$a;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LBg/v$f$a;->c:Ljava/lang/Object;

    iget-object v2, v0, LBg/v$f$a;->b:Ljava/lang/Object;

    check-cast v2, LBg/v$f;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LBg/v$f;->b:Lkotlin/jvm/internal/m0$a;

    iget-boolean p2, p2, Lkotlin/jvm/internal/m0$a;->b:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, LBg/v$f;->c:LBg/j;

    iput v5, v0, LBg/v$f$a;->f:I

    invoke-interface {p2, p1, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_6
    iget-object p2, p0, LBg/v$f;->d:Leg/p;

    iput-object p0, v0, LBg/v$f$a;->b:Ljava/lang/Object;

    iput-object p1, v0, LBg/v$f$a;->c:Ljava/lang/Object;

    iput v4, v0, LBg/v$f$a;->f:I

    invoke-interface {p2, p1, v0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, v2, LBg/v$f;->b:Lkotlin/jvm/internal/m0$a;

    iput-boolean v5, p2, Lkotlin/jvm/internal/m0$a;->b:Z

    iget-object p2, v2, LBg/v$f;->c:LBg/j;

    const/4 v2, 0x0

    iput-object v2, v0, LBg/v$f$a;->b:Ljava/lang/Object;

    iput-object v2, v0, LBg/v$f$a;->c:Ljava/lang/Object;

    iput v3, v0, LBg/v$f$a;->f:I

    invoke-interface {p2, p1, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_9
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
