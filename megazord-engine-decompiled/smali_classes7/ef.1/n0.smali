.class public final Lef/n0;
.super LTe/l;
.source "SourceFile"

# interfaces
.implements Laf/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;",
        "Laf/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/y;
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

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lef/n0;->c:LTe/y;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/n0;->c:LTe/y;

    new-instance v1, Lef/n0$a;

    invoke-direct {v1, p1}, Lef/n0$a;-><init>(LCi/c;)V

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

    iget-object v0, p0, Lef/n0;->c:LTe/y;

    return-object v0
.end method
