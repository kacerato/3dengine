.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeStrictComponentResolver;
.super Ljava/lang/Object;
.source "NoCodeStrictComponentResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;
    .locals 3

    if-eqz p0, :missing

    if-eqz p1, :missing

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v0

    if-eqz v0, :missing

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :missing

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :missing

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v2

    :missing
    const/4 v0, 0x0

    return-object v0
.end method
