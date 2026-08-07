.class public final LCg/k$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:LQf/j;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "TT1;TT2;",
            "LQf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Ljava/lang/Object;Lyg/D;LBg/j;Leg/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Ljava/lang/Object;",
            "Lyg/D<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "LBg/j<",
            "-TR;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$c$b$a;->b:LQf/j;

    iput-object p2, p0, LCg/k$c$b$a;->c:Ljava/lang/Object;

    iput-object p3, p0, LCg/k$c$b$a;->d:Lyg/D;

    iput-object p4, p0, LCg/k$c$b$a;->e:LBg/j;

    iput-object p5, p0, LCg/k$c$b$a;->f:Leg/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 12
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LCg/k$c$b$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LCg/k$c$b$a$b;

    iget v1, v0, LCg/k$c$b$a$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LCg/k$c$b$a$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LCg/k$c$b$a$b;

    invoke-direct {v0, p0, p2}, LCg/k$c$b$a$b;-><init>(LCg/k$c$b$a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LCg/k$c$b$a$b;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LCg/k$c$b$a$b;->d:I

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

    iget-object p2, p0, LCg/k$c$b$a;->b:LQf/j;

    sget-object v2, LFf/P0;->a:LFf/P0;

    iget-object v4, p0, LCg/k$c$b$a;->c:Ljava/lang/Object;

    new-instance v11, LCg/k$c$b$a$a;

    iget-object v6, p0, LCg/k$c$b$a;->d:Lyg/D;

    iget-object v7, p0, LCg/k$c$b$a;->e:LBg/j;

    iget-object v8, p0, LCg/k$c$b$a;->f:Leg/q;

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, LCg/k$c$b$a$a;-><init>(Lyg/D;LBg/j;Leg/q;Ljava/lang/Object;LQf/f;)V

    iput v3, v0, LCg/k$c$b$a$b;->d:I

    invoke-static {p2, v2, v4, v11, v0}, LCg/e;->c(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
