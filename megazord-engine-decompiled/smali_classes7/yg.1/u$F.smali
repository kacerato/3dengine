.class public final Lyg/u$F;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xfe,
        0xff
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "remaining",
        "$this$produce",
        "remaining"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/u;->S(Lyg/D;ILQf/j;)Lyg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lyg/B<",
        "Ljava/lang/Object;",
        ">;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:I

.field public final synthetic g:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILyg/D;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "Lyg/u$F;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lyg/u$F;->f:I

    iput-object p2, p0, Lyg/u$F;->g:Lyg/D;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lyg/u$F;

    iget v1, p0, Lyg/u$F;->f:I

    iget-object v2, p0, Lyg/u$F;->g:Lyg/D;

    invoke-direct {v0, v1, v2, p2}, Lyg/u$F;-><init>(ILyg/D;LQf/f;)V

    iput-object p1, v0, Lyg/u$F;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lyg/B;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lyg/u$F;->invoke(Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lyg/u$F;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lyg/u$F;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/u$F;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lyg/u$F;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lyg/u$F;->c:I

    iget-object v4, p0, Lyg/u$F;->b:Ljava/lang/Object;

    check-cast v4, Lyg/n;

    iget-object v5, p0, Lyg/u$F;->e:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v5

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v1, p0, Lyg/u$F;->c:I

    iget-object v4, p0, Lyg/u$F;->b:Ljava/lang/Object;

    check-cast v4, Lyg/n;

    iget-object v5, p0, Lyg/u$F;->e:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lyg/u$F;->e:Ljava/lang/Object;

    check-cast p1, Lyg/B;

    iget v1, p0, Lyg/u$F;->f:I

    if-nez v1, :cond_4

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_4
    if-ltz v1, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_9

    iget-object v4, p0, Lyg/u$F;->g:Lyg/D;

    invoke-interface {v4}, Lyg/D;->iterator()Lyg/n;

    move-result-object v4

    :cond_6
    iput-object p1, p0, Lyg/u$F;->e:Ljava/lang/Object;

    iput-object v4, p0, Lyg/u$F;->b:Ljava/lang/Object;

    iput v1, p0, Lyg/u$F;->c:I

    iput v3, p0, Lyg/u$F;->d:I

    invoke-interface {v4, p0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_7

    return-object v0

    :cond_7
    move-object v6, v5

    move-object v5, p1

    move-object p1, v6

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v4}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object v5, p0, Lyg/u$F;->e:Ljava/lang/Object;

    iput-object v4, p0, Lyg/u$F;->b:Ljava/lang/Object;

    iput v1, p0, Lyg/u$F;->c:I

    iput v2, p0, Lyg/u$F;->d:I

    invoke-interface {v5, p1, p0}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_6

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_8
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is less than zero."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
