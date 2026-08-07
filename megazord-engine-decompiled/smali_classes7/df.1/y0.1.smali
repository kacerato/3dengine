.class public final Ldf/y0;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Ldf/y0;->b:LCi/b;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/y0;->b:LCi/b;

    new-instance v1, Ldf/y0$a;

    invoke-direct {v1, p1}, Ldf/y0$a;-><init>(LTe/v;)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
