.class public final Lif/g;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/g$a;
    }
.end annotation

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
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/i;


# direct methods
.method public constructor <init>(LTe/Q;LTe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;",
            "LTe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/g;->b:LTe/Q;

    iput-object p2, p0, Lif/g;->c:LTe/i;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/g;->c:LTe/i;

    new-instance v1, Lif/g$a;

    iget-object v2, p0, Lif/g;->b:LTe/Q;

    invoke-direct {v1, p1, v2}, Lif/g$a;-><init>(LTe/N;LTe/Q;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method
