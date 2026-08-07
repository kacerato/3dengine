.class public final LBg/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/g;->a(LBg/j;LQf/f;)Ljava/lang/Object;
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
.field public final synthetic b:LBg/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/g;Lkotlin/jvm/internal/m0$h;LBg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/g<",
            "TT;>;",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "LBg/j<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/g$a;->b:LBg/g;

    iput-object p2, p0, LBg/g$a;->c:Lkotlin/jvm/internal/m0$h;

    iput-object p3, p0, LBg/g$a;->d:LBg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, LBg/g$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/g$a$a;

    iget v1, v0, LBg/g$a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/g$a$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/g$a$a;

    invoke-direct {v0, p0, p2}, LBg/g$a$a;-><init>(LBg/g$a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/g$a$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/g$a$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LBg/g$a;->b:LBg/g;

    iget-object p2, p2, LBg/g;->c:Leg/l;

    invoke-interface {p2, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, LBg/g$a;->c:Lkotlin/jvm/internal/m0$h;

    iget-object v2, v2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object v4, LCg/s;->a:LEg/T;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, LBg/g$a;->b:LBg/g;

    iget-object v4, v4, LBg/g;->d:Leg/p;

    invoke-interface {v4, v2, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_4
    :goto_1
    iget-object v2, p0, LBg/g$a;->c:Lkotlin/jvm/internal/m0$h;

    iput-object p2, v2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    iget-object p2, p0, LBg/g$a;->d:LBg/j;

    iput v3, v0, LBg/g$a$a;->d:I

    invoke-interface {p2, p1, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
