.class public interface abstract LTe/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Downstream:",
        "Ljava/lang/Object;",
        "Upstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(LCi/c;)LCi/c;
    .param p1    # LCi/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TDownstream;>;)",
            "LCi/c<",
            "-TUpstream;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
