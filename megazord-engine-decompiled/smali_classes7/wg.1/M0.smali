.class public Lwg/M0;
.super Lwg/R0;
.source "SourceFile"

# interfaces
.implements Lwg/B;


# annotations
.annotation build LFf/f0;
.end annotation


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Lwg/K0;)V
    .locals 1
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lwg/R0;-><init>(Z)V

    invoke-virtual {p0, p1}, Lwg/R0;->M0(Lwg/K0;)V

    invoke-virtual {p0}, Lwg/M0;->x1()Z

    move-result p1

    iput-boolean p1, p0, Lwg/M0;->d:Z

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Lwg/M0;->d:Z

    return v0
.end method

.method public F0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lwg/D;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lwg/D;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/x;)V

    invoke-virtual {p0, v0}, Lwg/R0;->V0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public complete()Z
    .locals 1

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-virtual {p0, v0}, Lwg/R0;->V0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x1()Z
    .locals 4

    invoke-virtual {p0}, Lwg/R0;->I0()Lwg/v;

    move-result-object v0

    instance-of v1, v0, Lwg/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lwg/w;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lwg/R0;->C0()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Lwg/R0;->I0()Lwg/v;

    move-result-object v0

    instance-of v3, v0, Lwg/w;

    if-eqz v3, :cond_3

    check-cast v0, Lwg/w;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method
