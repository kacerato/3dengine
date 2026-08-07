.class public final Lcom/google/android/gms/internal/play_billing/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/play_billing/g0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/g0;->d:Lcom/google/android/gms/internal/play_billing/g0;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/E;->d:Lcom/google/android/gms/internal/play_billing/g0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/g0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/E;->d:Lcom/google/android/gms/internal/play_billing/g0;

    return-void
.end method
