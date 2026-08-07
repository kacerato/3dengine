.class public final LB1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 1
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

    new-instance v0, LB1/b0;

    invoke-direct {v0, p0, p1, p2}, LB1/b0;-><init>(LB1/d0;Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/l;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 7
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

    new-instance v6, LB1/a0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB1/a0;-><init>(LB1/d0;Lcom/google/android/gms/common/api/l;JLandroid/app/PendingIntent;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method
