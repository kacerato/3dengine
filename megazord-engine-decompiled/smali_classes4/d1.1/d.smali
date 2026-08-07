.class public final Ld1/d;
.super Ld1/j;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ld1/j;-><init>()V

    iput-object p1, p0, Ld1/d;->e:Lcom/google/android/gms/common/api/internal/f;

    return-void
.end method


# virtual methods
.method public final E1(Lc1/i;)V
    .locals 1

    new-instance v0, Ld1/c;

    invoke-direct {v0, p0, p1}, Ld1/c;-><init>(Ld1/d;Lc1/i;)V

    iget-object p1, p0, Ld1/d;->e:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/f;->d(Lcom/google/android/gms/common/api/internal/f$b;)V

    return-void
.end method
