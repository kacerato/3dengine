.class public final LAg/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/f;
.implements LTf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQf/f<",
        "TT;>;",
        "LTf/e;"
    }
.end annotation


# instance fields
.field public final b:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LAg/e;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/f;LAg/e;)V
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LAg/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;",
            "LAg/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAg/g$a;->b:LQf/f;

    iput-object p2, p0, LAg/g$a;->c:LAg/e;

    return-void
.end method


# virtual methods
.method public final a()LAg/m;
    .locals 1

    iget-object v0, p0, LAg/g$a;->c:LAg/e;

    invoke-virtual {v0}, LAg/e;->d()LAg/m;

    move-result-object v0

    return-object v0
.end method

.method public getCallerFrame()LTf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, LAg/g$a;->a()LAg/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LAg/m;->getCallerFrame()LTf/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/g$a;->b:LQf/f;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, LAg/g$a;->a()LAg/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LAg/m;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, LAg/g;->a:LAg/g;

    invoke-static {v0, p0}, LAg/g;->c(LAg/g;LAg/g$a;)V

    iget-object v0, p0, LAg/g$a;->b:LQf/f;

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/g$a;->b:LQf/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
