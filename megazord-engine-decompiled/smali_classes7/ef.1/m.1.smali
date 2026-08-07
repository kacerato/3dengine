.class public final Lef/m;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/m$b;,
        Lef/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LCi/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/m;->c:LCi/b;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/a;->b:LTe/y;

    new-instance v1, Lef/m$a;

    iget-object v2, p0, Lef/m;->c:LCi/b;

    invoke-direct {v1, p1, v2}, Lef/m$a;-><init>(LTe/v;LCi/b;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method
