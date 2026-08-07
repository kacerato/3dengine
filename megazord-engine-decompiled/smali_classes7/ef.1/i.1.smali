.class public final Lef/i;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "Ljava/lang/Long;",
        ">;",
        "Laf/f<",
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

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lef/i;->b:LTe/y;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/i;->b:LTe/y;

    new-instance v1, Lef/i$a;

    invoke-direct {v1, p1}, Lef/i$a;-><init>(LTe/N;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.method public source()LTe/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lef/i;->b:LTe/y;

    return-object v0
.end method
