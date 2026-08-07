.class public final Lgf/k0$b;
.super Lnf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lnf/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lgf/k0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/k0$c<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgf/k0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lgf/k0$c<",
            "TT;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnf/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lgf/k0$b;->c:Lgf/k0$c;

    return-void
.end method

.method public static k8(Ljava/lang/Object;ILgf/k0$a;Z)Lgf/k0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lgf/k0$a<",
            "*TK;TT;>;Z)",
            "Lgf/k0$b<",
            "TK;TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/k0$c;

    invoke-direct {v0, p1, p2, p0, p3}, Lgf/k0$c;-><init>(ILgf/k0$a;Ljava/lang/Object;Z)V

    new-instance p1, Lgf/k0$b;

    invoke-direct {p1, p0, v0}, Lgf/k0$b;-><init>(Ljava/lang/Object;Lgf/k0$c;)V

    return-object p1
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/k0$b;->c:Lgf/k0$c;

    invoke-virtual {v0, p1}, Lgf/k0$c;->b(LTe/I;)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/k0$b;->c:Lgf/k0$c;

    invoke-virtual {v0}, Lgf/k0$c;->e()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/k0$b;->c:Lgf/k0$c;

    invoke-virtual {v0, p1}, Lgf/k0$c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/k0$b;->c:Lgf/k0$c;

    invoke-virtual {v0, p1}, Lgf/k0$c;->f(Ljava/lang/Throwable;)V

    return-void
.end method
