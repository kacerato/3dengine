.class public final LB1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Ljava/util/List<",
            "LE1/k;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LE1/p$a;

    invoke-direct {v0}, LE1/p$a;-><init>()V

    invoke-virtual {v0, p2}, LE1/p$a;->b(Ljava/util/List;)LE1/p$a;

    const/4 p2, 0x5

    invoke-virtual {v0, p2}, LE1/p$a;->d(I)LE1/p$a;

    invoke-virtual {v0}, LE1/p$a;->c()LE1/p;

    move-result-object p2

    new-instance v0, LB1/d;

    invoke-direct {v0, p0, p1, p2, p3}, LB1/d;-><init>(LB1/g;Lcom/google/android/gms/common/api/l;LE1/p;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 0
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

    invoke-static {p2}, LE1/y0;->B(Landroid/app/PendingIntent;)LE1/y0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LB1/g;->e(Lcom/google/android/gms/common/api/l;LE1/y0;)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/l;LE1/p;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "LE1/p;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/d;

    invoke-direct {v0, p0, p1, p2, p3}, LB1/d;-><init>(LB1/g;Lcom/google/android/gms/common/api/l;LE1/p;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/l;Ljava/util/List;)Lcom/google/android/gms/common/api/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, LE1/y0;->b(Ljava/util/List;)LE1/y0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LB1/g;->e(Lcom/google/android/gms/common/api/l;LE1/y0;)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/common/api/l;LE1/y0;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "LE1/y0;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/e;

    invoke-direct {v0, p0, p1, p2}, LB1/e;-><init>(LB1/g;Lcom/google/android/gms/common/api/l;LE1/y0;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method
