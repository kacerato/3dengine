.class public final LJa/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "itemType"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lya/m;->c(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Lya/H;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "preferredType"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-static {p0}, Lya/m;->k(Ljava/lang/Object;)Lya/H;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-ne p2, v0, :cond_2

    :cond_1
    invoke-static {p1}, Lya/m;->k(Ljava/lang/Object;)Lya/H;

    move-result-object p2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    sget-object v2, Lya/H;->DYNAMIC:Lya/H;

    if-ne p2, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v2, LJa/i$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v0, 0x5

    if-eq v2, v0, :cond_5

    invoke-static {p0, p2}, Lya/m;->c(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2}, Lya/m;->c(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p0}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    invoke-static {p0}, Lya/m;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p1}, Lya/m;->O(Ljava/lang/Object;)Z

    move-result p1

    if-ne p0, p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    :cond_8
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p1}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :cond_a
    invoke-static {p0}, Lya/m;->M(Ljava/lang/Object;)Lya/b;

    move-result-object p0

    invoke-static {p1}, Lya/m;->M(Ljava/lang/Object;)Lya/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lya/b;->a(Lya/b;)I

    move-result p0

    if-nez p0, :cond_b

    move v0, v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {p0}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    return v0
.end method

.method public static c(Lya/l;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/l;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lya/l;->f()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    invoke-static {p0}, Lya/l;->b(Lya/H;)Lya/l;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILya/D;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "resolver"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lya/D;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    instance-of v0, p1, Lya/k;

    if-nez v0, :cond_3

    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0

    :cond_3
    check-cast p1, Lya/k;

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-interface {p1, p0, p2}, Lya/k;->b(ILya/D;)Lya/H;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    :goto_1
    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0
.end method

.method public static e(Lya/H;Ljava/lang/Object;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentType",
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lya/m;->k(Ljava/lang/Object;)Lya/H;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
    return-object p0
.end method

.method public static f(Lya/l;Ljava/lang/Object;)Lya/H;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listValue",
            "fallbackItem"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lya/l;->d()Lya/H;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
    invoke-static {p0, p1}, LJa/i;->e(Lya/H;Ljava/lang/Object;)Lya/H;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
