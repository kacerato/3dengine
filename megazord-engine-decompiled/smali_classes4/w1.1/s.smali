.class public final Lw1/s;
.super Lw1/g;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lw1/u;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lw1/s;->e:LQ1/l;

    invoke-direct {p0}, Lw1/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final q0(Lcom/google/android/gms/common/api/Status;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lw1/s;->e:LQ1/l;

    invoke-static {p1, p2, v0}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
