.class public final synthetic LE1/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/j;

.field public final b:LE1/W;

.field public final c:LE1/q;

.field public final d:LE1/U;

.field public final e:LB1/C;

.field public final f:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method public constructor <init>(LE1/j;LE1/W;LE1/q;LE1/U;LB1/C;Lcom/google/android/gms/common/api/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/K;->a:LE1/j;

    iput-object p2, p0, LE1/K;->b:LE1/W;

    iput-object p3, p0, LE1/K;->c:LE1/q;

    iput-object p4, p0, LE1/K;->d:LE1/U;

    iput-object p5, p0, LE1/K;->e:LB1/C;

    iput-object p6, p0, LE1/K;->f:Lcom/google/android/gms/common/api/internal/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, LE1/K;->a:LE1/j;

    iget-object v1, p0, LE1/K;->b:LE1/W;

    iget-object v2, p0, LE1/K;->c:LE1/q;

    iget-object v3, p0, LE1/K;->d:LE1/U;

    iget-object v4, p0, LE1/K;->e:LB1/C;

    iget-object v5, p0, LE1/K;->f:Lcom/google/android/gms/common/api/internal/f;

    move-object v6, p1

    check-cast v6, LB1/A;

    move-object v7, p2

    check-cast v7, LQ1/l;

    invoke-virtual/range {v0 .. v7}, LE1/j;->r0(LE1/W;LE1/q;LE1/U;LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/A;LQ1/l;)V

    return-void
.end method
