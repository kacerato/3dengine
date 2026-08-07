.class public final Lvg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build LFf/l0;
    version = "2.0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lvg/c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lvg/a;
.end annotation


# static fields
.field public static final d:Lvg/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lvg/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I = 0x10

.field public static final g:I = 0x80


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvg/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvg/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lvg/c;->d:Lvg/c$a;

    new-instance v0, Lvg/c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lvg/c;-><init>(JJ)V

    sput-object v0, Lvg/c;->e:Lvg/c;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lvg/c;->b:J

    .line 4
    iput-wide p3, p0, Lvg/c;->c:J

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lvg/c;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic a()Lvg/c;
    .locals 1

    sget-object v0, Lvg/c;->e:Lvg/c;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0
    .annotation build LFf/f0;
    .end annotation

    return-void
.end method

.method public static synthetic g()V
    .locals 0
    .annotation build LFf/f0;
    .end annotation

    return-void
.end method


# virtual methods
.method public b(Lvg/c;)I
    .locals 4
    .param p1    # Lvg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "2.1"
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lvg/c;->b:J

    iget-wide v2, p1, Lvg/c;->b:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    iget-wide v2, p1, Lvg/c;->b:J

    invoke-static {v2, v3}, LFf/F0;->i(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lvg/c;->c:J

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    iget-wide v2, p1, Lvg/c;->c:J

    invoke-static {v2, v3}, LFf/F0;->i(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lvg/c;->c:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lvg/c;

    invoke-virtual {p0, p1}, Lvg/c;->b(Lvg/c;)I

    move-result p1

    return p1
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lvg/c;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lvg/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lvg/c;->b:J

    check-cast p1, Lvg/c;

    iget-wide v5, p1, Lvg/c;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lvg/c;->c:J

    iget-wide v5, p1, Lvg/c;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final h(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lvg/c;->b:J

    iget-wide v2, p0, Lvg/c;->c:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public final i()[B
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lvg/c;->b:J

    invoke-static {v0, v1, v2, v3}, Lvg/e;->j([BIJ)V

    const/16 v1, 0x8

    iget-wide v2, p0, Lvg/c;->c:J

    invoke-static {v0, v1, v2, v3}, Lvg/e;->j([BIJ)V

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 8
    .annotation build LFf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x24

    new-array v0, v0, [B

    iget-wide v1, p0, Lvg/c;->b:J

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    const/16 v1, 0x8

    const/16 v7, 0x2d

    aput-byte v7, v0, v1

    iget-wide v1, p0, Lvg/c;->b:J

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v4, 0x9

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    const/16 v1, 0xd

    aput-byte v7, v0, v1

    iget-wide v1, p0, Lvg/c;->b:J

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/16 v4, 0xe

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    iget-wide v1, p0, Lvg/c;->c:J

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v4, 0x13

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    const/16 v1, 0x17

    aput-byte v7, v0, v1

    iget-wide v1, p0, Lvg/c;->c:J

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v4, 0x18

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    invoke-static {v0}, Lsg/K;->W1([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-wide v1, p0, Lvg/c;->b:J

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    iget-wide v1, p0, Lvg/c;->c:J

    const/16 v4, 0x10

    invoke-static/range {v1 .. v6}, Lvg/e;->a(J[BIII)V

    invoke-static {v0}, Lsg/K;->W1([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Leg/p;)Ljava/lang/Object;
    .locals 3
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvg/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lvg/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n()[B
    .locals 1
    .annotation build LFf/l0;
        version = "2.1"
    .end annotation

    .annotation build LFf/y;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lvg/c;->i()[B

    move-result-object v0

    invoke-static {v0}, LFf/y0;->k([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final o(Leg/p;)Ljava/lang/Object;
    .locals 3
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-",
            "LFf/F0;",
            "-",
            "LFf/F0;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvg/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object v0

    invoke-virtual {p0}, Lvg/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, LFf/F0;->i(J)J

    move-result-wide v1

    invoke-static {v1, v2}, LFf/F0;->b(J)LFf/F0;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lvg/e;->i(Lvg/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lvg/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
