.class public final Ldf/z1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/z1;
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
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Lmf/i;

.field public e:Z


# direct methods
.method public constructor <init>(LCi/c;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/z1$a;->b:LCi/c;

    iput-object p2, p0, Ldf/z1$a;->c:LCi/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/z1$a;->e:Z

    new-instance p1, Lmf/i;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmf/i;-><init>(Z)V

    iput-object p1, p0, Ldf/z1$a;->d:Lmf/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/z1$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf/z1$a;->e:Z

    iget-object v0, p0, Ldf/z1$a;->c:LCi/b;

    invoke-interface {v0, p0}, LCi/b;->l(LCi/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/z1$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/z1$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf/z1$a;->e:Z

    :cond_0
    iget-object v0, p0, Ldf/z1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/z1$a;->d:Lmf/i;

    invoke-virtual {v0, p1}, Lmf/i;->l(LCi/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/z1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
