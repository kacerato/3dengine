.class public final Lgf/G1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/G1$a;,
        Lgf/G1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "LTe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(LTe/G;LTe/G;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/G<",
            "TB;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/G1;->c:LTe/G;

    iput p3, p0, Lgf/G1;->d:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/G1$b;

    iget v1, p0, Lgf/G1;->d:I

    invoke-direct {v0, p1, v1}, Lgf/G1$b;-><init>(LTe/I;I)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/G1;->c:LTe/G;

    iget-object v1, v0, Lgf/G1$b;->d:Lgf/G1$a;

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    return-void
.end method
