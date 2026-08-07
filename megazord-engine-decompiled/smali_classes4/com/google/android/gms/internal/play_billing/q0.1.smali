.class public Lcom/google/android/gms/internal/play_billing/q0;
.super Lcom/google/android/gms/internal/play_billing/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/v0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/q0<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/y<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/play_billing/v0;

.field public c:Lcom/google/android/gms/internal/play_billing/v0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/v0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/y;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/q0;->b:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/v0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/v0;->h()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/o1;->a()Lcom/google/android/gms/internal/play_billing/o1;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/o1;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic R1()Lcom/google/android/gms/internal/play_billing/f1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Lcom/google/android/gms/internal/play_billing/f1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->f()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic T1()Lcom/google/android/gms/internal/play_billing/f1;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final W1()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/v0;->r(Lcom/google/android/gms/internal/play_billing/v0;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/internal/play_billing/y;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->c()Lcom/google/android/gms/internal/play_billing/q0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/play_billing/q0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->b:Lcom/google/android/gms/internal/play_billing/v0;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/v0;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/q0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->f()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->c()Lcom/google/android/gms/internal/play_billing/q0;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/v0;)Lcom/google/android/gms/internal/play_billing/q0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->b:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/q0;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/play_billing/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->f()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->W1()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzfe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfe;-><init>(Lcom/google/android/gms/internal/play_billing/f1;)V

    throw v1
.end method

.method public f()Lcom/google/android/gms/internal/play_billing/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->n()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/q0;->h()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->b:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->h()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/q0;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/q0;->c:Lcom/google/android/gms/internal/play_billing/v0;

    return-void
.end method
