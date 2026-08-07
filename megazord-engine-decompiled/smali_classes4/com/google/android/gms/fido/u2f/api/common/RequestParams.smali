.class public abstract Lcom/google/android/gms/fido/u2f/api/common/RequestParams;
.super LZ0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LZ0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract B()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b0()Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c0()Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e0()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract k0()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt1/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract n0()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract s0()Ljava/lang/Double;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
