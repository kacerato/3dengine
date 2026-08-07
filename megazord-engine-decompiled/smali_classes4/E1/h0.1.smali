.class public abstract LE1/h0;
.super Lcom/google/android/gms/common/api/internal/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/internal/b$a<",
        "TR;",
        "LB1/A;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;)V
    .locals 1

    sget-object v0, LE1/a;->b:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation build LT0/a;
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/api/u;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
