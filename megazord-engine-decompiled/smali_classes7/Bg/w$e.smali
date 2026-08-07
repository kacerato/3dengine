.class public final LBg/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/w;->e(LBg/i;)LBg/i;
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
.field public final synthetic b:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/w$e;->b:LBg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LBg/i;LQf/f;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, LBg/w$e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/w$e$a;

    iget v1, v0, LBg/w$e$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/w$e$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/w$e$a;

    invoke-direct {v0, p0, p2}, LBg/w$e$a;-><init>(LBg/w$e;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/w$e$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/w$e$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LBg/w$e;->b:LBg/j;

    iput v3, v0, LBg/w$e$a;->d:I

    invoke-static {p2, p1, v0}, LBg/k;->l0(LBg/j;LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/i;

    invoke-virtual {p0, p1, p2}, LBg/w$e;->a(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
