.class public final Lcom/google/android/gms/internal/play_billing/A2;
.super Lcom/google/android/gms/internal/play_billing/v0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/g1;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/A2;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/A2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/A2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/A2;->zzb:Lcom/google/android/gms/internal/play_billing/A2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/A2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/v0;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/v0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/v0;-><init>()V

    return-void
.end method

.method public static synthetic w()Lcom/google/android/gms/internal/play_billing/A2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/A2;->zzb:Lcom/google/android/gms/internal/play_billing/A2;

    return-object v0
.end method


# virtual methods
.method public final t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/A2;->zzb:Lcom/google/android/gms/internal/play_billing/A2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/z2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/z2;-><init>(Lcom/google/android/gms/internal/play_billing/y2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/A2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/A2;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/A2;->zzb:Lcom/google/android/gms/internal/play_billing/A2;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/v0;->m(Lcom/google/android/gms/internal/play_billing/f1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
