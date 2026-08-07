.class public final Lcom/google/android/gms/internal/play_billing/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/z0;


# static fields
.field public static final a:Lcom/google/android/gms/internal/play_billing/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/q2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/q2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/q2;->a:Lcom/google/android/gms/internal/play_billing/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/r2;->zza:Lcom/google/android/gms/internal/play_billing/r2;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/r2;->zzd:Lcom/google/android/gms/internal/play_billing/r2;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/r2;->zzc:Lcom/google/android/gms/internal/play_billing/r2;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/r2;->zzb:Lcom/google/android/gms/internal/play_billing/r2;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
