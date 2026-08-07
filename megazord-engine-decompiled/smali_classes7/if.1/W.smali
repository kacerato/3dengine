.class public final Lif/W;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/W$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
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
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lif/W;->b:LTe/Q;

    return-void
.end method

.method public static j8(LTe/I;)LTe/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/I<",
            "-TT;>;)",
            "LTe/N<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lif/W$a;

    invoke-direct {v0, p0}, Lif/W$a;-><init>(LTe/I;)V

    return-object v0
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/W;->b:LTe/Q;

    invoke-static {p1}, Lif/W;->j8(LTe/I;)LTe/N;

    move-result-object p1

    invoke-interface {v0, p1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
