.class public Lcom/google/android/gms/internal/play_billing/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/play_billing/g0;


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/play_billing/f1;

.field public volatile b:Lcom/google/android/gms/internal/play_billing/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/g0;->d:Lcom/google/android/gms/internal/play_billing/g0;

    sput-object v0, Lcom/google/android/gms/internal/play_billing/K0;->c:Lcom/google/android/gms/internal/play_billing/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/P;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/P;->f:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/f1;->R1()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/play_billing/T;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/f1;->N1()Lcom/google/android/gms/internal/play_billing/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/f1;)Lcom/google/android/gms/internal/play_billing/f1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/f1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;
    :try_end_1
    .catch Lcom/google/android/gms/internal/play_billing/zzdc; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/K0;->b:Lcom/google/android/gms/internal/play_billing/T;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/K0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/K0;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/K0;->b()Lcom/google/android/gms/internal/play_billing/T;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/K0;->b()Lcom/google/android/gms/internal/play_billing/T;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/T;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/g1;->T1()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/K0;->d(Lcom/google/android/gms/internal/play_billing/f1;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/g1;->T1()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/K0;->d(Lcom/google/android/gms/internal/play_billing/f1;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/K0;->a:Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
