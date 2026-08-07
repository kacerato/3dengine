.class public final Ldf/N0;
.super Ldf/a;
.source "SourceFile"

# interfaces
.implements LXe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/N0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;",
        "LXe/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    .line 2
    iput-object p0, p0, Ldf/N0;->d:LXe/g;

    return-void
.end method

.method public constructor <init>(LTe/l;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    .line 4
    iput-object p2, p0, Ldf/N0;->d:LXe/g;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/N0$a;

    iget-object v2, p0, Ldf/N0;->d:LXe/g;

    invoke-direct {v1, p1, v2}, Ldf/N0$a;-><init>(LCi/c;LXe/g;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
