.class public final Lcom/google/android/gms/internal/play_billing/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/r1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/r1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:[I

.field public static final p:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/play_billing/f1;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/play_billing/S0;

.field public final k:Lcom/google/android/gms/internal/play_billing/I1;

.field public final l:Lcom/google/android/gms/internal/play_billing/h0;

.field public final m:Lcom/google/android/gms/internal/play_billing/l1;

.field public final n:Lcom/google/android/gms/internal/play_billing/Z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/i1;->o:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S1;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/f1;IZ[IIILcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/i1;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/i1;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/i1;->d:I

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/play_billing/h0;->f(Lcom/google/android/gms/internal/play_billing/f1;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/play_billing/i1;->g:[I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/i1;->h:I

    iput p10, p0, Lcom/google/android/gms/internal/play_billing/i1;->i:I

    iput-object p11, p0, Lcom/google/android/gms/internal/play_billing/i1;->m:Lcom/google/android/gms/internal/play_billing/l1;

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/i1;->j:Lcom/google/android/gms/internal/play_billing/S0;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    iput-object p14, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/i1;->e:Lcom/google/android/gms/internal/play_billing/f1;

    iput-object p15, p0, Lcom/google/android/gms/internal/play_billing/i1;->n:Lcom/google/android/gms/internal/play_billing/Z0;

    return-void
.end method

.method public static A(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static B(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static C(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static F(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static H(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/r1;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/r1;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static t(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/v0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/v0;->s()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final w(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/Z1;->k(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/T;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/Z1;->n(ILcom/google/android/gms/internal/play_billing/T;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/J1;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/v0;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->c()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->f()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    :cond_0
    return-object v0
.end method

.method public static z(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b1;Lcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)Lcom/google/android/gms/internal/play_billing/i1;
    .locals 33

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/q1;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/play_billing/q1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/play_billing/i1;->o:[I

    move v11, v3

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q1;->b()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q1;->zza()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v20, 0x1

    aput v21, v17, v20

    move/from16 v20, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v5, v3, 0x800

    move/from16 v26, v2

    const/16 v2, 0x33

    if-lt v6, v2, :cond_23

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v30, 0xd

    move/from16 v32, v27

    move/from16 v27, v8

    move/from16 v8, v32

    :goto_10
    add-int/lit8 v31, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v2, :cond_1a

    and-int/lit16 v2, v8, 0x1fff

    shl-int v2, v2, v30

    or-int v27, v27, v2

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v31

    const v2, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v8, v30

    or-int v8, v27, v2

    move/from16 v2, v31

    goto :goto_11

    :cond_1b
    move/from16 v2, v27

    :goto_11
    move/from16 v27, v2

    add-int/lit8 v2, v6, -0x33

    move/from16 v30, v14

    const/16 v14, 0x9

    if-eq v2, v14, :cond_1c

    const/16 v14, 0x11

    if-ne v2, v14, :cond_1d

    :cond_1c
    const/4 v14, 0x1

    goto :goto_14

    :cond_1d
    const/16 v14, 0xc

    if-ne v2, v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q1;->O1()I

    move-result v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1f

    if-eqz v5, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v24

    :goto_13
    move/from16 v16, v2

    goto :goto_15

    :goto_14
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v14, v10, v16

    aput-object v14, v12, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v8, v8

    aget-object v2, v10, v8

    instance-of v14, v2, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_16
    move/from16 v31, v13

    goto :goto_17

    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/i1;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v8

    goto :goto_16

    :goto_17
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v10, v8

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_22

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_22
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/i1;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v10, v8

    :goto_18
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v0, v16

    move/from16 v25, v27

    move/from16 v16, v8

    const/4 v8, 0x0

    goto/16 :goto_24

    :cond_23
    move/from16 v31, v13

    move/from16 v30, v14

    add-int/lit8 v2, v16, 0x1

    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/i1;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_24

    const/16 v14, 0x11

    if-ne v6, v14, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_2d

    const/16 v14, 0x31

    if-ne v6, v14, :cond_26

    add-int/lit8 v16, v16, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    const/16 v14, 0xc

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v14, 0x32

    if-ne v6, v14, :cond_28

    add-int/lit8 v14, v16, 0x2

    add-int/lit8 v28, v22, 0x1

    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    if-eqz v5, :cond_29

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v16, 0x3

    aget-object v14, v10, v14

    aput-object v14, v12, v22

    move/from16 v22, v28

    :cond_28
    :goto_19
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1f

    :cond_29
    move v2, v14

    move/from16 v22, v28

    const/4 v5, 0x0

    goto :goto_19

    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q1;->O1()I

    move-result v14

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_2c

    if-eqz v5, :cond_2b

    goto :goto_1b

    :cond_2b
    const/4 v5, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    :goto_1c
    move/from16 v2, v16

    goto :goto_1f

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v16, v16, 0x2

    :goto_1d
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    goto :goto_1c

    :goto_1e
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v14

    :goto_1f
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    and-int/lit16 v14, v3, 0x1000

    const v16, 0xfffff

    if-eqz v14, :cond_31

    const/16 v14, 0x11

    if-gt v6, v14, :cond_31

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v0, 0xd800

    if-lt v8, v0, :cond_2f

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_20
    add-int/lit8 v25, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v0, :cond_2e

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v8, v14

    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v25

    goto :goto_20

    :cond_2e
    shl-int v14, v14, v16

    or-int/2addr v8, v14

    goto :goto_21

    :cond_2f
    move/from16 v25, v14

    :goto_21
    add-int v14, v7, v7

    div-int/lit8 v16, v8, 0x20

    add-int v14, v14, v16

    aget-object v0, v10, v14

    move-object/from16 v29, v1

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_22

    :cond_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/play_billing/i1;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v10, v14

    :goto_22
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v8, v8, 0x20

    move/from16 v16, v0

    goto :goto_23

    :cond_31
    move-object/from16 v29, v1

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_23
    const/16 v0, 0x12

    if-lt v6, v0, :cond_32

    const/16 v0, 0x31

    if-gt v6, v0, :cond_32

    add-int/lit8 v0, v23, 0x1

    aput v13, v17, v23

    move/from16 v23, v0

    :cond_32
    move v0, v2

    move v2, v13

    :goto_24
    add-int/lit8 v1, v21, 0x1

    aput v4, v11, v21

    add-int/lit8 v4, v21, 0x2

    and-int/lit16 v13, v3, 0x200

    if-eqz v13, :cond_33

    const/high16 v13, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v13, 0x0

    :goto_25
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_34

    const/high16 v3, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v3, 0x0

    :goto_26
    if-eqz v5, :cond_35

    const/high16 v5, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v5, 0x0

    :goto_27
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v13

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v11, v1

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v8, 0x14

    or-int v1, v1, v16

    aput v1, v11, v4

    move/from16 v16, v0

    move/from16 v4, v25

    move/from16 v2, v26

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v14, v30

    move/from16 v13, v31

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v31, v13

    move/from16 v30, v14

    new-instance v0, Lcom/google/android/gms/internal/play_billing/i1;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/q1;->zza()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v14

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/q1;->O1()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v31

    move/from16 v13, v30

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/play_billing/i1;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/f1;IZ[IIILcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/play_billing/G1;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final D(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final E(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final G(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final I(I)Lcom/google/android/gms/internal/play_billing/z0;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->b:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/z0;

    return-object p1
.end method

.method public final J(I)Lcom/google/android/gms/internal/play_billing/r1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/r1;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/o1;->a()Lcom/google/android/gms/internal/play_billing/o1;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/o1;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i1;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final K(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final L(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final M(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final Q1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->e:Lcom/google/android/gms/internal/play_billing/f1;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->h()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/v0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/v0;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/v0;->q(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/z;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->o()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/Y0;->j()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i1;->j:Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/S0;->a(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v2, v2, v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->g(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->d(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    array-length v2, v2

    if-ge v11, v2, :cond_1c

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    add-int/lit8 v5, v11, 0x2

    aget v13, v4, v11

    aget v4, v4, v5

    and-int v5, v4, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v3, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v1, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v15, v4

    move v14, v0

    move/from16 v16, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v2, v10

    sget-object v1, Lcom/google/android/gms/internal/play_billing/m0;->zzJ:Lcom/google/android/gms/internal/play_billing/m0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/m0;->zza()I

    move-result v1

    if-lt v3, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/m0;->zzW:Lcom/google/android/gms/internal/play_billing/m0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/m0;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->t(ILcom/google/android/gms/internal/play_billing/f1;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v0

    :goto_3
    add-int/2addr v12, v0

    goto/16 :goto_19

    :pswitch_1
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    goto :goto_4

    :pswitch_3
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto :goto_4

    :pswitch_6
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    goto :goto_4

    :pswitch_7
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/T;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/t1;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/play_billing/T;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_7

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->v(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    :goto_8
    add-int/2addr v0, v15

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_11
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->K(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y0;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/X0;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Y0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_a

    :cond_6
    move v3, v9

    move v4, v3

    :goto_9
    if-ge v3, v2, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/play_billing/a0;->t(ILcom/google/android/gms/internal/play_billing/f1;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_7
    :goto_a
    add-int/2addr v12, v4

    goto/16 :goto_19

    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->q(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    :goto_b
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_c
    add-int/2addr v12, v1

    goto/16 :goto_19

    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->p(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_b

    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_b

    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->j(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_b

    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->h(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_b

    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->r(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_b

    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->j(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->s(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->n(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->j(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_d
    move v0, v9

    goto/16 :goto_3

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->q(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    :goto_e
    mul-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_d

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->p(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->k(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->i(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->h(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->r(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_c

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_12

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_10
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/play_billing/K0;

    if-eqz v13, :cond_f

    check-cast v5, Lcom/google/android/gms/internal/play_billing/K0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/K0;->a()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    goto :goto_11

    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/a0;->u(Lcom/google/android/gms/internal/play_billing/f1;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_10
    :goto_12
    add-int/2addr v12, v3

    goto/16 :goto_19

    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    :goto_13
    move v2, v9

    goto :goto_18

    :cond_11
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/M0;

    if-eqz v3, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/play_billing/M0;

    move v3, v9

    :goto_14
    if-ge v3, v1, :cond_15

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/play_billing/M0;->Y3(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_15

    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->v(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v9

    :goto_16
    if-ge v3, v1, :cond_15

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_17

    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->v(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_15
    :goto_18
    add-int/2addr v12, v2

    goto/16 :goto_19

    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->i(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->k(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_d

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->m(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_d

    :cond_18
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->s(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_13

    :cond_19
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/t1;->n(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_18

    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->i(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/play_billing/t1;->k(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/a0;->t(ILcom/google/android/gms/internal/play_billing/f1;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/T;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/t1;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/T;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/play_billing/T;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto/16 :goto_7

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->v(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a0;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    goto/16 :goto_5

    :cond_1b
    :goto_19
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/I1;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v1

    if-ge v9, v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/l0;->b(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_1d
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/l0;->b(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1b

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/i1;->h:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i1;->g:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v11, v2, v10

    aget v12, v4, v11

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->K(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/X0;

    const/4 v0, 0x0

    throw v0

    :cond_6
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/play_billing/i1;->s(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/r1;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/r1;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/play_billing/i1;->s(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/r1;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->j()Z

    move-result v0

    if-nez v0, :cond_c

    return v8

    :cond_c
    return v3
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/E;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/i1;->x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/E;)I

    return-void
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v2

    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->v(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/E0;->a(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->B(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i1;->A(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/E0;->a(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/F1;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i1;->i(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v1

    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->k(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->m(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->k(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i1;->m(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/Z0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i1;->j:Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S0;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->r(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/S1;->u(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->t(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t1;->x(Lcom/google/android/gms/internal/play_billing/I1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t1;->w(Lcom/google/android/gms/internal/play_billing/h0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/i1;->D(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/t1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i1;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/l0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/h0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/l0;->f()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    sget-object v12, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    const v0, 0xfffff

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v3, v11

    if-ge v15, v3, :cond_a

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v5

    aget v14, v4, v15

    const/16 v9, 0x11

    if-gt v5, v9, :cond_3

    add-int/lit8 v9, v15, 0x2

    aget v4, v4, v9

    const v9, 0xfffff

    and-int v13, v4, v9

    if-eq v13, v0, :cond_2

    if-ne v13, v9, :cond_1

    move-object v9, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object v9, v1

    int-to-long v0, v13

    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v13

    goto :goto_3

    :cond_2
    move-object v9, v1

    :goto_3
    ushr-int/lit8 v1, v4, 0x14

    const/4 v4, 0x1

    shl-int v1, v4, v1

    move/from16 v21, v1

    move/from16 v20, v2

    move-object v13, v9

    :goto_4
    move v9, v0

    goto :goto_5

    :cond_3
    move-object v9, v1

    move/from16 v20, v2

    move-object v13, v9

    const/16 v21, 0x0

    goto :goto_4

    :goto_5
    if-eqz v13, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/play_billing/h0;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v14, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v8, v13}, Lcom/google/android/gms/internal/play_billing/h0;->e(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/util/Map$Entry;)V

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    goto :goto_5

    :cond_5
    const v18, 0xfffff

    and-int v0, v3, v18

    int-to-long v3, v0

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_6
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    :goto_7
    const/16 v22, 0x0

    goto/16 :goto_e

    :pswitch_0
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->l(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    goto :goto_6

    :pswitch_1
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->s(IJ)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->w(II)V

    goto :goto_6

    :pswitch_3
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->B(IJ)V

    goto :goto_6

    :pswitch_4
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->u(II)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->g(II)V

    goto :goto_6

    :pswitch_6
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->z(II)V

    goto :goto_6

    :pswitch_7
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/T;

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->n(ILcom/google/android/gms/internal/play_billing/T;)V

    goto :goto_6

    :pswitch_8
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v8}, Lcom/google/android/gms/internal/play_billing/i1;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->v(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->m(IZ)V

    goto/16 :goto_6

    :pswitch_b
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->e(II)V

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->I(IJ)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->C(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->r(II)V

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->K(IJ)V

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->H(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->o(IJ)V

    goto/16 :goto_6

    :pswitch_10
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->B(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->D(IF)V

    goto/16 :goto_6

    :pswitch_11
    invoke-virtual {v6, v7, v14, v15}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/i1;->A(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->b(ID)V

    goto/16 :goto_6

    :pswitch_12
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->K(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/X0;

    const/16 v17, 0x0

    throw v17

    :pswitch_13
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->l(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    goto/16 :goto_7

    :pswitch_14
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_15
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_16
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_17
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_18
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_19
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_1a
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_9

    :pswitch_1b
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_1c
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_1d
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->F(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_1e
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->f(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_1f
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->G(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_20
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->E(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_21
    const/4 v2, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto/16 :goto_9

    :pswitch_22
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    :goto_a
    move/from16 v22, v2

    :goto_b
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    goto/16 :goto_e

    :pswitch_23
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_a

    :pswitch_24
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_a

    :pswitch_25
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_a

    :pswitch_26
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_a

    :pswitch_27
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/play_billing/t1;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_a

    :pswitch_28
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->j(ILjava/util/List;)V

    goto/16 :goto_9

    :pswitch_29
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/b0;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :pswitch_2a
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->J(ILjava/util/List;)V

    goto/16 :goto_9

    :pswitch_2b
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    :goto_d
    move/from16 v22, v5

    goto/16 :goto_b

    :pswitch_2c
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_2d
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_2e
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->F(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_2f
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->f(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_30
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->G(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_31
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->E(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_32
    const/4 v5, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/play_billing/t1;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/Z1;Z)V

    goto :goto_d

    :pswitch_33
    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    move-wide v10, v3

    move v3, v9

    move/from16 v4, v20

    move/from16 v22, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->l(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    goto/16 :goto_e

    :pswitch_34
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->s(IJ)V

    goto/16 :goto_e

    :pswitch_35
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->w(II)V

    goto/16 :goto_e

    :pswitch_36
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->B(IJ)V

    goto/16 :goto_e

    :pswitch_37
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->u(II)V

    goto/16 :goto_e

    :pswitch_38
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->g(II)V

    goto/16 :goto_e

    :pswitch_39
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->z(II)V

    goto/16 :goto_e

    :pswitch_3a
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/T;

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->n(ILcom/google/android/gms/internal/play_billing/T;)V

    goto/16 :goto_e

    :pswitch_3b
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v1

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    goto/16 :goto_e

    :pswitch_3c
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v8}, Lcom/google/android/gms/internal/play_billing/i1;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    goto/16 :goto_e

    :pswitch_3d
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->m(IZ)V

    goto/16 :goto_e

    :pswitch_3e
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->e(II)V

    goto/16 :goto_e

    :pswitch_3f
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->I(IJ)V

    goto/16 :goto_e

    :pswitch_40
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->r(II)V

    goto/16 :goto_e

    :pswitch_41
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->K(IJ)V

    goto/16 :goto_e

    :pswitch_42
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->o(IJ)V

    goto :goto_e

    :pswitch_43
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->D(IF)V

    goto :goto_e

    :pswitch_44
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i1;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->b(ID)V

    :cond_9
    :goto_e
    add-int/lit8 v15, v15, 0x3

    move v0, v9

    move-object v1, v13

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move/from16 v2, v20

    goto/16 :goto_1

    :cond_a
    move-object v9, v1

    move-object/from16 v16, v10

    const/16 v17, 0x0

    :goto_f
    if-eqz v1, :cond_c

    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->l:Lcom/google/android/gms/internal/play_billing/h0;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/play_billing/h0;->e(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/util/Map$Entry;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_f

    :cond_b
    move-object/from16 v1, v17

    goto :goto_f

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/I1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/play_billing/I1;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v0, v0, p3

    invoke-virtual {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->u(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->m(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/i1;->t(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/r1;->Q1()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/r1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->D(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final m(Ljava/lang/Object;II)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->D(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/S1;->v(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i1;->l(Ljava/lang/Object;I)V

    return-void
.end method

.method public final o(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/i1;->m(Ljava/lang/Object;II)V

    return-void
.end method

.method public final p(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Ljava/lang/Object;I)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->D(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/T;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/T;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->B(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->g(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->f(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i1;->q(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final u(Ljava/lang/Object;II)Z
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/i1;->D(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/S1;->h(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/E;)I
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v3, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i1;->i(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    move/from16 v8, p3

    move v10, v2

    move v11, v10

    move v12, v11

    const/4 v9, -0x1

    const v13, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v8, v5, :cond_7b

    add-int/lit8 v11, v8, 0x1

    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    invoke-static {v8, v15, v11, v3}, Lcom/google/android/gms/internal/play_billing/F;->i(I[BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    iget v11, v3, Lcom/google/android/gms/internal/play_billing/E;->a:I

    goto :goto_1

    :cond_0
    move/from16 v30, v11

    move v11, v8

    move/from16 v8, v30

    :goto_1
    ushr-int/lit8 v14, v11, 0x3

    const/4 v1, 0x3

    if-le v14, v9, :cond_2

    div-int/2addr v10, v1

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/i1;->c:I

    if-lt v14, v9, :cond_1

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/i1;->d:I

    if-gt v14, v9, :cond_1

    invoke-virtual {v0, v14, v10}, Lcom/google/android/gms/internal/play_billing/i1;->E(II)I

    move-result v9

    goto :goto_2

    :cond_1
    const/4 v9, -0x1

    :goto_2
    move v10, v9

    const/4 v9, -0x1

    goto :goto_3

    :cond_2
    iget v9, v0, Lcom/google/android/gms/internal/play_billing/i1;->c:I

    if-lt v14, v9, :cond_3

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/i1;->d:I

    if-gt v14, v9, :cond_3

    invoke-virtual {v0, v14, v2}, Lcom/google/android/gms/internal/play_billing/i1;->E(II)I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_3
    if-ne v10, v9, :cond_4

    move v10, v2

    move/from16 v17, v10

    move-object/from16 v22, v4

    move/from16 v19, v9

    move/from16 v18, v13

    move v9, v14

    move-object v13, v15

    move-object v14, v3

    move v15, v6

    move v3, v8

    goto/16 :goto_4f

    :cond_4
    and-int/lit8 v2, v11, 0x7

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    add-int/lit8 v19, v10, 0x1

    aget v1, v9, v19

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i1;->F(I)I

    move-result v5

    const v17, 0xfffff

    and-int v6, v1, v17

    move/from16 v19, v14

    int-to-long v14, v6

    const/high16 v21, 0x20000000

    const-wide/16 v23, 0x0

    const-string v6, ""

    move/from16 v26, v8

    const/16 v8, 0x11

    if-gt v5, v8, :cond_1d

    add-int/lit8 v8, v10, 0x2

    aget v8, v9, v8

    ushr-int/lit8 v9, v8, 0x14

    const/16 v22, 0x1

    shl-int v9, v22, v9

    move-wide/from16 v27, v14

    const v14, 0xfffff

    and-int/2addr v8, v14

    if-eq v8, v13, :cond_7

    if-eq v13, v14, :cond_5

    int-to-long v14, v13

    invoke-virtual {v4, v7, v14, v15, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v14, 0xfffff

    :cond_5
    if-ne v8, v14, :cond_6

    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    int-to-long v12, v8

    invoke-virtual {v4, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    :goto_4
    move v15, v8

    goto :goto_5

    :cond_7
    move v15, v13

    :goto_5
    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    or-int v1, v12, v9

    invoke-virtual {v0, v7, v10}, Lcom/google/android/gms/internal/play_billing/i1;->L(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 v5, v19, 0x3

    or-int/lit8 v13, v5, 0x4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v9

    move/from16 v5, v26

    move-object v8, v2

    const/4 v6, -0x1

    move v12, v10

    move-object/from16 v10, p2

    move/from16 p3, v15

    move v15, v11

    move v11, v5

    move v5, v12

    move/from16 v12, p4

    move/from16 v29, v19

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/F;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;[BIIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    invoke-virtual {v0, v7, v5, v2}, Lcom/google/android/gms/internal/play_billing/i1;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p3

    move/from16 v6, p5

    move v12, v1

    move v10, v5

    move v11, v15

    move/from16 v9, v29

    const/4 v2, 0x0

    move-object/from16 v15, p2

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_8
    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v6, -0x1

    move v15, v11

    move-object/from16 v11, p2

    :goto_6
    move-object v13, v3

    move-object v10, v4

    move/from16 v19, v6

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_18

    :pswitch_0
    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v6, -0x1

    move v15, v11

    if-nez v2, :cond_a

    or-int/2addr v12, v9

    move-object/from16 v11, p2

    move-wide/from16 v8, v27

    invoke-static {v11, v5, v3}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v10

    iget-wide v1, v3, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/X;->b(J)J

    move-result-wide v16

    move/from16 v19, v6

    move-object v1, v4

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object v5, v3

    move-object v6, v4

    move-wide v3, v8

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v13, v5

    move/from16 v20, v10

    move-object v10, v6

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v6, v9

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    move/from16 v8, v20

    :goto_7
    move/from16 v9, v29

    const/4 v2, 0x0

    :goto_8
    move/from16 v13, p3

    :goto_9
    move/from16 v30, v15

    move-object v15, v11

    move/from16 v11, v30

    goto/16 :goto_0

    :cond_a
    move-object/from16 v11, p2

    move/from16 v8, p4

    move/from16 v9, p5

    goto :goto_6

    :pswitch_1
    move/from16 v8, p4

    move/from16 v6, p5

    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-nez v2, :cond_9

    or-int/2addr v12, v9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/X;->a(I)I

    move-result v2

    invoke-virtual {v10, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    move v5, v8

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    move/from16 v9, v29

    const/4 v2, 0x0

    :goto_b
    move/from16 v13, p3

    move v8, v1

    goto :goto_9

    :pswitch_2
    move/from16 v8, p4

    move/from16 v6, p5

    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-nez v2, :cond_9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    move/from16 v16, v2

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/play_billing/i1;->I(I)Lcom/google/android/gms/internal/play_billing/z0;

    move-result-object v2

    const/high16 v17, -0x80000000

    and-int v1, v1, v17

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/play_billing/z0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_d

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i1;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v1

    int-to-long v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/play_billing/J1;->j(ILjava/lang/Object;)V

    :goto_c
    move v5, v8

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    move/from16 v8, v16

    goto/16 :goto_7

    :cond_c
    :goto_d
    or-int/2addr v12, v9

    invoke-virtual {v10, v7, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_3
    move/from16 v8, p4

    move/from16 v6, p5

    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_9

    or-int/2addr v12, v9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->a([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    invoke-virtual {v10, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    move/from16 v8, p4

    move/from16 v6, p5

    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_9

    or-int/2addr v12, v9

    invoke-virtual {v0, v7, v14}, Lcom/google/android/gms/internal/play_billing/i1;->L(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    move-object v1, v9

    move-object/from16 v3, p2

    move v4, v5

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;[BIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    invoke-virtual {v0, v7, v14, v9}, Lcom/google/android/gms/internal/play_billing/i1;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v6, p5

    goto/16 :goto_a

    :pswitch_5
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v8, 0x2

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v8, :cond_9

    and-int v1, v1, v21

    if-eqz v1, :cond_18

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v2, :cond_17

    or-int v5, v12, v9

    if-nez v2, :cond_d

    iput-object v6, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    move/from16 v16, v5

    const/4 v5, 0x0

    goto/16 :goto_12

    :cond_d
    sget v6, Lcom/google/android/gms/internal/play_billing/W1;->b:I

    array-length v6, v11

    sub-int v8, v6, v1

    or-int v9, v1, v2

    sub-int/2addr v8, v2

    or-int/2addr v8, v9

    if-ltz v8, :cond_16

    add-int v6, v1, v2

    new-array v2, v2, [C

    const/4 v8, 0x0

    :goto_e
    if-ge v1, v6, :cond_e

    aget-byte v9, v11, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/T1;->d(B)Z

    move-result v12

    if-eqz v12, :cond_e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v8, 0x1

    int-to-char v9, v9

    aput-char v9, v2, v8

    move v8, v12

    goto :goto_e

    :cond_e
    :goto_f
    if-ge v1, v6, :cond_15

    add-int/lit8 v9, v1, 0x1

    aget-byte v12, v11, v1

    invoke-static {v12}, Lcom/google/android/gms/internal/play_billing/T1;->d(B)Z

    move-result v16

    if-eqz v16, :cond_f

    add-int/lit8 v1, v8, 0x1

    int-to-char v12, v12

    aput-char v12, v2, v8

    move v8, v1

    move v1, v9

    :goto_10
    if-ge v1, v6, :cond_e

    aget-byte v9, v11, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/T1;->d(B)Z

    move-result v12

    if-eqz v12, :cond_e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v8, 0x1

    int-to-char v9, v9

    aput-char v9, v2, v8

    move v8, v12

    goto :goto_10

    :cond_f
    move/from16 v16, v5

    const/16 v5, -0x20

    if-ge v12, v5, :cond_11

    if-ge v9, v6, :cond_10

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v1, v1, 0x2

    aget-byte v9, v11, v9

    invoke-static {v12, v9, v2, v8}, Lcom/google/android/gms/internal/play_billing/T1;->c(BB[CI)V

    move v8, v5

    :goto_11
    move/from16 v5, v16

    goto :goto_f

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_11
    const/16 v5, -0x10

    if-ge v12, v5, :cond_13

    add-int/lit8 v5, v6, -0x1

    if-ge v9, v5, :cond_12

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v17, v1, 0x2

    aget-byte v9, v11, v9

    add-int/lit8 v1, v1, 0x3

    move/from16 v20, v1

    aget-byte v1, v11, v17

    invoke-static {v12, v9, v1, v2, v8}, Lcom/google/android/gms/internal/play_billing/T1;->b(BBB[CI)V

    move v8, v5

    move/from16 v5, v16

    move/from16 v1, v20

    goto :goto_f

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_13
    add-int/lit8 v5, v6, -0x2

    if-ge v9, v5, :cond_14

    add-int/lit8 v5, v1, 0x2

    aget-byte v21, v11, v9

    add-int/lit8 v9, v1, 0x3

    aget-byte v22, v11, v5

    add-int/lit8 v1, v1, 0x4

    aget-byte v23, v11, v9

    move/from16 v20, v12

    move-object/from16 v24, v2

    move/from16 v25, v8

    invoke-static/range {v20 .. v25}, Lcom/google/android/gms/internal/play_billing/T1;->a(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_11

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_15
    move/from16 v16, v5

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    move v1, v6

    :goto_12
    move v8, v5

    move/from16 v12, v16

    goto :goto_14

    :cond_16
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v8, 0x0

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v2, :cond_1a

    or-int v5, v12, v9

    if-nez v2, :cond_19

    iput-object v6, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    :goto_13
    move v12, v5

    goto :goto_14

    :cond_19
    new-instance v6, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v11, v1, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    add-int/2addr v1, v2

    goto :goto_13

    :goto_14
    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    invoke-virtual {v10, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_15
    move/from16 v5, p4

    move/from16 v6, p5

    move v2, v8

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    move/from16 v9, v29

    goto/16 :goto_b

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :pswitch_6
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-nez v2, :cond_1c

    or-int/2addr v12, v9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v5, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    cmp-long v2, v5, v23

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_16

    :cond_1b
    move v2, v8

    :goto_16
    invoke-static {v7, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/S1;->r(Ljava/lang/Object;JZ)V

    goto :goto_15

    :pswitch_7
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x5

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v5, 0x4

    or-int/2addr v12, v9

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-virtual {v10, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_15

    :pswitch_8
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_1c

    add-int/lit8 v16, v5, 0x8

    or-int/2addr v12, v9

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v5

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move/from16 v6, p5

    move v2, v8

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    move/from16 v8, v16

    :goto_17
    move/from16 v9, v29

    goto/16 :goto_8

    :pswitch_9
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-nez v2, :cond_1c

    or-int/2addr v12, v9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-virtual {v10, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_15

    :pswitch_a
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-nez v2, :cond_1c

    or-int/2addr v12, v9

    invoke-static {v11, v5, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v9

    iget-wide v5, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move/from16 v6, p5

    move v2, v8

    move v8, v9

    move-object v4, v10

    move-object v3, v13

    move v10, v14

    goto :goto_17

    :pswitch_b
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x5

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v5, 0x4

    or-int/2addr v12, v9

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v7, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/S1;->u(Ljava/lang/Object;JF)V

    goto/16 :goto_15

    :pswitch_c
    move-object v13, v3

    move v14, v10

    move/from16 p3, v15

    move/from16 v29, v19

    move/from16 v5, v26

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v10, v4

    move v15, v11

    move-wide/from16 v3, v27

    move-object/from16 v11, p2

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v5, 0x8

    or-int/2addr v12, v9

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v7, v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/S1;->t(Ljava/lang/Object;JD)V

    goto/16 :goto_15

    :cond_1c
    :goto_18
    move/from16 v18, p3

    move v3, v5

    move/from16 v17, v8

    move-object/from16 v22, v10

    move v10, v14

    move/from16 v9, v29

    move-object v14, v13

    move-object v13, v11

    move v11, v15

    move/from16 v15, p5

    goto/16 :goto_4f

    :cond_1d
    move/from16 v18, v13

    move/from16 v29, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object v13, v3

    move/from16 v30, v11

    move-object/from16 v11, p2

    move/from16 v31, v10

    move-object v10, v4

    move-wide v3, v14

    move/from16 v14, v31

    move/from16 v15, v30

    const/16 v8, 0x1b

    const/16 v22, 0xa

    if-ne v5, v8, :cond_21

    const/4 v8, 0x2

    if-ne v2, v8, :cond_20

    invoke-virtual {v10, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/C0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/C0;->O1()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1e

    :goto_19
    move/from16 v2, v22

    goto :goto_1a

    :cond_1e
    add-int v22, v2, v2

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_billing/C0;->H0(I)Lcom/google/android/gms/internal/play_billing/C0;

    move-result-object v1

    invoke-virtual {v10, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1f
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v8

    move/from16 v2, p4

    move/from16 v3, v26

    move v9, v15

    move-object v4, v10

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v3

    move/from16 v26, v12

    move/from16 v12, p4

    move-object v6, v13

    move-object v13, v1

    move v1, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/F;->e(Lcom/google/android/gms/internal/play_billing/r1;I[BIILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    move v10, v1

    move-object v3, v6

    move v11, v15

    move/from16 v13, v18

    move/from16 v12, v26

    move/from16 v9, v29

    move/from16 v6, p5

    move-object v15, v5

    move v5, v2

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_20
    move/from16 v3, v26

    move/from16 v26, v12

    move/from16 v1, p4

    move v8, v3

    move/from16 v12, v29

    move/from16 v30, v14

    move-object v14, v11

    move/from16 v11, v30

    goto/16 :goto_45

    :cond_21
    move-object/from16 p3, v10

    move v8, v14

    move/from16 v10, v26

    move-object v14, v11

    move/from16 v26, v12

    move-object v12, v13

    move/from16 v13, p4

    const/16 v11, 0x31

    if-gt v5, v11, :cond_68

    int-to-long v13, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v1, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/play_billing/C0;

    invoke-interface {v9}, Lcom/google/android/gms/internal/play_billing/C0;->O1()Z

    move-result v11

    if-nez v11, :cond_23

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_22

    :goto_1b
    move/from16 v11, v22

    goto :goto_1c

    :cond_22
    add-int v22, v11, v11

    goto :goto_1b

    :goto_1c
    invoke-interface {v9, v11}, Lcom/google/android/gms/internal/play_billing/C0;->H0(I)Lcom/google/android/gms/internal/play_billing/C0;

    move-result-object v9

    invoke-virtual {v1, v7, v3, v4, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_23
    move-object v11, v9

    packed-switch v5, :pswitch_data_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_27

    and-int/lit8 v1, v15, -0x8

    or-int/lit8 v9, v1, 0x4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v13

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v5, v9

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->c(Lcom/google/android/gms/internal/play_billing/r1;[BIIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, p4

    :goto_1d
    if-ge v1, v14, :cond_25

    move-object/from16 v6, p2

    invoke-static {v6, v1, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v3

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v2, :cond_24

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v9

    move-object/from16 v20, v13

    move-object v13, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->c(Lcom/google/android/gms/internal/play_billing/r1;[BIIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v20

    goto :goto_1d

    :cond_24
    move-object v13, v6

    goto :goto_1e

    :cond_25
    move-object/from16 v13, p2

    :cond_26
    :goto_1e
    move v9, v8

    move v8, v10

    move v7, v14

    move-object/from16 v10, p3

    move-object v14, v13

    move-object v13, v12

    move/from16 v12, v29

    goto/16 :goto_42

    :cond_27
    move-object/from16 v14, p2

    move/from16 v7, p4

    move v9, v8

    move v8, v10

    move-object v13, v12

    move/from16 v12, v29

    move-object/from16 v10, p3

    goto/16 :goto_41

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 v14, p4

    const/4 v1, 0x2

    if-ne v2, v1, :cond_2a

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v13, v10, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_28

    invoke-static {v13, v1, v12}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v3, v12, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/X;->b(J)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    goto :goto_1f

    :cond_28
    if-ne v1, v2, :cond_29

    goto :goto_1e

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_2a
    if-nez v2, :cond_2b

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v13, v10, v12}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/X;->b(J)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    :goto_20
    if-ge v1, v14, :cond_26

    invoke-static {v13, v1, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_26

    invoke-static {v13, v2, v12}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/X;->b(J)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    goto :goto_20

    :cond_2b
    :goto_21
    move v9, v8

    move v8, v10

    move v7, v14

    move-object/from16 v10, p3

    move-object v14, v13

    move-object v13, v12

    move/from16 v12, v29

    goto/16 :goto_41

    :pswitch_e
    move-object/from16 v13, p2

    move/from16 v14, p4

    const/4 v1, 0x2

    if-ne v2, v1, :cond_2e

    check-cast v11, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-static {v13, v10, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v2, v1

    :goto_22
    if-ge v1, v2, :cond_2c

    invoke-static {v13, v1, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/X;->a(I)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    goto :goto_22

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto/16 :goto_1e

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_2e
    if-nez v2, :cond_2b

    check-cast v11, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-static {v13, v10, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/X;->a(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    :goto_23
    if-ge v1, v14, :cond_26

    invoke-static {v13, v1, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_26

    invoke-static {v13, v2, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/X;->a(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    goto :goto_23

    :pswitch_f
    move-object/from16 v13, p2

    move/from16 v14, p4

    const/4 v1, 0x2

    if-ne v2, v1, :cond_2f

    invoke-static {v13, v10, v11, v12}, Lcom/google/android/gms/internal/play_billing/F;->f([BILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    goto :goto_24

    :cond_2f
    if-nez v2, :cond_37

    move v1, v15

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move-object v5, v11

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->j(I[BIILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    :goto_24
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/i1;->I(I)Lcom/google/android/gms/internal/play_billing/z0;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/i1;->k:Lcom/google/android/gms/internal/play_billing/I1;

    sget v4, Lcom/google/android/gms/internal/play_billing/t1;->d:I

    if-eqz v2, :cond_35

    if-eqz v11, :cond_33

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v9, v16

    move/from16 v5, v17

    move v6, v5

    :goto_25
    if-ge v5, v4, :cond_32

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v1

    move-object/from16 v1, v20

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/play_billing/z0;->a(I)Z

    move-result v20

    if-eqz v20, :cond_31

    if-eq v5, v6, :cond_30

    invoke-interface {v11, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v29

    goto :goto_26

    :cond_31
    move/from16 v1, v29

    invoke-static {v7, v1, v0, v9, v3}, Lcom/google/android/gms/internal/play_billing/t1;->v(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/I1;)Ljava/lang/Object;

    move-result-object v9

    :goto_26
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v29, v1

    move/from16 v1, v21

    goto :goto_25

    :cond_32
    move/from16 v21, v1

    move/from16 v1, v29

    if-eq v6, v4, :cond_36

    invoke-interface {v11, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_28

    :cond_33
    move/from16 v21, v1

    move/from16 v1, v29

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v4, v16

    :cond_34
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/play_billing/z0;->a(I)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-static {v7, v1, v5, v4, v3}, Lcom/google/android/gms/internal/play_billing/t1;->v(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/I1;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_27

    :cond_35
    move/from16 v21, v1

    move/from16 v1, v29

    :cond_36
    :goto_28
    move-object/from16 v0, p0

    move v9, v8

    move v8, v10

    move v7, v14

    move-object/from16 v10, p3

    move-object v14, v13

    move-object v13, v12

    move v12, v1

    move/from16 v1, v21

    goto/16 :goto_42

    :cond_37
    move-object/from16 v0, p0

    goto/16 :goto_21

    :pswitch_10
    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v1, v29

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3f

    invoke-static {v13, v10, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v0

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v2, :cond_3e

    array-length v3, v13

    sub-int/2addr v3, v0

    if-gt v2, v3, :cond_3d

    if-nez v2, :cond_38

    sget-object v2, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_38
    invoke-static {v13, v0, v2}, Lcom/google/android/gms/internal/play_billing/T;->t([BII)Lcom/google/android/gms/internal/play_billing/T;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/2addr v0, v2

    :goto_2a
    if-ge v0, v14, :cond_3c

    invoke-static {v13, v0, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_3c

    invoke-static {v13, v2, v12}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v0

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v2, :cond_3b

    array-length v3, v13

    sub-int/2addr v3, v0

    if-gt v2, v3, :cond_3a

    if-nez v2, :cond_39

    sget-object v2, Lcom/google/android/gms/internal/play_billing/T;->c:Lcom/google/android/gms/internal/play_billing/T;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_39
    invoke-static {v13, v0, v2}, Lcom/google/android/gms/internal/play_billing/T;->t([BII)Lcom/google/android/gms/internal/play_billing/T;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v0

    throw v0

    :cond_3c
    move v9, v8

    move v8, v10

    move v7, v14

    move-object/from16 v10, p3

    move-object v14, v13

    move-object v13, v12

    move v12, v1

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_42

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v0

    throw v0

    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v0

    throw v0

    :cond_3f
    move-object/from16 v0, p0

    move v9, v8

    move v8, v10

    move v7, v14

    move-object/from16 v10, p3

    move-object v14, v13

    :goto_2b
    move-object v13, v12

    move v12, v1

    goto/16 :goto_41

    :pswitch_11
    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v1, v29

    const/4 v0, 0x2

    if-ne v2, v0, :cond_40

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    move v5, v8

    move-object v8, v2

    move v9, v15

    move v4, v10

    move-object/from16 v10, p2

    move-object/from16 v3, p3

    move-object v2, v11

    move v11, v4

    move-object v6, v12

    move/from16 v12, p4

    move-object v13, v2

    move-object/from16 v2, p2

    move v7, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/F;->e(Lcom/google/android/gms/internal/play_billing/r1;I[BIILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    move v12, v1

    move-object v14, v2

    move-object v10, v3

    move v9, v5

    move-object v13, v6

    :goto_2c
    move v1, v8

    move v8, v4

    goto/16 :goto_42

    :cond_40
    move-object/from16 v0, p0

    move v7, v14

    move v9, v8

    move v8, v10

    move-object v14, v13

    move-object/from16 v10, p3

    goto :goto_2b

    :pswitch_12
    move-object/from16 v3, p3

    move/from16 v7, p4

    move v5, v8

    move v4, v10

    move-wide v9, v13

    move/from16 v1, v29

    const/4 v8, 0x2

    move-object/from16 v14, p2

    move-object v13, v12

    if-ne v2, v8, :cond_4d

    const-wide/32 v20, 0x20000000

    and-long v8, v9, v20

    cmp-long v2, v8, v23

    if-nez v2, :cond_46

    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v8, :cond_45

    if-nez v8, :cond_41

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_41
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v9, v14, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2d
    add-int/2addr v2, v8

    :goto_2e
    if-ge v2, v7, :cond_44

    invoke-static {v14, v2, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v9, :cond_44

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v8, :cond_43

    if-nez v8, :cond_42

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_42
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v9, v14, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_44
    :goto_2f
    move v12, v1

    move v1, v2

    move-object v10, v3

    move v8, v4

    move v9, v5

    goto/16 :goto_42

    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_46
    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v8, :cond_4c

    if-nez v8, :cond_47

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_47
    add-int v9, v2, v8

    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/play_billing/W1;->e([BII)Z

    move-result v10

    if-eqz v10, :cond_4b

    new-instance v10, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v14, v2, v8, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    move v2, v9

    :goto_31
    if-ge v2, v7, :cond_44

    invoke-static {v14, v2, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v9, :cond_44

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ltz v8, :cond_4a

    if-nez v8, :cond_48

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_48
    add-int v9, v2, v8

    invoke-static {v14, v2, v9}, Lcom/google/android/gms/internal/play_billing/W1;->e([BII)Z

    move-result v10

    if-eqz v10, :cond_49

    new-instance v10, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v14, v2, v8, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzd()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_4d
    move v12, v1

    move-object v10, v3

    move v8, v4

    move v9, v5

    goto/16 :goto_41

    :pswitch_13
    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move v5, v8

    move v4, v10

    move-object v13, v12

    move/from16 v1, v29

    const/4 v6, 0x2

    if-ne v2, v6, :cond_51

    check-cast v11, Lcom/google/android/gms/internal/play_billing/G;

    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v6, v2

    :goto_32
    if-ge v2, v6, :cond_4f

    invoke-static {v14, v2, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    cmp-long v8, v8, v23

    if-eqz v8, :cond_4e

    const/4 v8, 0x1

    goto :goto_33

    :cond_4e
    move/from16 v8, v17

    :goto_33
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/play_billing/G;->b(Z)V

    goto :goto_32

    :cond_4f
    if-ne v2, v6, :cond_50

    goto/16 :goto_2f

    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_51
    if-nez v2, :cond_4d

    check-cast v11, Lcom/google/android/gms/internal/play_billing/G;

    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    cmp-long v6, v8, v23

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    goto :goto_34

    :cond_52
    move/from16 v6, v17

    :goto_34
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/play_billing/G;->b(Z)V

    :goto_35
    if-ge v2, v7, :cond_44

    invoke-static {v14, v2, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v6

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v8, :cond_44

    invoke-static {v14, v6, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    cmp-long v6, v8, v23

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    goto :goto_36

    :cond_53
    move/from16 v6, v17

    :goto_36
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/play_billing/G;->b(Z)V

    goto :goto_35

    :pswitch_14
    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move v5, v8

    move v4, v10

    move-object v13, v12

    move/from16 v1, v29

    const/4 v6, 0x2

    if-ne v2, v6, :cond_56

    check-cast v11, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v6, v2

    :goto_37
    if-ge v2, v6, :cond_54

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_37

    :cond_54
    if-ne v2, v6, :cond_55

    goto/16 :goto_2f

    :cond_55
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_56
    const/4 v6, 0x5

    if-ne v2, v6, :cond_4d

    add-int/lit8 v8, v4, 0x4

    check-cast v11, Lcom/google/android/gms/internal/play_billing/w0;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    :goto_38
    if-ge v8, v7, :cond_57

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v6, :cond_57

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/play_billing/w0;->l(I)V

    add-int/lit8 v8, v2, 0x4

    goto :goto_38

    :cond_57
    move v12, v1

    move-object v10, v3

    move v9, v5

    goto/16 :goto_2c

    :pswitch_15
    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move v5, v8

    move v4, v10

    move-object v13, v12

    move/from16 v1, v29

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5a

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v14, v4, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v6, v2

    :goto_39
    if-ge v2, v6, :cond_58

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_39

    :cond_58
    if-ne v2, v6, :cond_59

    goto/16 :goto_2f

    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_5a
    const/4 v6, 0x1

    if-ne v2, v6, :cond_4d

    add-int/lit8 v8, v4, 0x8

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    :goto_3a
    if-ge v8, v7, :cond_57

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v6, :cond_57

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    add-int/lit8 v8, v2, 0x8

    goto :goto_3a

    :pswitch_16
    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move v5, v8

    move v4, v10

    move-object v13, v12

    move/from16 v1, v29

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5b

    invoke-static {v14, v4, v11, v13}, Lcom/google/android/gms/internal/play_billing/F;->f([BILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    goto/16 :goto_2f

    :cond_5b
    if-nez v2, :cond_4d

    move v12, v1

    move v1, v15

    move-object/from16 v2, p2

    move-object v10, v3

    move v3, v4

    move v8, v4

    move/from16 v4, p4

    move v9, v5

    move-object v5, v11

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->j(I[BIILcom/google/android/gms/internal/play_billing/C0;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    goto/16 :goto_42

    :pswitch_17
    move-object/from16 v14, p2

    move/from16 v7, p4

    move v9, v8

    move v8, v10

    move-object v13, v12

    move/from16 v12, v29

    const/4 v1, 0x2

    move-object/from16 v10, p3

    if-ne v2, v1, :cond_5e

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v2, v1

    :goto_3b
    if-ge v1, v2, :cond_5c

    invoke-static {v14, v1, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    goto :goto_3b

    :cond_5c
    if-ne v1, v2, :cond_5d

    goto/16 :goto_42

    :cond_5d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_5e
    if-nez v2, :cond_65

    check-cast v11, Lcom/google/android/gms/internal/play_billing/T0;

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v2, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    :goto_3c
    if-ge v1, v7, :cond_66

    invoke-static {v14, v1, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_66

    invoke-static {v14, v2, v13}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v2, v13, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/play_billing/T0;->k(J)V

    goto :goto_3c

    :pswitch_18
    move-object/from16 v14, p2

    move/from16 v7, p4

    move v9, v8

    move v8, v10

    move-object v13, v12

    move/from16 v12, v29

    const/4 v1, 0x2

    move-object/from16 v10, p3

    if-ne v2, v1, :cond_61

    check-cast v11, Lcom/google/android/gms/internal/play_billing/n0;

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v2, v1

    :goto_3d
    if-ge v1, v2, :cond_5f

    invoke-static {v14, v1}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/play_billing/n0;->k(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3d

    :cond_5f
    if-ne v1, v2, :cond_60

    goto/16 :goto_42

    :cond_60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_61
    const/4 v1, 0x5

    if-ne v2, v1, :cond_65

    add-int/lit8 v1, v8, 0x4

    check-cast v11, Lcom/google/android/gms/internal/play_billing/n0;

    invoke-static {v14, v8}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/play_billing/n0;->k(F)V

    :goto_3e
    if-ge v1, v7, :cond_66

    invoke-static {v14, v1, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_66

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/play_billing/n0;->k(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_3e

    :pswitch_19
    move-object/from16 v14, p2

    move/from16 v7, p4

    move v9, v8

    move v8, v10

    move-object v13, v12

    move/from16 v12, v29

    const/4 v1, 0x2

    move-object/from16 v10, p3

    if-ne v2, v1, :cond_64

    check-cast v11, Lcom/google/android/gms/internal/play_billing/d0;

    invoke-static {v14, v8, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    add-int/2addr v2, v1

    :goto_3f
    if-ge v1, v2, :cond_62

    invoke-static {v14, v1}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/d0;->k(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3f

    :cond_62
    if-ne v1, v2, :cond_63

    goto :goto_42

    :cond_63
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzg()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_64
    const/4 v1, 0x1

    if-ne v2, v1, :cond_65

    add-int/lit8 v1, v8, 0x8

    check-cast v11, Lcom/google/android/gms/internal/play_billing/d0;

    invoke-static {v14, v8}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/play_billing/d0;->k(D)V

    :goto_40
    if-ge v1, v7, :cond_66

    invoke-static {v14, v1, v13}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-ne v15, v3, :cond_66

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/d0;->k(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_40

    :cond_65
    :goto_41
    move v1, v8

    :cond_66
    :goto_42
    if-eq v1, v8, :cond_67

    move/from16 v6, p5

    move v8, v1

    move v5, v7

    move-object v4, v10

    move-object v3, v13

    move v11, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move-object/from16 v7, p1

    move v10, v9

    move v9, v12

    move-object v15, v14

    :goto_43
    move/from16 v12, v26

    goto/16 :goto_0

    :cond_67
    move-object/from16 v7, p1

    move v3, v1

    move-object/from16 v22, v10

    move v11, v15

    move/from16 v15, p5

    move v10, v9

    move v9, v12

    move/from16 v12, v26

    :goto_44
    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    goto/16 :goto_4f

    :cond_68
    move v11, v8

    move v8, v10

    move-object v13, v12

    move/from16 v12, v29

    move-object/from16 v10, p3

    const/16 v7, 0x32

    if-ne v5, v7, :cond_6b

    const/4 v7, 0x2

    if-ne v2, v7, :cond_6a

    sget-object v1, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/i1;->K(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, p1

    invoke-virtual {v1, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/Y0;->l()Z

    move-result v6

    if-nez v6, :cond_69

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/Y0;->e()Lcom/google/android/gms/internal/play_billing/Y0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/Y0;->i()Lcom/google/android/gms/internal/play_billing/Y0;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/play_billing/Z0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_69
    check-cast v2, Lcom/google/android/gms/internal/play_billing/X0;

    throw v16

    :cond_6a
    move-object/from16 v7, p1

    move/from16 v1, p4

    :goto_45
    move v3, v8

    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move v11, v15

    move/from16 v12, v26

    move/from16 v15, p5

    goto :goto_44

    :cond_6b
    move-object/from16 v7, p1

    add-int/lit8 v22, v11, 0x2

    move/from16 v27, v8

    sget-object v8, Lcom/google/android/gms/internal/play_billing/i1;->p:Lsun/misc/Unsafe;

    aget v9, v9, v22

    move-object/from16 p3, v6

    const v6, 0xfffff

    and-int/2addr v9, v6

    int-to-long v6, v9

    packed-switch v5, :pswitch_data_2

    :cond_6c
    move-object/from16 v7, p1

    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    goto/16 :goto_4d

    :pswitch_1a
    const/4 v1, 0x3

    if-ne v2, v1, :cond_6c

    and-int/lit8 v1, v15, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v12, v11}, Lcom/google/android/gms/internal/play_billing/i1;->M(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v9

    move/from16 v6, v27

    move-object v8, v2

    move-object v5, v10

    move-object/from16 v10, p2

    move v3, v11

    move v11, v6

    move v4, v12

    move/from16 v12, p4

    move-object/from16 p3, v5

    move-object v5, v13

    move v13, v1

    move-object v1, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/F;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;[BIIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v8

    invoke-virtual {v0, v7, v4, v3, v2}, Lcom/google/android/gms/internal/play_billing/i1;->o(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v22, p3

    move-object v13, v1

    move v10, v3

    move v9, v4

    :goto_46
    move-object v14, v5

    move/from16 v20, v15

    move v15, v6

    goto/16 :goto_4e

    :pswitch_1b
    move-object/from16 p3, v10

    move v10, v11

    move v9, v12

    move-object v5, v13

    move-object v1, v14

    move-wide v11, v6

    move/from16 v6, v27

    move-object/from16 v7, p1

    if-nez v2, :cond_6d

    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget-wide v13, v5, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/play_billing/X;->b(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v7, v3, v4, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_47
    move-object/from16 v22, p3

    move-object v13, v1

    move v8, v2

    goto :goto_46

    :cond_6d
    move-object/from16 v22, p3

    move-object v13, v1

    move-object v14, v5

    move/from16 v20, v15

    move v15, v6

    goto/16 :goto_4d

    :pswitch_1c
    move-object/from16 p3, v10

    move v10, v11

    move v9, v12

    move-object v5, v13

    move-object v1, v14

    move-wide v11, v6

    move/from16 v6, v27

    move-object/from16 v7, p1

    if-nez v2, :cond_6d

    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v13, v5, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/X;->a(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v7, v3, v4, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :pswitch_1d
    move-object/from16 p3, v10

    move v10, v11

    move v9, v12

    move-object v5, v13

    move-object v1, v14

    move-wide v11, v6

    move/from16 v6, v27

    move-object/from16 v7, p1

    if-nez v2, :cond_6d

    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v13, v5, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/play_billing/i1;->I(I)Lcom/google/android/gms/internal/play_billing/z0;

    move-result-object v14

    if-eqz v14, :cond_6f

    invoke-interface {v14, v13}, Lcom/google/android/gms/internal/play_billing/z0;->a(I)Z

    move-result v14

    if-eqz v14, :cond_6e

    goto :goto_48

    :cond_6e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i1;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v3

    int-to-long v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/google/android/gms/internal/play_billing/J1;->j(ILjava/lang/Object;)V

    goto :goto_47

    :cond_6f
    :goto_48
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v7, v3, v4, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :pswitch_1e
    move-object/from16 p3, v10

    move v10, v11

    move v9, v12

    move-object v5, v13

    move-object v1, v14

    const/4 v13, 0x2

    move-wide v11, v6

    move/from16 v6, v27

    move-object/from16 v7, p1

    if-ne v2, v13, :cond_6d

    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/play_billing/F;->a([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget-object v13, v5, Lcom/google/android/gms/internal/play_billing/E;->c:Ljava/lang/Object;

    invoke-virtual {v8, v7, v3, v4, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_47

    :pswitch_1f
    move-object/from16 v7, p1

    move-object/from16 p3, v10

    move v10, v11

    move v9, v12

    move-object v5, v13

    move-object v1, v14

    move/from16 v6, v27

    const/4 v13, 0x2

    if-ne v2, v13, :cond_70

    invoke-virtual {v0, v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/i1;->M(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/play_billing/i1;->J(I)Lcom/google/android/gms/internal/play_billing/r1;

    move-result-object v2

    move-object v13, v1

    move-object v1, v8

    move-object/from16 v3, p2

    move v4, v6

    move-object/from16 v11, p3

    move-object v14, v5

    move/from16 v5, p4

    move/from16 v20, v15

    const v12, 0xfffff

    move v15, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;[BIILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    invoke-virtual {v0, v7, v9, v10, v8}, Lcom/google/android/gms/internal/play_billing/i1;->o(Ljava/lang/Object;IILjava/lang/Object;)V

    move v8, v1

    move-object/from16 v22, v11

    goto/16 :goto_4e

    :cond_70
    move-object v13, v1

    move-object v14, v5

    move/from16 v20, v15

    move v15, v6

    move-object/from16 v22, p3

    goto/16 :goto_4d

    :pswitch_20
    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    const/4 v5, 0x2

    move-wide/from16 v30, v6

    move-object/from16 v7, p1

    move-object v6, v10

    move v10, v11

    move-wide/from16 v11, v30

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    if-ne v2, v5, :cond_74

    invoke-static {v13, v15, v14}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v2

    iget v5, v14, Lcom/google/android/gms/internal/play_billing/E;->a:I

    if-nez v5, :cond_71

    move-object/from16 v22, v6

    move-object/from16 v6, p3

    invoke-virtual {v8, v7, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4a

    :cond_71
    move-object/from16 v22, v6

    and-int v1, v1, v21

    add-int v6, v2, v5

    if-eqz v1, :cond_73

    invoke-static {v13, v2, v6}, Lcom/google/android/gms/internal/play_billing/W1;->e([BII)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_49

    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_73
    :goto_49
    new-instance v1, Ljava/lang/String;

    move/from16 p3, v6

    sget-object v6, Lcom/google/android/gms/internal/play_billing/E0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v13, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v8, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, p3

    :goto_4a
    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v8, v2

    goto/16 :goto_4e

    :cond_74
    move-object/from16 v22, v6

    goto/16 :goto_4d

    :pswitch_21
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-nez v2, :cond_76

    invoke-static {v13, v15, v14}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v5, v14, Lcom/google/android/gms/internal/play_billing/E;->b:J

    cmp-long v2, v5, v23

    if-eqz v2, :cond_75

    const/4 v2, 0x1

    goto :goto_4b

    :cond_75
    move/from16 v2, v17

    :goto_4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4c
    move v8, v1

    goto/16 :goto_4e

    :pswitch_22
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    const/4 v1, 0x5

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-ne v2, v1, :cond_76

    add-int/lit8 v1, v15, 0x4

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4c

    :pswitch_23
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    const/4 v1, 0x1

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-ne v2, v1, :cond_76

    add-int/lit8 v1, v15, 0x8

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4c

    :pswitch_24
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-nez v2, :cond_76

    invoke-static {v13, v15, v14}, Lcom/google/android/gms/internal/play_billing/F;->h([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/play_billing/E;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4c

    :pswitch_25
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-nez v2, :cond_76

    invoke-static {v13, v15, v14}, Lcom/google/android/gms/internal/play_billing/F;->k([BILcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    iget-wide v5, v14, Lcom/google/android/gms/internal/play_billing/E;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :pswitch_26
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    const/4 v1, 0x5

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-ne v2, v1, :cond_76

    add-int/lit8 v1, v15, 0x4

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/play_billing/F;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :pswitch_27
    move-object/from16 v22, v10

    move v10, v11

    move v9, v12

    move/from16 v20, v15

    move/from16 v15, v27

    const/4 v1, 0x1

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    if-ne v2, v1, :cond_76

    add-int/lit8 v1, v15, 0x8

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/play_billing/F;->n([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v7, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :cond_76
    :goto_4d
    move v8, v15

    :goto_4e
    if-eq v8, v15, :cond_77

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v15, v13

    move-object v3, v14

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v11, v20

    move-object/from16 v4, v22

    goto/16 :goto_43

    :cond_77
    move/from16 v15, p5

    move v3, v8

    move/from16 v11, v20

    move/from16 v12, v26

    :goto_4f
    if-ne v11, v15, :cond_78

    if-eqz v15, :cond_78

    move v9, v3

    move/from16 v13, v18

    move-object/from16 v8, v22

    const v1, 0xfffff

    goto :goto_51

    :cond_78
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/i1;->f:Z

    if-eqz v1, :cond_7a

    iget-object v1, v14, Lcom/google/android/gms/internal/play_billing/E;->d:Lcom/google/android/gms/internal/play_billing/g0;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/g0;->d:Lcom/google/android/gms/internal/play_billing/g0;

    if-eq v1, v2, :cond_7a

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/i1;->e:Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/play_billing/g0;->b(Lcom/google/android/gms/internal/play_billing/f1;I)Lcom/google/android/gms/internal/play_billing/t0;

    move-result-object v1

    if-nez v1, :cond_79

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i1;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v5

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    const v8, 0xfffff

    move-object/from16 v8, v22

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->g(I[BIILcom/google/android/gms/internal/play_billing/J1;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    goto :goto_50

    :cond_79
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/r0;

    throw v16

    :cond_7a
    move-object/from16 v8, v22

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i1;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v5

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/F;->g(I[BIILcom/google/android/gms/internal/play_billing/J1;Lcom/google/android/gms/internal/play_billing/E;)I

    move-result v1

    :goto_50
    move/from16 v5, p4

    move-object v4, v8

    move-object v3, v14

    move v6, v15

    move/from16 v2, v17

    move v8, v1

    move-object v15, v13

    move/from16 v13, v18

    goto/16 :goto_0

    :cond_7b
    move v15, v6

    move v9, v8

    move/from16 v26, v12

    move/from16 v18, v13

    const v1, 0xfffff

    move-object v8, v4

    :goto_51
    if-eq v13, v1, :cond_7c

    int-to-long v2, v13

    invoke-virtual {v8, v7, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7c
    iget v2, v0, Lcom/google/android/gms/internal/play_billing/i1;->h:I

    :goto_52
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/i1;->i:I

    if-ge v2, v3, :cond_7f

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/i1;->g:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/i1;->a:[I

    aget v3, v3, v2

    aget v4, v4, v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/i1;->G(I)I

    move-result v4

    and-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/play_billing/S1;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7d

    goto :goto_53

    :cond_7d
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/i1;->I(I)Lcom/google/android/gms/internal/play_billing/z0;

    move-result-object v5

    if-nez v5, :cond_7e

    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_7e
    check-cast v4, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/i1;->K(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/X0;

    throw v16

    :cond_7f
    if-nez v15, :cond_81

    move/from16 v1, p4

    if-ne v9, v1, :cond_80

    goto :goto_54

    :cond_80
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zze()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    :cond_81
    move/from16 v1, p4

    if-gt v9, v1, :cond_82

    if-ne v11, v15, :cond_82

    :goto_54
    return v9

    :cond_82
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdc;->zze()Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
