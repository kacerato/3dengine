.class public final Ldf/C;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/C$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LTe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/C;->d:LTe/Q;

    return-void
.end method


# virtual methods
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

    new-instance v1, Ldf/C$a;

    iget-object v2, p0, Ldf/C;->d:LTe/Q;

    invoke-direct {v1, p1, v2}, Ldf/C$a;-><init>(LCi/c;LTe/Q;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
