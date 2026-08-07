.class public final Ld1/u;
.super Ld1/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Ld1/B;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Ld1/u;->e:LQ1/l;

    invoke-direct {p0}, Ld1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final K0(Lcom/google/android/gms/common/api/Status;Lc1/b;)V
    .locals 1
    .param p2    # Lc1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld1/u;->e:LQ1/l;

    invoke-static {p1, p2, v0}, LU0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)Z

    return-void
.end method
