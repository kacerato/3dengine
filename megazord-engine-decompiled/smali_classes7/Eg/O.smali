.class public LEg/O;
.super Lwg/a;
.source "SourceFile"

# interfaces
.implements LTf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/a<",
        "TT;>;",
        "LTf/e;"
    }
.end annotation


# instance fields
.field public final e:LQf/f;
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


# direct methods
.method public constructor <init>(LQf/j;LQf/f;)V
    .locals 1
    .param p1    # LQf/j;
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
            "LQf/j;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lwg/a;-><init>(LQf/j;ZZ)V

    iput-object p2, p0, LEg/O;->e:LQf/f;

    return-void
.end method


# virtual methods
.method public final P0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g0(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LEg/O;->e:LQf/f;

    invoke-static {v0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v0

    iget-object v1, p0, LEg/O;->e:LQf/f;

    invoke-static {p1, v1}, Lwg/I;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, LEg/m;->e(LQf/f;Ljava/lang/Object;Leg/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final getCallerFrame()LTf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LEg/O;->e:LQf/f;

    instance-of v1, v0, LTf/e;

    if-eqz v1, :cond_0

    check-cast v0, LTf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public x1(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LEg/O;->e:LQf/f;

    invoke-static {p1, v0}, Lwg/I;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
