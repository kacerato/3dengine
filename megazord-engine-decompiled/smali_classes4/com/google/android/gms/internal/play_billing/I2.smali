.class public final Lcom/google/android/gms/internal/play_billing/I2;
.super Lcom/google/android/gms/internal/play_billing/v0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/g1;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/I2;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/x2;

.field private zzh:Lcom/google/android/gms/internal/play_billing/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/I2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/I2;->zzb:Lcom/google/android/gms/internal/play_billing/I2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/v0;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/v0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/v0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/I2;->zze:I

    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/play_billing/H2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/I2;->zzb:Lcom/google/android/gms/internal/play_billing/I2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->e()Lcom/google/android/gms/internal/play_billing/q0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/H2;

    return-object v0
.end method

.method public static synthetic B()Lcom/google/android/gms/internal/play_billing/I2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/I2;->zzb:Lcom/google/android/gms/internal/play_billing/I2;

    return-object v0
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/play_billing/I2;Lcom/google/android/gms/internal/play_billing/P2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zze:I

    return-void
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/play_billing/I2;Lcom/google/android/gms/internal/play_billing/x2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzg:Lcom/google/android/gms/internal/play_billing/x2;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzd:I

    return-void
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/play_billing/I2;Lcom/google/android/gms/internal/play_billing/d2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zze:I

    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/play_billing/I2;Lcom/google/android/gms/internal/play_billing/h2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/I2;->zze:I

    return-void
.end method


# virtual methods
.method public final t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/I2;->zzb:Lcom/google/android/gms/internal/play_billing/I2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/H2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/H2;-><init>(Lcom/google/android/gms/internal/play_billing/G2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/I2;-><init>()V

    return-object p1

    :cond_3
    const-class v7, Lcom/google/android/gms/internal/play_billing/u2;

    const-string v8, "zzh"

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-class v4, Lcom/google/android/gms/internal/play_billing/d2;

    const-class v5, Lcom/google/android/gms/internal/play_billing/h2;

    const-class v6, Lcom/google/android/gms/internal/play_billing/P2;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/I2;->zzb:Lcom/google/android/gms/internal/play_billing/I2;

    const-string p3, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/v0;->m(Lcom/google/android/gms/internal/play_billing/f1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
