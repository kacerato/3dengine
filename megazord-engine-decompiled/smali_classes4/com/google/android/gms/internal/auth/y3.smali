.class public final Lcom/google/android/gms/internal/auth/y3;
.super Lcom/google/android/gms/internal/auth/k3;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/c;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/y3;->e:LQ1/l;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/k3;-><init>()V

    return-void
.end method


# virtual methods
.method public final s1(Lcom/google/android/gms/common/api/Status;LJ0/c;)V
    .locals 1
    .param p2    # LJ0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/y3;->e:LQ1/l;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/auth/c;->g0(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
