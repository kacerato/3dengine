.class public final Lgf/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LYe/a;

.field public final c:Lgf/j1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/j1$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lof/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:LVe/c;

.field public final synthetic f:Lgf/j1;


# direct methods
.method public constructor <init>(Lgf/j1;LYe/a;Lgf/j1$b;Lof/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYe/a;",
            "Lgf/j1$b<",
            "TT;>;",
            "Lof/m<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/j1$a;->f:Lgf/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/j1$a;->b:LYe/a;

    iput-object p3, p0, Lgf/j1$a;->c:Lgf/j1$b;

    iput-object p4, p0, Lgf/j1$a;->d:Lof/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/j1$a;->c:Lgf/j1$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgf/j1$b;->e:Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/j1$a;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/j1$a;->e:LVe/c;

    iget-object v0, p0, Lgf/j1$a;->b:LYe/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LYe/a;->b(ILVe/c;)Z

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object p1, p0, Lgf/j1$a;->e:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object p1, p0, Lgf/j1$a;->c:Lgf/j1$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgf/j1$b;->e:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/j1$a;->b:LYe/a;

    invoke-virtual {v0}, LYe/a;->dispose()V

    iget-object v0, p0, Lgf/j1$a;->d:Lof/m;

    invoke-virtual {v0, p1}, Lof/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
