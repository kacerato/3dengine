.class public final Lwg/L$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/L;->a(LQf/j;LQf/j;Z)LQf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "LQf/j;",
        "LQf/j$b;",
        "LQf/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "LQf/j;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "LQf/j;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lwg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iput-boolean p2, p0, Lwg/L$b;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(LQf/j;LQf/j$b;)LQf/j;
    .locals 4
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Lwg/J;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lwg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast v0, LQf/j;

    invoke-interface {p2}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v1

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lwg/L$b;->c:Z

    check-cast p2, Lwg/J;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lwg/J;->u()Lwg/J;

    move-result-object p2

    :cond_1
    invoke-interface {p1, p2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lwg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v2, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast v2, LQf/j;

    invoke-interface {p2}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v3

    invoke-interface {v2, v3}, LQf/j;->minusKey(LQf/j$c;)LQf/j;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, Lwg/J;

    invoke-interface {p2, v0}, Lwg/J;->U(LQf/j$b;)LQf/j;

    move-result-object p2

    invoke-interface {p1, p2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQf/j;

    check-cast p2, LQf/j$b;

    invoke-virtual {p0, p1, p2}, Lwg/L$b;->c(LQf/j;LQf/j$b;)LQf/j;

    move-result-object p1

    return-object p1
.end method
