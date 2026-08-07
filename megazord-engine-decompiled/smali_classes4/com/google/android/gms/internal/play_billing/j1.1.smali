.class public final Lcom/google/android/gms/internal/play_billing/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/r1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/f1;

.field public final b:Lcom/google/android/gms/internal/play_billing/I1;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/play_billing/h0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/h0;->f(Lcom/google/android/gms/internal/play_billing/f1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/j1;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/j1;->a:Lcom/google/android/gms/internal/play_billing/f1;

    return-void
.end method

.method public static i(Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/f1;)Lcom/google/android/gms/internal/play_billing/j1;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/j1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/j1;-><init>(Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/f1;)V

    return-object v0
.end method


# virtual methods
.method public final Q1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->a:Lcom/google/android/gms/internal/play_billing/f1;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/v0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->h()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/f1;->c2()Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/e1;->S1()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/I1;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/j1;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/l0;->c()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/l0;->j()Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/v0;

    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->c()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->f()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/r0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/j1;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/F1;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t1;->x(Lcom/google/android/gms/internal/play_billing/I1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t1;->w(Lcom/google/android/gms/internal/play_billing/h0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/l0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->d:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->f()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/k0;->Q1()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/Y1;->zzi:Lcom/google/android/gms/internal/play_billing/Y1;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/k0;->R1()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/play_billing/H0;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/H0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/H0;->b()Lcom/google/android/gms/internal/play_billing/J0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/K0;->b()Lcom/google/android/gms/internal/play_billing/T;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->F(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->F(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->b:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/I1;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    return-void
.end method
