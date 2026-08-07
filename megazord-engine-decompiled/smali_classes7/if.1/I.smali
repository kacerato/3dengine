.class public final Lif/I;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
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

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/I;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LVe/d;->a()LVe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    iget-object v0, p0, Lif/I;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method
