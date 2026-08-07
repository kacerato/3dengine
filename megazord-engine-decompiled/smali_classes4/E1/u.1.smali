.class public LE1/u;
.super Lcom/google/android/gms/common/api/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/t<",
        "LE1/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;-><init>()V

    return-void
.end method

.method public constructor <init>(LE1/v;)V
    .locals 0
    .param p1    # LE1/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/t;-><init>(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method


# virtual methods
.method public g()LE1/w;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->c()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    check-cast v0, LE1/v;

    invoke-virtual {v0}, LE1/v;->B()LE1/w;

    move-result-object v0

    return-object v0
.end method
