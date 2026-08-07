.class public final Lef/Q;
.super LTe/c;
.source "SourceFile"

# interfaces
.implements Laf/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/Q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;",
        "Laf/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lef/Q;->b:LTe/y;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lef/Q;->b:LTe/y;

    new-instance v1, Lef/Q$a;

    invoke-direct {v1, p1}, Lef/Q$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.method public d()LTe/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/P;

    iget-object v1, p0, Lef/Q;->b:LTe/y;

    invoke-direct {v0, v1}, Lef/P;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method
