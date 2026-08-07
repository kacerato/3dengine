.class public LE1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I
    .annotation build LE1/k$b;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE1/k;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/location/Location;


# direct methods
.method public constructor <init>(IILjava/util/List;Landroid/location/Location;)V
    .locals 0
    .param p2    # I
        .annotation build LE1/k$b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "LE1/k;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LE1/o;->a:I

    iput p2, p0, LE1/o;->b:I

    iput-object p3, p0, LE1/o;->c:Ljava/util/List;

    iput-object p4, p0, LE1/o;->d:Landroid/location/Location;

    return-void
.end method

.method public static a(Landroid/content/Intent;)LE1/o;
    .locals 10
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "gms_error_code"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    const-string v3, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v7, v5, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v7, LB1/G;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LB1/G;

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const-string v3, "com.google.android.location.intent.extra.triggering_location"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    new-instance v3, LE1/o;

    invoke-direct {v3, v1, v2, v0, p0}, LE1/o;-><init>(IILjava/util/List;Landroid/location/Location;)V

    return-object v3
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LE1/o;->a:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build LE1/k$b;
    .end annotation

    iget v0, p0, LE1/o;->b:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LE1/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LE1/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LE1/o;->d:Landroid/location/Location;

    return-object v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, LE1/o;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
