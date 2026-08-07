.class public final Ldf/x0;
.super LTe/l;
.source "SourceFile"

# interfaces
.implements Laf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;",
        "Laf/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;
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

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/x0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldf/x0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lmf/h;

    iget-object v1, p0, Ldf/x0;->c:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lmf/h;-><init>(LCi/c;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    return-void
.end method
