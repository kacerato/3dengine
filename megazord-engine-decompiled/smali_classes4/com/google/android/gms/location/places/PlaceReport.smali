.class public Lcom/google/android/gms/location/places/PlaceReport;
.super LZ0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LZ0/c$a;
    creator = "PlaceReportCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/places/PlaceReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$h;
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getPlaceId"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getTag"
        id = 0x3
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getSource"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF1/a;

    invoke-direct {v0}, LF1/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceReport;->b:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceReport;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LX0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "unknown"

    invoke-static {v0}, LX0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "Invalid source"

    const/4 v2, 0x1

    invoke-static {v2, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/location/places/PlaceReport;

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/google/android/gms/location/places/PlaceReport;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/location/places/PlaceReport;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/location/places/PlaceReport;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LX0/y;->d(Ljava/lang/Object;)LX0/y$a;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceReport;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LX0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LX0/y$a;

    const-string v1, "tag"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceReport;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LX0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LX0/y$a;

    const-string v1, "unknown"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LX0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LX0/y$a;

    :cond_0
    invoke-virtual {v0}, LX0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/location/places/PlaceReport;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceReport;->B()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceReport;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceReport;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
