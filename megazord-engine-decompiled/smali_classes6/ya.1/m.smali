.class public Lya/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/m$c;,
        Lya/m$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "forward"

.field public static final b:Ljava/lang/String; = "back"

.field public static final c:Ljava/lang/String; = "left"

.field public static final d:Ljava/lang/String; = "right"

.field public static final e:Ljava/lang/String; = "up"

.field public static final f:Ljava/lang/String; = "down"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "owner",
            "out"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    invoke-static/range {p0 .. p0}, Lya/m;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    const/4 v3, 0x5

    const-string v4, "forward"

    const-string v5, "up"

    const/4 v6, 0x0

    const-string v7, "back"

    const-string v8, "down"

    const-string v9, "left"

    const-string v10, "right"

    const/4 v11, -0x1

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v15

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v14

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v13

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v12

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v11

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v14, :cond_5

    if-eq v3, v15, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    :sswitch_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v15

    goto :goto_4

    :sswitch_7
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v14

    goto :goto_4

    :sswitch_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v13

    goto :goto_4

    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v6

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v12

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v3, v11

    :goto_4
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v3, :cond_d

    if-eq v3, v14, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v3, v15, :cond_b

    if-eq v3, v12, :cond_a

    if-eq v3, v13, :cond_9

    invoke-virtual {v0, v2, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :cond_9
    invoke-virtual {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :cond_a
    invoke-virtual {v0, v2, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :cond_b
    invoke-virtual {v0, v4, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :cond_c
    invoke-virtual {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :cond_d
    invoke-virtual {v0, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x285c6d3b -> :sswitch_5
        0xe9b -> :sswitch_4
        0x2e04e7 -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x285c6d3b -> :sswitch_b
        0xe9b -> :sswitch_a
        0x2e04e7 -> :sswitch_9
        0x2f24a2 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
    .end sparse-switch
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputDefault",
            "owner"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lya/H;

    sget-object v2, Lya/H;->GAME_OBJECT:Lya/H;

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    invoke-static {v1, p1}, Lya/m;->D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object v1

    :cond_3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Owner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_5
    return-object p1
.end method

.method public static C(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "providerValue",
            "owner"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Owner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lya/m;->D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referenceJson",
            "owner"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static E(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Owner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lva/g;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "@@ASSET@@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    return-object p0

    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "index",
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lgd/b;->I(F)F

    move-result p2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Z(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->a0(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b0(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->c0(F)V

    :goto_0
    return-void
.end method

.method public static H(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "prefix"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string p1, ","

    const-string v0, ";"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Object;)LJAVARuntime/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/Animation;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/Animation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static J(Ljava/lang/Object;)LJAVARuntime/AnimationFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/AnimationFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/AnimationFile;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/AnimationFile;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/AnimationFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static K(Ljava/lang/Object;)LJAVARuntime/AnimationMask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/AnimationMask;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/AnimationMask;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static L(Ljava/lang/Object;)LJAVARuntime/AnimationMaskFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/AnimationMaskFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/AnimationMaskFile;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/AnimationMaskFile;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/AnimationMaskFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static M(Ljava/lang/Object;)Lya/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lya/b;

    if-eqz v0, :cond_0

    check-cast p0, Lya/b;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lya/b;->i(D)Lya/b;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/b;->b(Ljava/lang/String;)Lya/b;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lya/b;->j(J)Lya/b;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Lya/b;->c:Lya/b;

    :goto_0
    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lya/b;->j(J)Lya/b;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lya/b;->c:Lya/b;

    return-object p0

    :cond_8
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lya/b;->j(J)Lya/b;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lya/b;->i(D)Lya/b;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/lang/Object;)Lxc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lxc/a;

    if-eqz v0, :cond_0

    check-cast p0, Lxc/a;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->p(Ljava/lang/String;)Lxc/a;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lxc/a;->OPAQUE:Lxc/a;

    return-object p0
.end method

.method public static O(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lya/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lya/b;

    sget-object v0, Lya/b;->c:Lya/b;

    invoke-virtual {p0, v0}, Lya/b;->a(Lya/b;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->q(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public static P(Ljava/lang/Object;)LB9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LB9/a;

    if-eqz v0, :cond_0

    check-cast p0, LB9/a;

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/Collision;

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/Collision;

    iget-object p0, p0, LJAVARuntime/Collision;->instance:LB9/a;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v5

    invoke-static {v0, v4, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v4

    invoke-static {v0, v3, v4}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v3

    invoke-static {v0, v2, v3}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p0

    invoke-static {v0, v1, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v5

    invoke-static {v0, v4, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v4

    invoke-static {v0, v3, v4}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v3

    invoke-static {v0, v2, v3}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result p0

    invoke-static {v0, v1, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    invoke-static {v0, v4, v6}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    invoke-static {v0, v3, v4}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-static {v0, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {v0, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v4, v6}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v0, v3, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    const/4 p0, 0x0

    invoke-static {v0, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {v0, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->r(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-static {v0, v4, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {v0, v3, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {v0, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {v0, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object v0
.end method

.method public static R(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->W(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object p1

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-static {p1, v4, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v0

    invoke-static {p1, v3, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v0

    invoke-static {p1, v2, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p0

    invoke-static {p1, v1, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object p1

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    invoke-static {p1, v4, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v0

    invoke-static {p1, v3, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v0

    invoke-static {p1, v2, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result p0

    invoke-static {p1, v1, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object p1

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-static {p1, v4, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    invoke-static {p1, v3, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-static {p1, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {p1, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object p1

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {p1, v4, v0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p1, v3, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    const/4 p0, 0x0

    invoke-static {p1, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {p1, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object p1

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->r(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->W(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p1, v4, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {p1, v3, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {p1, v2, p0}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    invoke-static {p1, v1, v5}, Lya/m;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;IF)V

    return-object p1
.end method

.method public static S(Ljava/lang/Object;)LB9/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LB9/a$a;

    if-eqz v0, :cond_0

    check-cast p0, LB9/a$a;

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/Collision$Contact;

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/Collision$Contact;

    iget-object p0, p0, LJAVARuntime/Collision$Contact;->instance:LB9/a$a;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static T(Ljava/lang/Object;)LOb/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LOb/h;

    if-eqz v0, :cond_0

    check-cast p0, LOb/h;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static U(Ljava/lang/Object;)LJAVARuntime/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/File;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/File;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/File;

    new-instance v1, Ljava/io/File;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_1
    instance-of v0, p0, LJAVARuntime/ProjectFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, LJAVARuntime/ProjectFile;

    invoke-virtual {p0}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, LJAVARuntime/File;

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lya/m;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    :cond_2
    return-object v1

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v1, LJAVARuntime/File;

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lya/m;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    :cond_4
    return-object v1
.end method

.method public static V(Ljava/lang/Object;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lya/b;

    if-eqz v0, :cond_0

    check-cast p0, Lya/b;

    invoke-virtual {p0}, Lya/b;->e()F

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    return v1

    :cond_4
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_6
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p0

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_7
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result p0

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_8
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result p0

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_9
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result p0

    invoke-static {p0}, Lbd/A;->b(F)F

    move-result p0

    return p0

    :cond_a
    return v1
.end method

.method public static W(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/ColorGradient;

    if-eqz v0, :cond_2

    check-cast p0, LJAVARuntime/ColorGradient;

    iget-object p0, p0, LJAVARuntime/ColorGradient;->instance:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lya/m;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {}, Lya/m;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lya/m;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->E(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    return-object p1

    :cond_1
    instance-of v0, p0, LJAVARuntime/ColorGradient;

    if-eqz v0, :cond_2

    check-cast p0, LJAVARuntime/ColorGradient;

    iget-object p0, p0, LJAVARuntime/ColorGradient;->instance:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->E(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->A()V

    return-object p1
.end method

.method public static Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/InputDialog$Type;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/InputDialog$Type;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->s(Ljava/lang/String;)LJAVARuntime/InputDialog$Type;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    return-object p0
.end method

.method public static Z(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/ProjectFile;

    invoke-virtual {p0}, LJAVARuntime/ProjectFile;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, LJAVARuntime/File;

    if-eqz v0, :cond_2

    check-cast p0, LJAVARuntime/File;

    invoke-virtual {p0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Lya/H;Lya/m$b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "outputType",
            "op"
        }
    .end annotation

    sget-object v0, Lya/H;->BIG_NUMBER:Lya/H;

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p1}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lya/b;->i(D)Lya/b;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lya/H;->FLOAT2:Lya/H;

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    invoke-static {p1}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-direct {p2, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p2

    :cond_1
    sget-object v0, Lya/H;->FLOAT3:Lya/H;

    if-ne p2, v0, :cond_2

    invoke-static {p0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-static {p1}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-interface {p3, v1, v2}, Lya/m$b;->a(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-direct {p2, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p2

    :cond_2
    sget-object v0, Lya/H;->DIRECTION:Lya/H;

    if-ne p2, v0, :cond_3

    invoke-static {p0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-static {p1}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-interface {p3, v1, v2}, Lya/m$b;->a(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-direct {p2, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p2

    :cond_3
    sget-object v0, Lya/H;->FLOAT4:Lya/H;

    if-ne p2, v0, :cond_4

    invoke-static {p0}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    invoke-static {p1}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-interface {p3, v1, v2}, Lya/m$b;->a(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v3

    invoke-interface {p3, v2, v3}, Lya/m$b;->a(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-direct {p2, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object p2

    :cond_4
    sget-object v0, Lya/H;->QUATERNION:Lya/H;

    if-ne p2, v0, :cond_5

    invoke-static {p0}, Lya/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-static {p1}, Lya/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v1

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v2

    invoke-interface {p3, v1, v2}, Lya/m$b;->a(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v3

    invoke-interface {p3, v2, v3}, Lya/m$b;->a(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-direct {p2, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p2

    :cond_5
    sget-object v0, Lya/H;->COLOR:Lya/H;

    if-ne p2, v0, :cond_6

    invoke-static {p0}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    invoke-static {p1}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v1

    invoke-interface {p3, v0, v1}, Lya/m$b;->a(FF)F

    move-result v0

    invoke-static {v0}, Lgd/b;->I(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    invoke-interface {p3, v1, v2}, Lya/m$b;->a(FF)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    invoke-interface {p3, v2, v3}, Lya/m$b;->a(FF)F

    move-result v2

    invoke-static {v2}, Lgd/b;->I(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-static {p0}, Lgd/b;->I(F)F

    move-result p0

    invoke-direct {p2, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p2

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p1}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {p3, p0, p1}, Lya/m$b;->a(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/lang/Object;)Lya/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lya/l;

    if-eqz v0, :cond_0

    check-cast p0, Lya/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lya/m;->i(Ljava/util/List;)Lya/H;

    move-result-object v0

    invoke-static {v0, p0}, Lya/l;->g(Lya/H;Ljava/util/List;)Lya/l;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    invoke-static {p0}, Lya/l;->b(Lya/H;)Lya/l;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;Lya/H;Lya/m$c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "outputType",
            "op"
        }
    .end annotation

    sget-object v0, Lya/H;->BIG_NUMBER:Lya/H;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lya/b;->i(D)Lya/b;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lya/H;->FLOAT2:Lya/H;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p1

    :cond_1
    sget-object v0, Lya/H;->FLOAT3:Lya/H;

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-interface {p2, v1}, Lya/m$c;->apply(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p1

    :cond_2
    sget-object v0, Lya/H;->DIRECTION:Lya/H;

    if-ne p1, v0, :cond_3

    invoke-static {p0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-interface {p2, v1}, Lya/m$c;->apply(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p1

    :cond_3
    sget-object v0, Lya/H;->FLOAT4:Lya/H;

    if-ne p1, v0, :cond_4

    invoke-static {p0}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v1

    invoke-interface {p2, v1}, Lya/m$c;->apply(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v2

    invoke-interface {p2, v2}, Lya/m$c;->apply(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object p1

    :cond_4
    sget-object v0, Lya/H;->QUATERNION:Lya/H;

    if-ne p1, v0, :cond_5

    invoke-static {p0}, Lya/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-interface {p2, v1}, Lya/m$c;->apply(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-interface {p2, v2}, Lya/m$c;->apply(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p1

    :cond_5
    sget-object v0, Lya/H;->COLOR:Lya/H;

    if-ne p1, v0, :cond_6

    invoke-static {p0}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v0

    invoke-interface {p2, v0}, Lya/m$c;->apply(F)F

    move-result v0

    invoke-static {v0}, Lgd/b;->I(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v1

    invoke-interface {p2, v1}, Lya/m$c;->apply(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v2

    invoke-interface {p2, v2}, Lya/m$c;->apply(F)F

    move-result v2

    invoke-static {v2}, Lgd/b;->I(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-static {p0}, Lgd/b;->I(F)F

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-interface {p2, p0}, Lya/m$c;->apply(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->E(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "desiredType"
        }
    .end annotation

    if-eqz p1, :cond_2

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-eq p1, v0, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Lya/d;->n(Lya/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lya/d;->b(Ljava/lang/Object;Lya/H;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lya/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p0

    :pswitch_1
    invoke-static {p0}, Lya/m;->Z(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lya/m;->d0(Ljava/lang/Object;)Lya/G;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lya/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lya/m;->k0(Ljava/lang/Object;)Lvc/e;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lya/m;->N(Ljava/lang/Object;)Lxc/a;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lya/m;->T(Ljava/lang/Object;)LOb/h;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lya/m;->j0(Ljava/lang/Object;)LMb/p;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lya/m;->W(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p0}, Lya/m;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p0}, Lya/m;->a0(Ljava/lang/Object;)Lya/l;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p0}, Lya/m;->S(Ljava/lang/Object;)LB9/a$a;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p0}, Lya/m;->P(Ljava/lang/Object;)LB9/a;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {p0}, Lya/m;->I(Ljava/lang/Object;)LJAVARuntime/Animation;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {p0}, Lya/m;->h0(Ljava/lang/Object;)LJAVARuntime/SoundFile;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p0}, Lya/m;->r0(Ljava/lang/Object;)LJAVARuntime/WorldFile;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p0}, Lya/m;->J(Ljava/lang/Object;)LJAVARuntime/AnimationFile;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p0}, Lya/m;->c0(Ljava/lang/Object;)LJAVARuntime/ObjectFile;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {p0}, Lya/m;->e0(Ljava/lang/Object;)LJAVARuntime/ProjectFile;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {p0}, Lya/m;->U(Ljava/lang/Object;)LJAVARuntime/File;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p0}, Lya/m;->b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {p0}, Lya/d;->A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p0}, Lya/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {p0}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {p0}, Lya/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {p0}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-static {p0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {p0}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :pswitch_1d
    invoke-static {p0}, Lya/m;->M(Ljava/lang/Object;)Lya/b;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
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
        :pswitch_1
    .end packed-switch
.end method

.method public static c0(Ljava/lang/Object;)LJAVARuntime/ObjectFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/ObjectFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/ObjectFile;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/ObjectFile;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/ObjectFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->A()V

    return-object v0
.end method

.method public static d0(Ljava/lang/Object;)Lya/G;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lya/G;

    if-eqz v0, :cond_0

    check-cast p0, Lya/G;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->t(Ljava/lang/String;)Lya/G;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {}, Lya/G;->values()[Lya/G;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lya/G;->b()I

    move-result v4

    if-ne v4, p0, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lya/G;->SUCCESS:Lya/G;

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILya/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "type",
            "inputDefault",
            "owner"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lya/F;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lya/F;

    invoke-interface {v1, p1, p2}, Lya/F;->a(ILya/H;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p2}, Lya/d;->n(Lya/H;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lya/H;

    invoke-static {v1}, Lya/d;->n(Lya/H;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_10

    :cond_2
    sget-object p0, Lya/m$a;->a:[I

    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lya/H;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const-string p2, ""

    packed-switch p0, :pswitch_data_0

    iget p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->t(Ljava/lang/String;)Lya/G;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->s(Ljava/lang/String;)LJAVARuntime/InputDialog$Type;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->v(Ljava/lang/String;)Lvc/e;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->p(Ljava/lang/String;)Lxc/a;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {p0}, LOb/c;->m(Ljava/lang/String;)LOb/h;

    move-result-object v0

    :cond_3
    return-object v0

    :pswitch_5
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p1, p0, LMb/p;

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {p0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p0

    if-eqz p0, :cond_5

    iput-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p0

    :cond_5
    sget-object p0, LQb/b;->g:LMb/p;

    return-object p0

    :pswitch_6
    invoke-static {}, Lya/m;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->q(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    invoke-static {p0}, Lya/l;->b(Lya/H;)Lya/l;

    move-result-object p0

    return-object p0

    :pswitch_9
    return-object v0

    :pswitch_a
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move-object p0, p2

    :goto_1
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/SoundFile;

    if-eqz p4, :cond_9

    check-cast p1, LJAVARuntime/SoundFile;

    invoke-virtual {p1}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, p3

    :goto_2
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {p1, p0}, LBb/a;->setFilePath(Ljava/lang/String;)V

    return-object p1

    :cond_9
    new-instance p1, LJAVARuntime/SoundFile;

    invoke-direct {p1, p0}, LJAVARuntime/SoundFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_b
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    move-object p0, p2

    :goto_3
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/WorldFile;

    if-eqz p4, :cond_d

    check-cast p1, LJAVARuntime/WorldFile;

    invoke-virtual {p1}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    goto :goto_4

    :cond_b
    move-object p2, p3

    :goto_4
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {p1, p0}, LBb/a;->setFilePath(Ljava/lang/String;)V

    return-object p1

    :cond_d
    new-instance p1, LJAVARuntime/WorldFile;

    invoke-direct {p1, p0}, LJAVARuntime/WorldFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_c
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_e

    goto :goto_5

    :cond_e
    move-object p0, p2

    :goto_5
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/AnimationMaskFile;

    if-eqz p4, :cond_11

    check-cast p1, LJAVARuntime/AnimationMaskFile;

    invoke-virtual {p1}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_f

    goto :goto_6

    :cond_f
    move-object p2, p3

    :goto_6
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    return-object p1

    :cond_10
    invoke-virtual {p1, p0}, LBb/a;->setFilePath(Ljava/lang/String;)V

    return-object p1

    :cond_11
    new-instance p1, LJAVARuntime/AnimationMaskFile;

    invoke-direct {p1, p0}, LJAVARuntime/AnimationMaskFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_d
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_12

    goto :goto_7

    :cond_12
    move-object p0, p2

    :goto_7
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/AnimationFile;

    if-eqz p4, :cond_15

    check-cast p1, LJAVARuntime/AnimationFile;

    invoke-virtual {p1}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_13

    goto :goto_8

    :cond_13
    move-object p2, p3

    :goto_8
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    return-object p1

    :cond_14
    invoke-virtual {p1, p0}, LBb/a;->setFilePath(Ljava/lang/String;)V

    return-object p1

    :cond_15
    new-instance p1, LJAVARuntime/AnimationFile;

    invoke-direct {p1, p0}, LJAVARuntime/AnimationFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_e
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_16

    goto :goto_9

    :cond_16
    move-object p0, p2

    :goto_9
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/ObjectFile;

    if-eqz p4, :cond_19

    check-cast p1, LJAVARuntime/ObjectFile;

    invoke-virtual {p1}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_17

    goto :goto_a

    :cond_17
    move-object p2, p3

    :goto_a
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    return-object p1

    :cond_18
    invoke-virtual {p1, p0}, LJAVARuntime/ObjectFile;->setFilePath(Ljava/lang/String;)V

    return-object p1

    :cond_19
    new-instance p1, LJAVARuntime/ObjectFile;

    invoke-direct {p1, p0}, LJAVARuntime/ObjectFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_f
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_1a

    goto :goto_b

    :cond_1a
    move-object p0, p2

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {p0}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1c

    const-string p4, "."

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1d

    :cond_1c
    const-string p1, ".txt"

    :cond_1d
    iget-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of v0, p4, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_1f

    check-cast p4, LJAVARuntime/ProjectFile;

    invoke-virtual {p4}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_c

    :cond_1e
    move-object p2, v0

    :goto_c
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    return-object p4

    :cond_1f
    new-instance p2, LJAVARuntime/ProjectFile;

    invoke-direct {p2, p1, p0}, LJAVARuntime/ProjectFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p2

    :pswitch_10
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz p0, :cond_20

    goto :goto_d

    :cond_20
    move-object p0, p2

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    return-object v0

    :cond_21
    invoke-static {p0}, Lya/m;->U(Ljava/lang/Object;)LJAVARuntime/File;

    move-result-object p0

    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of p4, p1, LJAVARuntime/File;

    if-eqz p4, :cond_24

    check-cast p1, LJAVARuntime/File;

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_22

    move-object p4, p2

    :cond_22
    if-eqz p0, :cond_23

    invoke-virtual {p0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :cond_23
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    return-object p1

    :cond_24
    iput-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object p0

    :pswitch_11
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    invoke-static {p0}, Lya/m;->E(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p3, p4}, Lya/m;->B(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    if-eqz p0, :cond_25

    return-object p0

    :cond_25
    if-eqz p1, :cond_26

    invoke-static {p1, p4}, Lya/m;->C(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    if-eqz p0, :cond_26

    return-object p0

    :cond_26
    return-object p4

    :pswitch_13
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_27

    move-object p2, p0

    :cond_27
    return-object p2

    :pswitch_14
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0

    :pswitch_15
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p0

    :pswitch_16
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    iget p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object p0

    :pswitch_17
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_e

    :cond_28
    move-object p1, p0

    :cond_29
    :goto_e
    invoke-static {p1, p4}, Lya/m;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :pswitch_18
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :pswitch_19
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p0

    :pswitch_1a
    iget-object p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2b

    :cond_2a
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_f

    :cond_2b
    move-object p1, p0

    :goto_f
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    iget p0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    :cond_2d
    invoke-static {p1}, Lya/b;->b(Ljava/lang/String;)Lya/b;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_10
    if-eqz p0, :cond_2f

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    :cond_2f
    invoke-static {p3, p4, v0, p2, p1}, Lya/d;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lya/H;Ljava/lang/String;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_9
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

.method public static e0(Ljava/lang/Object;)LJAVARuntime/ProjectFile;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/ProjectFile;

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/File;

    const-string v1, ".txt"

    const-string v2, "."

    if-eqz v0, :cond_3

    check-cast p0, LJAVARuntime/File;

    invoke-virtual {p0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    new-instance v0, LJAVARuntime/ProjectFile;

    invoke-direct {v0, v1, p0}, LJAVARuntime/ProjectFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_1
    new-instance v0, LJAVARuntime/ProjectFile;

    invoke-direct {v0, v1, p0}, LJAVARuntime/ProjectFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/m;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v3

    :cond_7
    invoke-static {p0}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v0

    :cond_9
    :goto_2
    new-instance v0, LJAVARuntime/ProjectFile;

    invoke-direct {v0, v1, p0}, LJAVARuntime/ProjectFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    return-object v3
.end method

.method public static f(Lya/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "owner"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lya/d;->n(Lya/H;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lya/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lya/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lya/m$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eq p0, v1, :cond_2

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    sget-object p0, Lya/G;->SUCCESS:Lya/G;

    return-object p0

    :pswitch_1
    sget-object p0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lvc/e;->Vertex:Lvc/e;

    return-object p0

    :pswitch_3
    sget-object p0, Lxc/a;->OPAQUE:Lxc/a;

    return-object p0

    :pswitch_4
    return-object v2

    :pswitch_5
    sget-object p0, LQb/b;->g:LMb/p;

    return-object p0

    :pswitch_6
    invoke-static {}, Lya/m;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_8
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    invoke-static {p0}, Lya/l;->b(Lya/H;)Lya/l;

    move-result-object p0

    return-object p0

    :pswitch_9
    return-object v2

    :pswitch_a
    new-instance p0, LJAVARuntime/SoundFile;

    invoke-direct {p0}, LJAVARuntime/SoundFile;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, LJAVARuntime/WorldFile;

    invoke-direct {p0}, LJAVARuntime/WorldFile;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, LJAVARuntime/AnimationMaskFile;

    invoke-direct {p0}, LJAVARuntime/AnimationMaskFile;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, LJAVARuntime/AnimationFile;

    invoke-direct {p0}, LJAVARuntime/AnimationFile;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, LJAVARuntime/ObjectFile;

    invoke-direct {p0}, LJAVARuntime/ObjectFile;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    return-object p0

    :pswitch_10
    return-object p1

    :pswitch_11
    const-string p0, ""

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    return-object p0

    :pswitch_14
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    return-object p0

    :pswitch_15
    const-string p0, "forward"

    invoke-static {p0, p1}, Lya/m;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :pswitch_16
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    return-object p0

    :pswitch_17
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    return-object p0

    :pswitch_18
    sget-object p0, Lya/b;->c:Lya/b;

    return-object p0

    :cond_2
    :pswitch_19
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_19
        :pswitch_19
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
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

.method public static f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0

    :cond_5
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0, p0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public static g(F)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p1

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    return-object p1

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    return-object p1

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-object p1

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-object p1

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    return-object p1
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "index"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result p0

    return p0
.end method

.method public static h0(Ljava/lang/Object;)LJAVARuntime/SoundFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/SoundFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/SoundFile;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/SoundFile;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/SoundFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/util/List;)Lya/H;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lya/H;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lya/m;->j(Ljava/lang/Object;)Lya/H;

    move-result-object v0

    sget-object v1, Lya/H;->DYNAMIC:Lya/H;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_2
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0
.end method

.method public static i0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p0, LJAVARuntime/Component;

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/Component;

    invoke-static {p0}, Lya/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lya/b;

    if-eqz v0, :cond_2

    check-cast p0, Lya/b;

    invoke-virtual {p0}, Lya/b;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const-string v1, ";"

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p0}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-static {p0}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p0

    invoke-static {p0}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v2

    invoke-static {v2}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result p0

    invoke-static {p0}, Lya/m;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->L(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, LJAVARuntime/File;

    if-eqz v0, :cond_a

    check-cast p0, LJAVARuntime/File;

    invoke-virtual {p0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p0, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_b

    check-cast p0, LJAVARuntime/ProjectFile;

    invoke-virtual {p0}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, LJAVARuntime/ObjectFile;

    if-eqz v0, :cond_c

    check-cast p0, LJAVARuntime/ObjectFile;

    invoke-virtual {p0}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, LJAVARuntime/WorldFile;

    if-eqz v0, :cond_d

    check-cast p0, LJAVARuntime/WorldFile;

    invoke-virtual {p0}, LBb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of v0, p0, LB9/a;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p0, LB9/a$a;

    if-eqz v0, :cond_f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Lya/l;

    if-eqz v0, :cond_10

    check-cast p0, Lya/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lya/l;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_12

    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_11

    goto :goto_0

    :cond_11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object p0, Lya/H;->BOOLEAN:Lya/H;

    return-object p0

    :cond_1
    instance-of v0, p0, Lya/b;

    if-eqz v0, :cond_2

    sget-object p0, Lya/H;->BIG_NUMBER:Lya/H;

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    goto/16 :goto_10

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    sget-object p0, Lya/H;->NUMBER:Lya/H;

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    sget-object p0, Lya/H;->TEXT:Lya/H;

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_30

    instance-of v0, p0, LJAVARuntime/Vector2;

    if-eqz v0, :cond_6

    goto/16 :goto_f

    :cond_6
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_2f

    instance-of v0, p0, LJAVARuntime/Vector3;

    if-eqz v0, :cond_7

    goto/16 :goto_e

    :cond_7
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez v0, :cond_2e

    instance-of v0, p0, LJAVARuntime/Vector4;

    if-eqz v0, :cond_8

    goto/16 :goto_d

    :cond_8
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-nez v0, :cond_2d

    instance-of v0, p0, LJAVARuntime/Quaternion;

    if-eqz v0, :cond_9

    goto/16 :goto_c

    :cond_9
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_2c

    instance-of v0, p0, LJAVARuntime/Color;

    if-eqz v0, :cond_a

    goto/16 :goto_b

    :cond_a
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-nez v0, :cond_2b

    instance-of v0, p0, LJAVARuntime/ColorGradient;

    if-eqz v0, :cond_b

    goto/16 :goto_a

    :cond_b
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_2a

    instance-of v0, p0, LJAVARuntime/SpatialObject;

    if-eqz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_29

    instance-of v0, p0, LJAVARuntime/Material;

    if-eqz v0, :cond_d

    goto/16 :goto_8

    :cond_d
    instance-of v0, p0, LJAVARuntime/File;

    if-nez v0, :cond_28

    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_e

    goto/16 :goto_7

    :cond_e
    instance-of v0, p0, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_f

    sget-object p0, Lya/H;->PROJECT_FILE:Lya/H;

    return-object p0

    :cond_f
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_10

    sget-object p0, Lya/H;->INPUT_STREAM:Lya/H;

    return-object p0

    :cond_10
    instance-of v0, p0, LMb/p;

    if-nez v0, :cond_27

    instance-of v0, p0, LJAVARuntime/Texture;

    if-eqz v0, :cond_11

    goto/16 :goto_6

    :cond_11
    instance-of v0, p0, LJAVARuntime/ObjectFile;

    if-nez v0, :cond_26

    if-eqz v0, :cond_12

    goto/16 :goto_5

    :cond_12
    instance-of v0, p0, LJAVARuntime/AnimationFile;

    if-eqz v0, :cond_13

    sget-object p0, Lya/H;->ANIMATION_FILE:Lya/H;

    return-object p0

    :cond_13
    instance-of v0, p0, LJAVARuntime/AnimationMaskFile;

    if-eqz v0, :cond_14

    sget-object p0, Lya/H;->ANIMATION_MASK_FILE:Lya/H;

    return-object p0

    :cond_14
    instance-of v0, p0, LJAVARuntime/WorldFile;

    if-nez v0, :cond_25

    if-eqz v0, :cond_15

    goto/16 :goto_4

    :cond_15
    instance-of v0, p0, LJAVARuntime/SoundFile;

    if-nez v0, :cond_24

    if-eqz v0, :cond_16

    goto :goto_3

    :cond_16
    instance-of v0, p0, LJAVARuntime/Animation;

    if-eqz v0, :cond_17

    sget-object p0, Lya/H;->ANIMATION:Lya/H;

    return-object p0

    :cond_17
    instance-of v0, p0, LJAVARuntime/AnimationMask;

    if-eqz v0, :cond_18

    sget-object p0, Lya/H;->ANIMATION_MASK:Lya/H;

    return-object p0

    :cond_18
    instance-of v0, p0, LB9/a;

    if-nez v0, :cond_23

    instance-of v0, p0, LJAVARuntime/Collision;

    if-eqz v0, :cond_19

    goto :goto_2

    :cond_19
    instance-of v0, p0, LB9/a$a;

    if-nez v0, :cond_22

    instance-of v0, p0, LJAVARuntime/Collision$Contact;

    if-eqz v0, :cond_1a

    goto :goto_1

    :cond_1a
    instance-of v0, p0, Lxc/a;

    if-eqz v0, :cond_1b

    sget-object p0, Lya/H;->BLENDING_MODE:Lya/H;

    return-object p0

    :cond_1b
    instance-of v0, p0, Lvc/e;

    if-eqz v0, :cond_1c

    sget-object p0, Lya/H;->UV_SOURCE:Lya/H;

    return-object p0

    :cond_1c
    instance-of v0, p0, LJAVARuntime/InputDialog$Type;

    if-eqz v0, :cond_1d

    sget-object p0, Lya/H;->INPUT_DIALOG_TYPE:Lya/H;

    return-object p0

    :cond_1d
    instance-of v0, p0, Lya/G;

    if-eqz v0, :cond_1e

    sget-object p0, Lya/H;->POPUP_DIALOG_TYPE:Lya/H;

    return-object p0

    :cond_1e
    instance-of v0, p0, Lya/l;

    if-nez v0, :cond_21

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1f

    goto :goto_0

    :cond_1f
    instance-of v0, p0, LJAVARuntime/Component;

    if-eqz v0, :cond_20

    check-cast p0, LJAVARuntime/Component;

    invoke-static {p0}, Lya/d;->m(LJAVARuntime/Component;)Lya/H;

    move-result-object p0

    return-object p0

    :cond_20
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    return-object p0

    :cond_21
    :goto_0
    sget-object p0, Lya/H;->LIST:Lya/H;

    return-object p0

    :cond_22
    :goto_1
    sget-object p0, Lya/H;->CONTACT:Lya/H;

    return-object p0

    :cond_23
    :goto_2
    sget-object p0, Lya/H;->COLLISION:Lya/H;

    return-object p0

    :cond_24
    :goto_3
    sget-object p0, Lya/H;->SOUND_FILE:Lya/H;

    return-object p0

    :cond_25
    :goto_4
    sget-object p0, Lya/H;->WORLD_FILE:Lya/H;

    return-object p0

    :cond_26
    :goto_5
    sget-object p0, Lya/H;->OBJECT_FILE:Lya/H;

    return-object p0

    :cond_27
    :goto_6
    sget-object p0, Lya/H;->TEXTURE:Lya/H;

    return-object p0

    :cond_28
    :goto_7
    sget-object p0, Lya/H;->FILE:Lya/H;

    return-object p0

    :cond_29
    :goto_8
    sget-object p0, Lya/H;->MATERIAL:Lya/H;

    return-object p0

    :cond_2a
    :goto_9
    sget-object p0, Lya/H;->GAME_OBJECT:Lya/H;

    return-object p0

    :cond_2b
    :goto_a
    sget-object p0, Lya/H;->COLOR_GRADIENT:Lya/H;

    return-object p0

    :cond_2c
    :goto_b
    sget-object p0, Lya/H;->COLOR:Lya/H;

    return-object p0

    :cond_2d
    :goto_c
    sget-object p0, Lya/H;->QUATERNION:Lya/H;

    return-object p0

    :cond_2e
    :goto_d
    sget-object p0, Lya/H;->FLOAT4:Lya/H;

    return-object p0

    :cond_2f
    :goto_e
    sget-object p0, Lya/H;->FLOAT3:Lya/H;

    return-object p0

    :cond_30
    :goto_f
    sget-object p0, Lya/H;->FLOAT2:Lya/H;

    return-object p0

    :cond_31
    :goto_10
    sget-object p0, Lya/H;->BIG_NUMBER:Lya/H;

    return-object p0
.end method

.method public static j0(Ljava/lang/Object;)LMb/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LMb/p;

    if-eqz v0, :cond_0

    check-cast p0, LMb/p;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Lya/H;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Lya/m;->j(Ljava/lang/Object;)Lya/H;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/Object;)Lvc/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lvc/e;

    if-eqz v0, :cond_0

    check-cast p0, Lvc/e;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->v(Ljava/lang/String;)Lvc/e;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lvc/e;->Vertex:Lvc/e;

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "forward"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "back"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "right"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->w(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0

    :cond_5
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static m(Lya/H;Ljava/util/List;)Lya/l;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/H;",
            "Ljava/util/List<",
            "*>;)",
            "Lya/l;"
        }
    .end annotation

    invoke-static {p0, p1}, Lya/l;->g(Lya/H;Ljava/util/List;)Lya/l;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->T0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p1

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->w(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->T0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p1

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S0(FF)V

    return-object p1

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S0(FF)V

    return-object p1

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S0(FF)V

    return-object p1

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S0(FF)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {p1, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S0(FF)V

    return-object p1
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "forward"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "back"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v1, "right"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const-string v1, "up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    const-string v1, "down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method public static n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v2

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_5
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static o0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {p1, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public static p(Ljava/lang/String;)Lxc/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lxc/a;->OPAQUE:Lxc/a;

    return-object p0

    :cond_1
    invoke-static {}, Lxc/a;->values()[Lxc/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, Lxc/a;->OPAQUE:Lxc/a;

    return-object p0
.end method

.method public static p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v2, p0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v2

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v3

    const/4 v4, 0x3

    invoke-static {p0, v4}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0

    :cond_5
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, p0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static q0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-object p1

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-object p1

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-object p1

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-object p1

    :cond_4
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1, v0, p0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-object p1

    :cond_5
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v2

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-object p1
.end method

.method public static r(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0

    :cond_1
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "float4("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v0

    :cond_3
    const-string v0, "float3("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lya/m;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v0

    :cond_4
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v1, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v0

    :cond_5
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0
.end method

.method public static r0(Ljava/lang/Object;)LJAVARuntime/WorldFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, LJAVARuntime/WorldFile;

    if-eqz v0, :cond_0

    check-cast p0, LJAVARuntime/WorldFile;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LJAVARuntime/WorldFile;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/WorldFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)LJAVARuntime/InputDialog$Type;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    return-object p0

    :cond_1
    invoke-static {}, LJAVARuntime/InputDialog$Type;->values()[LJAVARuntime/InputDialog$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    return-object p0
.end method

.method public static t(Ljava/lang/String;)Lya/G;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lya/G;->SUCCESS:Lya/G;

    return-object p0

    :cond_1
    invoke-static {}, Lya/G;->values()[Lya/G;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, Lya/G;->SUCCESS:Lya/G;

    return-object p0
.end method

.method public static u(Ljava/lang/String;Lya/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "type",
            "owner",
            "ownerComponent"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Lya/d;->n(Lya/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p3, p1}, Lya/d;->w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lya/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    sget-object p3, Lya/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lya/m;->t(Ljava/lang/String;)Lya/G;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lya/m;->s(Ljava/lang/String;)LJAVARuntime/InputDialog$Type;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lya/m;->v(Ljava/lang/String;)Lvc/e;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lya/m;->p(Ljava/lang/String;)Lxc/a;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOb/c;->m(Ljava/lang/String;)LOb/h;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_7
    invoke-static {p0}, Lya/m;->q(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lya/H;->DYNAMIC:Lya/H;

    invoke-static {p0}, Lya/l;->b(Lya/H;)Lya/l;

    move-result-object p0

    return-object p0

    :pswitch_9
    return-object v0

    :pswitch_a
    new-instance p3, LJAVARuntime/SoundFile;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, LJAVARuntime/SoundFile;-><init>(Ljava/lang/String;)V

    return-object p3

    :pswitch_b
    new-instance p3, LJAVARuntime/WorldFile;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, LJAVARuntime/WorldFile;-><init>(Ljava/lang/String;)V

    return-object p3

    :pswitch_c
    new-instance p3, LJAVARuntime/ObjectFile;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, LJAVARuntime/ObjectFile;-><init>(Ljava/lang/String;)V

    return-object p3

    :pswitch_d
    invoke-static {p0}, Lya/m;->E(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    :pswitch_e
    return-object p0

    :pswitch_f
    invoke-static {p0}, Lya/m;->r(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "float3("

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p0}, Lya/m;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {p3, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-object p3

    :cond_4
    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    invoke-static {p0}, Lya/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p0}, Lya/m;->y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p0, p2}, Lya/m;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {p0}, Lya/m;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {p0}, Lya/m;->w(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lya/b;->b(Ljava/lang/String;)Lya/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {p1, p2}, Lya/m;->f(Lya/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-static {p1, p2}, Lya/m;->f(Lya/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;)Lvc/e;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lvc/e;->Vertex:Lvc/e;

    return-object p0

    :cond_1
    invoke-static {}, Lvc/e;->values()[Lvc/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, Lvc/e;->Vertex:Lvc/e;

    return-object p0
.end method

.method public static w(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    const-string v0, "float2"

    invoke-static {p0, v0}, Lya/m;->H(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v1

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    const-string v0, "float3"

    invoke-static {p0, v0}, Lya/m;->H(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v3

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {v0, v1, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    const-string v0, "float4"

    invoke-static {p0, v0}, Lya/m;->H(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, p0, p0, p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result v4

    const/4 v5, 0x3

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgd/b;->v1(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "owner"
        }
    .end annotation

    invoke-static {p0}, Lya/m;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "forward"

    const-string v3, "up"

    const/4 v4, 0x0

    const-string v5, "back"

    const-string v6, "down"

    const-string v7, "left"

    const-string v8, "right"

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v13

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v12

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v11

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v10

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v9

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v12, :cond_4

    if-eq v1, v13, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v11, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D4()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b3()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k2()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v13

    goto :goto_3

    :sswitch_7
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v12

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v11

    goto :goto_3

    :sswitch_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v4

    goto :goto_3

    :sswitch_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v10

    goto :goto_3

    :sswitch_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v9

    :goto_3
    const/high16 p0, -0x40800000    # -1.0f

    const/4 p1, 0x0

    if-eqz v1, :cond_c

    if-eq v1, v12, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    if-eq v1, v13, :cond_a

    if-eq v1, v10, :cond_9

    if-eq v1, v11, :cond_8

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :cond_8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_9
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :cond_a
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :cond_b
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p0, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :cond_c
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x285c6d3b -> :sswitch_5
        0xe9b -> :sswitch_4
        0x2e04e7 -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x285c6d3b -> :sswitch_b
        0xe9b -> :sswitch_a
        0x2e04e7 -> :sswitch_9
        0x2f24a2 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
    .end sparse-switch
.end method
