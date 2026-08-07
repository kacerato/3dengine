.class public final LW2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW2/s$d;,
        LW2/s$c;,
        LW2/s$b;,
        LW2/s$i;,
        LW2/s$h;,
        LW2/s$g;,
        LW2/s$f;,
        LW2/s$e;
    }
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, LW2/s;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)LW2/q;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LW2/E;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW2/E;-><init>(IZ)V

    return-object v0
.end method

.method public static B()LW2/q;
    .locals 1

    sget-object v0, LW2/E;->e:LW2/q;

    return-object v0
.end method

.method public static C(I)LW2/q;
    .locals 2

    new-instance v0, LW2/E;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LW2/E;-><init>(IZ)V

    return-object v0
.end method

.method public static D()LW2/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LW2/s$f;->a:LW2/q;

    return-object v0
.end method

.method public static E()LW2/q;
    .locals 1

    sget-object v0, LW2/s$g;->a:LW2/q;

    return-object v0
.end method

.method public static F()LW2/q;
    .locals 1

    sget-object v0, LW2/s$h;->a:LW2/q;

    return-object v0
.end method

.method public static G()LW2/q;
    .locals 1

    sget-object v0, LW2/s$i;->a:LW2/q;

    return-object v0
.end method

.method public static H()LW2/q;
    .locals 1

    sget-object v0, LW2/H;->f:LW2/q;

    return-object v0
.end method

.method public static I(JJ)LW2/q;
    .locals 8

    new-instance v7, LW2/H;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, LW2/H;-><init>(IIJJ)V

    return-object v7
.end method

.method public static a()LW2/q;
    .locals 1

    sget-object v0, LW2/s$b;->ADLER_32:LW2/s$b;

    iget-object v0, v0, LW2/s$b;->hashFunction:LW2/q;

    return-object v0
.end method

