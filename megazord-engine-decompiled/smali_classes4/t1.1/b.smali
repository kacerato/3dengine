.class public final enum Lt1/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt1/b;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum BAD_REQUEST:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum CONFIGURATION_UNSUPPORTED:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt1/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEVICE_INELIGIBLE:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum OK:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum OTHER_ERROR:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum TIMEOUT:Lt1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final zza:Ljava/lang/String;

.field private static final synthetic zzb:[Lt1/b;


# instance fields
.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lt1/b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt1/b;->OK:Lt1/b;

    new-instance v1, Lt1/b;

    const-string v2, "OTHER_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lt1/b;->OTHER_ERROR:Lt1/b;

    new-instance v2, Lt1/b;

    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lt1/b;->BAD_REQUEST:Lt1/b;

    new-instance v3, Lt1/b;

    const-string v4, "CONFIGURATION_UNSUPPORTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lt1/b;->CONFIGURATION_UNSUPPORTED:Lt1/b;

    new-instance v4, Lt1/b;

    const-string v5, "DEVICE_INELIGIBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lt1/b;->DEVICE_INELIGIBLE:Lt1/b;

    new-instance v5, Lt1/b;

    const-string v6, "TIMEOUT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lt1/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lt1/b;->TIMEOUT:Lt1/b;

    filled-new-array/range {v0 .. v5}, [Lt1/b;

    move-result-object v0

    sput-object v0, Lt1/b;->zzb:[Lt1/b;

    const-class v0, Lt1/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt1/b;->zza:Ljava/lang/String;

    new-instance v0, Lt1/e;

    invoke-direct {v0}, Lt1/e;-><init>()V

    sput-object v0, Lt1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lt1/b;->zzc:I

    return-void
.end method

.method public static e(I)Lt1/b;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lt1/b;->values()[Lt1/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lt1/b;->zzc:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lt1/b;->OTHER_ERROR:Lt1/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lt1/b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lt1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt1/b;

    return-object p0
.end method

.method public static values()[Lt1/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lt1/b;->zzb:[Lt1/b;

    invoke-virtual {v0}, [Lt1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt1/b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lt1/b;->zzc:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Lt1/b;->zzc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
