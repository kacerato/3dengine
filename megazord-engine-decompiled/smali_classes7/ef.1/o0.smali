.class public final Lef/o0;
.super LTe/B;
.source "SourceFile"

# interfaces
.implements Laf/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;",
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

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lef/o0;->b:LTe/y;

    return-void
.end method

.method public static j8(LTe/I;)LTe/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/I<",
            "-TT;>;)",
            "LTe/v<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/o0$a;

    invoke-direct {v0, p0}, Lef/o0$a;-><init>(LTe/I;)V

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

    iget-object v0, p0, Lef/o0;->b:LTe/y;

    invoke-static {p1}, Lef/o0;->j8(LTe/I;)LTe/v;

    move-result-object p1

    invoke-interface {v0, p1}, LTe/y;->d(LTe/v;)V

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

    iget-object v0, p0, Lef/o0;->b:LTe/y;

    return-object v0
.end method