.method public static b(I)I
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, LR2/H;->e(ZLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1f

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public static c(Ljava/lang/Iterable;)LW2/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "LW2/p;",
            ">;)",
            "LW2/p;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, LR2/H;->e(ZLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW2/p;

    invoke-virtual {v0}, LW2/p;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW2/p;

    invoke-virtual {v2}, LW2/p;->a()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v3, v5}, LR2/H;->e(ZLjava/lang/Object;)V

    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_0

    aget-byte v3, v1, v4

    mul-int/lit8 v3, v3, 0x25

    aget-byte v5, v2, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, LW2/p;->h([B)LW2/p;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;)LW2/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "LW2/p;",
            ">;)",
            "LW2/p;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, LR2/H;->e(ZLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW2/p;

    invoke-virtual {v0}, LW2/p;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW2/p;

    invoke-virtual {v2}, LW2/p;->a()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v3, v5}, LR2/H;->e(ZLjava/lang/Object;)V

    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_0

    aget-byte v3, v1, v4

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, LW2/p;->h([B)LW2/p;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(LW2/q;LW2/q;[LW2/q;)LW2/q;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, LW2/s$c;

    const/4 p1, 0x0

    new-array p1, p1, [LW2/q;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LW2/q;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LW2/s$c;-><init>([LW2/q;LW2/s$a;)V

    return-object p0
.end method

.method public static f(Ljava/lang/Iterable;)LW2/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "LW2/q;",
            ">;)",
            "LW2/q;"
        }
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW2/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "number of hash functions (%s) must be > 0"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, LR2/H;->k(ZLjava/lang/String;I)V

    new-instance p0, LW2/s$c;

    const/4 v1, 0x0

    new-array v1, v1, [LW2/q;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/q;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LW2/s$c;-><init>([LW2/q;LW2/s$a;)V

    return-object p0
.end method

.method public static g(JI)I
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "buckets must be positive: %s"

    invoke-static {v1, v2, p2}, LR2/H;->k(ZLjava/lang/String;I)V

    new-instance v1, LW2/s$d;

    invoke-direct {v1, p0, p1}, LW2/s$d;-><init>(J)V

    :goto_1
    add-int/lit8 p0, v0, 0x1

    int-to-double p0, p0

    invoke-virtual {v1}, LW2/s$d;->a()D

    move-result-wide v2

    div-double/2addr p0, v2

    double-to-int p0, p0

    if-ltz p0, :cond_1

    if-ge p0, p2, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static h(LW2/p;I)I
    .locals 2

    invoke-virtual {p0}, LW2/p;->m()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, LW2/s;->g(JI)I

    move-result p0

    return p0
.end method

.method public static i()LW2/q;
    .locals 1

    sget-object v0, LW2/s$b;->CRC_32:LW2/s$b;

    iget-object v0, v0, LW2/s$b;->hashFunction:LW2/q;

    return-object v0
.end method

.method public static j()LW2/q;
    .locals 1

    sget-object v0, LW2/j;->b:LW2/q;

    return-object v0
.end method

.method public static k()LW2/q;
    .locals 1

    sget-object v0, LW2/l;->b:LW2/q;

    return-object v0
.end method

.method public static l()LW2/q;
    .locals 1

    sget-object v0, LW2/m;->b:LW2/q;

    return-object v0
.end method

.method public static m(I)LW2/q;
    .locals 4

    invoke-static {p0}, LW2/s;->b(I)I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    sget-object p0, LW2/E;->f:LW2/q;

    return-object p0

    :cond_0
    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    sget-object p0, LW2/D;->d:LW2/q;

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x7f

    div-int/2addr p0, v0

    new-array v0, p0, [LW2/q;

    const/4 v1, 0x0

    sget-object v2, LW2/D;->d:LW2/q;

    aput-object v2, v0, v1

    sget v1, LW2/s;->a:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p0, :cond_2

    const v3, 0x596f0ddf

    add-int/2addr v1, v3

    invoke-static {v1}, LW2/s;->y(I)LW2/q;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, LW2/s$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LW2/s$c;-><init>([LW2/q;LW2/s$a;)V

    return-object p0
.end method

.method public static n(Ljava/security/Key;)LW2/q;
    .locals 3

    new-instance v0, LW2/B;

    const-string v1, "hmacMd5"

    invoke-static {v1, p0}, LW2/s;->v(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacMD5"

    invoke-direct {v0, v2, p0, v1}, LW2/B;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static o([B)LW2/q;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacMD5"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, LW2/s;->n(Ljava/security/Key;)LW2/q;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/security/Key;)LW2/q;
    .locals 3

    new-instance v0, LW2/B;

    const-string v1, "hmacSha1"

    invoke-static {v1, p0}, LW2/s;->v(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v2, p0, v1}, LW2/B;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static q([B)LW2/q;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, LW2/s;->p(Ljava/security/Key;)LW2/q;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/security/Key;)LW2/q;
    .locals 3

    new-instance v0, LW2/B;

    const-string v1, "hmacSha256"

    invoke-static {v1, p0}, LW2/s;->v(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, p0, v1}, LW2/B;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static s([B)LW2/q;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, LW2/s;->r(Ljava/security/Key;)LW2/q;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/security/Key;)LW2/q;
    .locals 3

    new-instance v0, LW2/B;

    const-string v1, "hmacSha512"

    invoke-static {v1, p0}, LW2/s;->v(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v2, p0, v1}, LW2/B;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static u([B)LW2/q;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, LW2/s;->t(Ljava/security/Key;)LW2/q;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Hashing.%s(Key[algorithm=%s, format=%s])"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w()LW2/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LW2/s$e;->a:LW2/q;

    return-object v0
.end method

.method public static x()LW2/q;
    .locals 1

    sget-object v0, LW2/D;->c:LW2/q;

    return-object v0
.end method

.method public static y(I)LW2/q;
    .locals 1

    new-instance v0, LW2/D;

    invoke-direct {v0, p0}, LW2/D;-><init>(I)V

    return-object v0
.end method

.method public static z()LW2/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LW2/E;->d:LW2/q;

    return-object v0
.end method
