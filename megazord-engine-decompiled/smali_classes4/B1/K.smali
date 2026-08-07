.class public final LB1/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/A;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;LE1/t;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "LE1/t;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "LE1/v;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LB1/J;-><init>(LB1/K;Lcom/google/android/gms/common/api/l;LE1/t;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->l(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method
