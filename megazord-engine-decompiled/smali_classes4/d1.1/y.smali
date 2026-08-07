.class public final Ld1/y;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Ld1/B;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Ld1/y;->e:LQ1/l;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final O0(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Ld1/y;->e:LQ1/l;

    invoke-static {p1, v0, v1}, LU0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)Z

    return-void
.end method
