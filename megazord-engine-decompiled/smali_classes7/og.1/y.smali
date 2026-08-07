.class public final Log/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a()Log/r;
    .locals 2
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Log/r;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function is implemented as an intrinsic on all supported platforms."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
