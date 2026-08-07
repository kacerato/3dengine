.class public final synthetic Lk1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lk1/g;)J
    .locals 2
    .param p0    # Lk1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
