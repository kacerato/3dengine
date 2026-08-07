.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->a()Z

    move-result p1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    :cond_0
    return-void
.end method
