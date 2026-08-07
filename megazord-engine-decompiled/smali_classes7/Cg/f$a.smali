.class public final LCg/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/f;->f(Lyg/B;LQf/f;)Ljava/lang/Object;
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
.field public final synthetic b:Lwg/K0;

.field public final synthetic c:LJg/d;

.field public final synthetic d:Lyg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LCg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCg/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/K0;LJg/d;Lyg/B;LCg/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/K0;",
            "LJg/d;",
            "Lyg/B<",
            "-TT;>;",
            "LCg/w<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/f$a;->b:Lwg/K0;

    iput-object p2, p0, LCg/f$a;->c:LJg/d;

    iput-object p3, p0, LCg/f$a;->d:Lyg/B;

    iput-object p4, p0, LCg/f$a;->e:LCg/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LBg/i;LQf/f;)Ljava/lang/Object;
    .locals 7
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LCg/f$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LCg/f$a$b;

    iget v1, v0, LCg/f$a$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LCg/f$a$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LCg/f$a$b;

    invoke-direct {v0, p0, p2}, LCg/f$a$b;-><init>(LCg/f$a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LCg/f$a$b;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LCg/f$a$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LCg/f$a$b;->c:Ljava/lang/Object;

    check-cast p1, LBg/i;

    iget-object v0, v0, LCg/f$a$b;->b:Ljava/lang/Object;

    check-cast v0, LCg/f$a;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LCg/f$a;->b:Lwg/K0;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lwg/N0;->A(Lwg/K0;)V

    :cond_3
    iget-object p2, p0, LCg/f$a;->c:LJg/d;

    iput-object p0, v0, LCg/f$a$b;->b:Ljava/lang/Object;

    iput-object p1, v0, LCg/f$a$b;->c:Ljava/lang/Object;

    iput v3, v0, LCg/f$a$b;->f:I

    invoke-interface {p2, v0}, LJg/d;->h(LQf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    :goto_1
    iget-object v1, v0, LCg/f$a;->d:Lyg/B;

    new-instance v4, LCg/f$a$a;

    iget-object p2, v0, LCg/f$a;->e:LCg/w;

    iget-object v0, v0, LCg/f$a;->c:LJg/d;

    const/4 v2, 0x0

    invoke-direct {v4, p1, p2, v0, v2}, LCg/f$a$a;-><init>(LBg/i;LCg/w;LJg/d;LQf/f;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/i;

    invoke-virtual {p0, p1, p2}, LCg/f$a;->a(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
