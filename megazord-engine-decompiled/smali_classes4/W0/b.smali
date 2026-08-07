.class public interface abstract LW0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/common/api/r;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/r;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract Z9()Landroid/os/Bundle;
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract e4()Ljava/util/Iterator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract isClosed()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
