.class public final Lcom/google/android/gms/internal/play_billing/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/v1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/v1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/x1;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/w1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/w1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/x1;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static a()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/x1;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/x1;->a:Ljava/util/Iterator;

    return-object v0
.end method
