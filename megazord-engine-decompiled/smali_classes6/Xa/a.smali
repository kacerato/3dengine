.class public LXa/a;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public O()LUc/b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_EVENT_TOPBAR:LUc/b;

    return-object v0
.end method

.method public z0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
