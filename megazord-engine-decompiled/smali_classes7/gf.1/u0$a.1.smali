.class public final Lgf/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/u0;
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
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LVe/c;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/u0$a;->b:LTe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lgf/u0$a;->c:LVe/c;

    iget-object v0, p0, Lgf/u0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lgf/u0$a;->d:Ljava/lang/Object;

    iget-object v1, p0, Lgf/u0$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/u0$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lgf/u0$a;->c:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/u0$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lgf/u0$a;->c:LVe/c;

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/u0$a;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/u0$a;->c:LVe/c;

    iget-object p1, p0, Lgf/u0$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/u0$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lgf/u0$a;->c:LVe/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lgf/u0$a;->d:Ljava/lang/Object;

    iget-object v0, p0, Lgf/u0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
