.class public abstract LTf/l;
.super LTf/k;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/F;
.implements LTf/p;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/k;",
        "Lkotlin/jvm/internal/F<",
        "Ljava/lang/Object;",
        ">;",
        "LTf/p;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, LTf/l;-><init>(ILQf/f;)V

    return-void
.end method

.method public constructor <init>(ILQf/f;)V
    .locals 0
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, LTf/k;-><init>(LQf/f;)V

    .line 2
    iput p1, p0, LTf/l;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    iget v0, p0, LTf/l;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LTf/a;->getCompletion()LQf/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->w(Lkotlin/jvm/internal/F;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, LTf/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
