.class public final Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/c5;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;)V
    .locals 0

    iput-object p1, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final T1()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U1()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V1()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W1()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/I1;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->Q(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->G(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/I1;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final e2()J
    .locals 2

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->U()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->f(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final g(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/I1;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lcom/google/android/gms/measurement/internal/d4;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->y(Lcom/google/android/gms/measurement/internal/d4;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/I1;->H(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/I1;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->B(Lcom/google/android/gms/measurement/internal/e4;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/I1;->A(Lcom/google/android/gms/measurement/internal/e4;)V

    return-void
.end method
