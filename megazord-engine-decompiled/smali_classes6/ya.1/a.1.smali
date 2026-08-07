.class public final Lya/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/a$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;ZLya/a$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "nestedListItems",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwd/b;",
            ">;Z",
            "Lya/a$d;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lya/H;->NUMBER:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->BIG_NUMBER:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->NUMBER01:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->BOOLEAN:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->TEXT:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "Primitives"

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lya/H;->FLOAT2:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->FLOAT3:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->DIRECTION:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->FLOAT4:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->QUATERNION:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->COLOR:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->COLOR_GRADIENT:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "Vectors"

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lya/H;->GAME_OBJECT:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "World"

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lya/H;->FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->PROJECT_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->OBJECT_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->ANIMATION_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->ANIMATION_MASK_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->WORLD_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->SOUND_FILE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->ANIMATION:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->ANIMATION_MASK:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->TEXTURE:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lya/H;->CUBEMAP:Lya/H;

    invoke-static {v1, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lwd/b;

    const-string v2, "Files"

    invoke-direct {v1, v2, v0}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->MATERIAL:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "Assets"

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lya/H;->BLENDING_MODE:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->UV_SOURCE:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->INPUT_DIALOG_TYPE:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lya/H;->POPUP_DIALOG_TYPE:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "Enums"

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lya/H;->ANY_COMPONENT:Lya/H;

    invoke-static {v0, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lya/d;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lya/d;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lya/H;

    invoke-static {v4, p2}, Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Lwd/b;

    invoke-direct {v2, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p2, Lwd/b;

    const-string v0, "Components"

    invoke-direct {p2, v0, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lya/a$d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/a$d;",
            ")",
            "Ljava/util/List<",
            "Lwd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lya/a;->a(Ljava/util/List;ZLya/a$d;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lya/a$a;

    invoke-direct {v2, p0}, Lya/a$a;-><init>(Lya/a$d;)V

    const/4 p0, 0x1

    invoke-static {v1, p0, v2}, Lya/a;->a(Ljava/util/List;ZLya/a$d;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lwd/b;

    const-string v2, "List"

    invoke-direct {p0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static c(Lya/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lya/H;->MAT3:Lya/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lya/H;->MAT4:Lya/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lya/H;->BRANCH:Lya/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lya/H;->DYNAMIC:Lya/H;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lya/H;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_NUMBER:LUc/b;

    const-string v0, "Number"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lya/d;->n(Lya/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lya/d;->i(Lya/H;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lya/a$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANY_COMPONENT:LUc/b;

    const-string v0, "Any Component"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_POPUP_DIALOG_TYPE:LUc/b;

    const-string v0, "Popup Dialog Type"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_INPUT_DIALOG_TYPE:LUc/b;

    const-string v0, "Input Dialog Type"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_UV_SOURCE:LUc/b;

    const-string v0, "UV Source"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_BLENDING_MODE:LUc/b;

    const-string v0, "Blending Mode"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_COLOR_GRADIENT:LUc/b;

    const-string v0, "Color Gradient"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_MASK:LUc/b;

    const-string v0, "Animation Mask"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION:LUc/b;

    const-string v0, "Animation"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_SOUND_FILE:LUc/b;

    const-string v0, "Sound File"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_WORLD_FILE:LUc/b;

    const-string v0, "World File"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_MASK_FILE:LUc/b;

    const-string v0, "Animation Mask File"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_FILE:LUc/b;

    const-string v0, "Animation File"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_OBJECT_FILE:LUc/b;

    const-string v0, "Object File"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    const-string p0, "Input Stream"

    return-object p0

    :pswitch_e
    const-string p0, "Project File"

    return-object p0

    :pswitch_f
    const-string p0, "File"

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_GAME_OBJECT:LUc/b;

    const-string v0, "Object"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_QUATERNION:LUc/b;

    const-string v0, "Quaternion"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT4:LUc/b;

    const-string v0, "Number 4"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT3:LUc/b;

    const-string v0, "Number 3"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT2:LUc/b;

    const-string v0, "Number 2"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_NUMBER01:LUc/b;

    const-string v0, "Number 01"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_BIG_NUMBER:LUc/b;

    const-string v0, "Big Number"

    invoke-static {p0, v0}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static e(Lya/H;Lya/H;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "listItemType"
        }
    .end annotation

    sget-object v0, Lya/H;->LIST:Lya/H;

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_LIST:LUc/b;

    const-string v1, "List"

    invoke-static {v0, v1}, Lya/a;->k(LUc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lya/a;->i(Lya/H;)Lya/H;

    move-result-object p1

    invoke-static {p1}, Lya/a;->d(Lya/H;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lya/a;->d(Lya/H;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lya/H;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "allowList"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lya/H;->BRANCH:Lya/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lya/H;->DYNAMIC:Lya/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lya/H;->MAT3:Lya/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lya/H;->MAT4:Lya/H;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lya/H;->INPUT_STREAM:Lya/H;

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Lya/H;->LIST:Lya/H;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static g(Lya/H;Lya/a$d;)Lwd/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "listener"
        }
    .end annotation

    new-instance v0, Lwd/b;

    invoke-static {p0}, Lya/a;->d(Lya/H;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lya/a$b;

    invoke-direct {v2, p1, p0}, Lya/a$b;-><init>(Lya/a$d;Lya/H;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    return-object v0
.end method

.method public static h(Lya/H;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lya/a;->f(Lya/H;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lya/H;->NUMBER:Lya/H;

    :cond_0
    return-object p0
.end method

.method public static i(Lya/H;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lya/a;->f(Lya/H;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lya/H;->NUMBER:Lya/H;

    :cond_0
    return-object p0
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k(LUc/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    invoke-static {}, Lya/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
