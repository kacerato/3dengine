.class public final Lef/K;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Laf/e;"
    }
.end annotation


# instance fields
.field public final b:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/K;->b:LTe/i;

    return-void
.end method


# virtual methods
.method public source()LTe/i;
    .locals 1

    iget-object v0, p0, Lef/K;->b:LTe/i;

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

    iget-object v0, p0, Lef/K;->b:LTe/i;

    new-instance v1, Lef/K$a;

    invoke-direct {v1, p1}, Lef/K$a;-><init>(LTe/v;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method
