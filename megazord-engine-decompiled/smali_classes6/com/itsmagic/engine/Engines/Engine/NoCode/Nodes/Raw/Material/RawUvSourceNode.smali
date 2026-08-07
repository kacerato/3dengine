.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/z;


# static fields
.field public static final h:Ljava/lang/String; = "RawUvSource"


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public value:Lvc/e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    sget-object v0, Lvc/e;->Vertex:Lvc/e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->value:Lvc/e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "UV Source"

    sget-object v2, Lya/H;->UV_SOURCE:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_UV_SOURCE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "RawUvSource"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->value:Lvc/e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;)V

    sget-object v2, LW5/b$a;->SLDropdownWrap:LW5/b$a;

    const-string v3, ""

    const-class v4, Lvc/e;

    invoke-static {v3, v4, v0, v1, v2}, LZ5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;LW5/b$a;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

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

    const-string p1, "UV Source"

    return-object p1
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->value:Lvc/e;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lvc/e;->Vertex:Lvc/e;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_RAW_UV_SOURCE:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
