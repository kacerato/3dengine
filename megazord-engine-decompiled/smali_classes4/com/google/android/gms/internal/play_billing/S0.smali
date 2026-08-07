.class public abstract Lcom/google/android/gms/internal/play_billing/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/play_billing/S0;

.field public static final b:Lcom/google/android/gms/internal/play_billing/S0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/O0;-><init>(Lcom/google/android/gms/internal/play_billing/N0;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/S0;->a:Lcom/google/android/gms/internal/play_billing/S0;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/Q0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/Q0;-><init>(Lcom/google/android/gms/internal/play_billing/P0;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/S0;->b:Lcom/google/android/gms/internal/play_billing/S0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/R0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/play_billing/S0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/S0;->a:Lcom/google/android/gms/internal/play_billing/S0;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/play_billing/S0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/S0;->b:Lcom/google/android/gms/internal/play_billing/S0;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
