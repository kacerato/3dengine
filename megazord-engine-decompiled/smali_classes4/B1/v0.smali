.class public final LB1/v0;
.super LB1/i;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/common/api/internal/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LB1/i;-><init>()V

    iput-object p1, p0, LB1/v0;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method


# virtual methods
.method public final O1()V
    .locals 0

    return-void
.end method

.method public final W1(LB1/b;)V
    .locals 1

    iget-object v0, p0, LB1/v0;->e:Lcom/google/android/gms/common/api/internal/b$b;

    invoke-virtual {p1}, LB1/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Ljava/lang/Object;)V

    return-void
.end method
