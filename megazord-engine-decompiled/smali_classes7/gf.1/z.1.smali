.class public final Lgf/z;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/B;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LTe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/z;->c:LTe/Q;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/z$a;

    iget-object v2, p0, Lgf/z;->c:LTe/Q;

    invoke-direct {v1, p1, v2}, Lgf/z$a;-><init>(LTe/I;LTe/Q;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
