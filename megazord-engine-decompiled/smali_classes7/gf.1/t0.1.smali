.class public final Lgf/t0;
.super LTe/B;
.source "SourceFile"

# interfaces
.implements Laf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;",
        "Laf/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/t0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/Y0$a;

    iget-object v1, p0, Lgf/t0;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lgf/Y0$a;-><init>(LTe/I;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v0}, Lgf/Y0$a;->run()V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lgf/t0;->b:Ljava/lang/Object;

    return-object v0
.end method
