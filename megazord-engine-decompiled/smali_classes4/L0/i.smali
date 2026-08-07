.class public final LL0/i;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/content/Context;Landroid/os/Looper;LX0/i;Ljava/lang/Object;LU0/d;LU0/k;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    move-object v4, p4

    check-cast v4, LL0/c;

    new-instance p4, Lcom/google/android/gms/internal/auth/G;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/G;-><init>(Landroid/content/Context;Landroid/os/Looper;LX0/i;LL0/c;LU0/d;LU0/k;)V

    return-object p4
.end method
