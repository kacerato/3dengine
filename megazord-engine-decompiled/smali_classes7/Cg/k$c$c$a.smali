.class public final LCg/k$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Lyg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/B<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$c$c$a;->b:Lyg/B;

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
            "(TT2;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LCg/k$c$c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LCg/k$c$c$a$a;

    iget v1, v0, LCg/k$c$c$a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LCg/k$c$c$a$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LCg/k$c$c$a$a;

    invoke-direct {v0, p0, p2}, LCg/k$c$c$a$a;-><init>(LCg/k$c$c$a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LCg/k$c$c$a$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LCg/k$c$c$a$a;->d:I

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

    iget-object p2, p0, LCg/k$c$c$a;->b:Lyg/B;

    invoke-interface {p2}, Lyg/B;->getChannel()Lyg/E;

    move-result-object p2

    if-nez p1, :cond_3

    sget-object p1, LCg/s;->a:LEg/T;

    :cond_3
    iput v3, v0, LCg/k$c$c$a$a;->d:I

    invoke-interface {p2, p1, v0}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
