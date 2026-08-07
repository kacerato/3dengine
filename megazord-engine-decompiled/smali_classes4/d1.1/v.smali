.class public final Ld1/v;
.super Ld1/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Ld1/B;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Ld1/v;->e:LQ1/l;

    invoke-direct {p0}, Ld1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final v1(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ld1/v;->e:LQ1/l;

    invoke-static {p1, v0, v1}, LU0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)Z

    return-void
.end method
