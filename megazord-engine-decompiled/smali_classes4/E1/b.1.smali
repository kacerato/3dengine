.class public interface abstract LE1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .param p1    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.google.android.gms.permission.ACTIVITY_RECOGNITION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/gms/common/api/l;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .param p1    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.google.android.gms.permission.ACTIVITY_RECOGNITION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "J",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
