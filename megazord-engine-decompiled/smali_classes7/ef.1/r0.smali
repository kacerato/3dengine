.class public final Lef/r0;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/a;->b:LTe/y;

    invoke-interface {v0, p1}, LTe/y;->d(LTe/v;)V

    return-void
.end method
