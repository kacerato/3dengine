.class public final LE1/l;
.super Lcom/google/android/gms/common/api/g;
.source "SourceFile"


# static fields
.field public static final t:I = 0x3e8

.field public static final u:I = 0x3e9

.field public static final v:I = 0x3ea

.field public static final w:I = 0x3ec

.field public static final x:I = 0x3ed


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/g;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/g;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION"

    return-object p0

    :pswitch_2
    const-string p0, "GEOFENCE_TOO_MANY_PENDING_INTENTS"

    return-object p0

    :pswitch_3
    const-string p0, "GEOFENCE_TOO_MANY_GEOFENCES"

    return-object p0

    :pswitch_4
    const-string p0, "GEOFENCE_NOT_AVAILABLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
