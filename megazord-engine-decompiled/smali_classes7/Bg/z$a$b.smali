.class public final LBg/z$a$b;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2"
    f = "Share.kt"
    i = {}
    l = {
        0xe3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/z$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBg/z$a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "LBg/M;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/D<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "+TT;>;",
            "LBg/D<",
            "TT;>;TT;",
            "LQf/f<",
            "-",
            "LBg/z$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/z$a$b;->d:LBg/i;

    iput-object p2, p0, LBg/z$a$b;->e:LBg/D;

    iput-object p3, p0, LBg/z$a$b;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 4
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

    new-instance v0, LBg/z$a$b;

    iget-object v1, p0, LBg/z$a$b;->d:LBg/i;

    iget-object v2, p0, LBg/z$a$b;->e:LBg/D;

    iget-object v3, p0, LBg/z$a$b;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, LBg/z$a$b;-><init>(LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V

    iput-object p1, v0, LBg/z$a$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/M;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LBg/z$a$b;->w(LBg/M;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/z$a$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/z$a$b;->c:Ljava/lang/Object;

    check-cast p1, LBg/M;

    sget-object v1, LBg/z$a$b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, LBg/z$a$b;->f:Ljava/lang/Object;

    sget-object v0, LBg/K;->a:LEg/T;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, LBg/z$a$b;->e:LBg/D;

    invoke-interface {p1}, LBg/D;->o()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LBg/z$a$b;->e:LBg/D;

    invoke-interface {v0, p1}, LBg/D;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, LBg/z$a$b;->d:LBg/i;

    iget-object v1, p0, LBg/z$a$b;->e:LBg/D;

    iput v2, p0, LBg/z$a$b;->b:I

    invoke-interface {p1, v1, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LBg/M;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LBg/M;
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
            "LBg/M;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, LBg/z$a$b;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/z$a$b;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LBg/z$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
