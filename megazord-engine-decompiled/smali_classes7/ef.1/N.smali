.class public final Lef/N;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/N$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Laf/i<",
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


# direct methods
.method public constructor <init>(LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/N;->b:LTe/Q;

    return-void
.end method


# virtual methods
.method public source()LTe/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lef/N;->b:LTe/Q;

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/N;->b:LTe/Q;

    new-instance v1, Lef/N$a;

    invoke-direct {v1, p1}, Lef/N$a;-><init>(LTe/v;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
