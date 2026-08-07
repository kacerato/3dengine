.class public Lcom/google/android/gms/common/api/i;
.super Lcom/google/android/gms/common/api/t;
.source "SourceFile"

# interfaces
.implements LW0/b;


# annotations
.annotation build LT0/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "LW0/a<",
        "TT;>;:",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/t<",
        "TR;>;",
        "LW0/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build LT0/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;-><init>()V

    return-void
.end method

.method public constructor <init>(LW0/a;)V
    .locals 0
    .param p1    # LW0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/t;-><init>(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method


# virtual methods
.method public final Z9()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->Z9()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->close()V

    return-void
.end method

.method public final e4()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->e4()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0, p1}, LW0/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->getCount()I

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LW0/a;

    invoke-virtual {v0}, LW0/a;->release()V

    return-void
.end method
