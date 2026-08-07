.class public final LU0/D;
.super LU0/V;
.source "SourceFile"


# instance fields
.field public final synthetic b:LS0/c;

.field public final synthetic c:LU0/F;


# direct methods
.method public constructor <init>(LU0/F;Lcom/google/android/gms/common/api/internal/r;LS0/c;)V
    .locals 0

    iput-object p1, p0, LU0/D;->c:LU0/F;

    iput-object p3, p0, LU0/D;->b:LS0/c;

    invoke-direct {p0, p2}, LU0/V;-><init>(Lcom/google/android/gms/common/api/internal/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Le3/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, LU0/D;->c:LU0/F;

    iget-object v0, v0, LU0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    iget-object v1, p0, LU0/D;->b:LS0/c;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/o;->C(Lcom/google/android/gms/common/api/internal/o;LS0/c;)V

    return-void
.end method
