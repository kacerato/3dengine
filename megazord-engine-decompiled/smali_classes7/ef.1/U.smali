.class public final Lef/U;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
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

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/U;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lef/U;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LVe/d;->a()LVe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object v0, p0, Lef/U;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    return-void
.end method
