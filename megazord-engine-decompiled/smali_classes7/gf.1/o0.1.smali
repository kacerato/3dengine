.class public final Lgf/o0;
.super LTe/c;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;",
        "Laf/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lgf/o0;->b:LTe/G;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lgf/o0;->b:LTe/G;

    new-instance v1, Lgf/o0$a;

    invoke-direct {v1, p1}, Lgf/o0$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method

.method public c()LTe/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/n0;

    iget-object v1, p0, Lgf/o0;->b:LTe/G;

    invoke-direct {v0, v1}, Lgf/n0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method
