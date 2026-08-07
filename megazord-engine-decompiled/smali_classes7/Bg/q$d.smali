.class public final LBg/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/q;->b(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
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
.field public final synthetic b:Leg/p;
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

.field public final synthetic c:Lkotlin/jvm/internal/m0$f;


# direct methods
.method public constructor <init>(Leg/p;Lkotlin/jvm/internal/m0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/m0$f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LBg/q$d;->b:Leg/p;

    iput-object p2, p0, LBg/q$d;->c:Lkotlin/jvm/internal/m0$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, LBg/q$d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/q$d$a;

    iget v1, v0, LBg/q$d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/q$d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/q$d$a;

    invoke-direct {v0, p0, p2}, LBg/q$d$a;-><init>(LBg/q$d;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/q$d$a;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/q$d$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LBg/q$d$a;->b:Ljava/lang/Object;

    check-cast p1, LBg/q$d;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LBg/q$d;->b:Leg/p;

    iput-object p0, v0, LBg/q$d$a;->b:Ljava/lang/Object;

    iput v3, v0, LBg/q$d$a;->e:I

    invoke-interface {p2, p1, v0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, LBg/q$d;->c:Lkotlin/jvm/internal/m0$f;

    iget p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/2addr p2, v3

    iput p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    :cond_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
