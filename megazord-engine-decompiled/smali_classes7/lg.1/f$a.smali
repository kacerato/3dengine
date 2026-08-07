.class public final Llg/f$a;
.super Llg/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg/f$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Llg/f;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llg/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Llg/f;->b(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0}, Llg/f;->c()Z

    move-result v0

    return v0
.end method

.method public d(I)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Llg/f;->d(I)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B)[B
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/D;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Llg/f;->e([B)[B

    move-result-object p1

    return-object p1
.end method

.method public f([BII)[B
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Llg/f;->f([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public h()D
    .locals 2

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0}, Llg/f;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public i(D)D
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llg/f;->i(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public j(DD)D
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Llg/f;->j(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public k()F
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0}, Llg/f;->k()F

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0}, Llg/f;->l()I

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Llg/f;->m(I)I

    move-result p1

    return p1
.end method

.method public n(II)I
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llg/f;->n(II)I

    move-result p1

    return p1
.end method

.method public o()J
    .locals 2

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0}, Llg/f;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p(J)J
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llg/f;->p(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public q(JJ)J
    .locals 1

    invoke-static {}, Llg/f;->a()Llg/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Llg/f;->q(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final r(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Llg/f$a$a;->b:Llg/f$a$a;

    return-object v0
.end method
