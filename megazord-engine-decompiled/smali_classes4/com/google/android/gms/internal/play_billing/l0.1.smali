.class public final Lcom/google/android/gms/internal/play_billing/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/play_billing/l0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/F1;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/l0;->d:Lcom/google/android/gms/internal/play_billing/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/u1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/u1;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/u1;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/l0;->g()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/l0;->g()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/play_billing/X1;ILjava/lang/Object;)I
    .locals 0

    shl-int/lit8 p0, p1, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    sget-object p0, Lcom/google/android/gms/internal/play_billing/X1;->zzj:Lcom/google/android/gms/internal/play_billing/X1;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/f1;

    sget-object p0, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    instance-of p0, p2, Lcom/google/android/gms/internal/play_billing/A;

    if-eqz p0, :cond_0

    throw p1

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/play_billing/Y1;->zza:Lcom/google/android/gms/internal/play_billing/Y1;

    throw p1
.end method

.method public static b(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)I
    .locals 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->P1()Lcom/google/android/gms/internal/play_billing/X1;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->R1()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    shl-int/lit8 p0, v1, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/internal/play_billing/X1;->zza:Lcom/google/android/gms/internal/play_billing/X1;

    sget-object p0, Lcom/google/android/gms/internal/play_billing/Y1;->zza:Lcom/google/android/gms/internal/play_billing/Y1;

    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/l0;->a(Lcom/google/android/gms/internal/play_billing/X1;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/l0;->a(Lcom/google/android/gms/internal/play_billing/X1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static d()Lcom/google/android/gms/internal/play_billing/l0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/l0;->d:Lcom/google/android/gms/internal/play_billing/l0;

    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/k1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/k1;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k1;->P1()Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static m(Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->Q1()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/Y1;->zzi:Lcom/google/android/gms/internal/play_billing/Y1;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/l0;->n(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/l0;->n(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static n(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/g1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/g1;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/g1;->W1()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/play_billing/J0;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->Q1()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/Y1;->zzi:Lcom/google/android/gms/internal/play_billing/Y1;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->R1()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/play_billing/J0;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/J0;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/K0;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result p0

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/f1;->R1()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/a0;->w(I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->b(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final p(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->P1()Lcom/google/android/gms/internal/play_billing/X1;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/X1;->zza:Lcom/google/android/gms/internal/play_billing/X1;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/Y1;->zza:Lcom/google/android/gms/internal/play_billing/Y1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/X1;->a()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/f1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/J0;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/x0;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/T;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/k0;->P1()Lcom/google/android/gms/internal/play_billing/X1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/X1;->a()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final c()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/l0;->o(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/l0;->o(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/play_billing/l0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/l0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/l0;->i(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->j()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/l0;->i(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->c:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/l0;->c:Z

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/k0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/F1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/J0;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/l0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/l0;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/F1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/I0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/I0;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/play_billing/v0;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/v0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/v0;->n()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->b:Z

    :cond_2
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/play_billing/l0;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/l0;->l(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/F1;->j()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/l0;->l(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/F1;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/l0;->p(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l0;->p(Lcom/google/android/gms/internal/play_billing/k0;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/J0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/F1;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/F1;->i()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/F1;->n(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/l0;->m(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->j()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/l0;->m(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final l(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/k0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/J0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->S1()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/l0;->e(Lcom/google/android/gms/internal/play_billing/k0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/l0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/F1;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields can not be repeated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/k0;->Q1()Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/Y1;->zzi:Lcom/google/android/gms/internal/play_billing/Y1;

    if-ne v2, v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/l0;->e(Lcom/google/android/gms/internal/play_billing/k0;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/F1;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/l0;->c:Z

    :cond_4
    return-void

    :cond_5
    if-nez v1, :cond_7

    instance-of v1, v2, Lcom/google/android/gms/internal/play_billing/k1;

    if-eqz v1, :cond_6

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k1;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/k1;

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/k0;->B(Lcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/k1;)Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object p1

    goto :goto_1

    :cond_6
    check-cast v2, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/f1;->Y1()Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/k0;->k0(Lcom/google/android/gms/internal/play_billing/e1;Lcom/google/android/gms/internal/play_billing/f1;)Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/e1;->R1()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/F1;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    const/4 p1, 0x0

    throw p1

    :cond_8
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/l0;->a:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/l0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/F1;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields must be message-valued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
