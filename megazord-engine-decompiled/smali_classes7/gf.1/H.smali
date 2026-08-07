.class public final Lgf/H;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/H$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/H;->b:LTe/G;

    iput-object p2, p0, Lgf/H;->c:LTe/G;

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

    new-instance v0, LYe/h;

    invoke-direct {v0}, LYe/h;-><init>()V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    new-instance v1, Lgf/H$a;

    invoke-direct {v1, p0, v0, p1}, Lgf/H$a;-><init>(Lgf/H;LYe/h;LTe/I;)V

    iget-object p1, p0, Lgf/H;->c:LTe/G;

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
