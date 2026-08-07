.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/z;


# static fields
.field public static final i:Ljava/lang/String; = "RawTexture"


# instance fields
.field public transient g:LMb/p;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public textureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Texture"

    sget-object v2, Lya/H;->TEXTURE:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TEXTURE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "RawTexture"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0()LMb/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-static {v0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    return-object v0
.end method

.method public final H0()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    return-void
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J0(LMb/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_0

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
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

    const-string p1, "Texture"

    return-object p1
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f0(Lec/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->f0(Lec/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(NoCode),(Texture),(Loading),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lec/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-static {v0}, LQb/b;->x(Ljava/lang/String;)LMb/g;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lec/a;->d()V

    :cond_2
    return-void
.end method

.method public m0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->G0()LMb/p;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    return-void
.end method

.method public q()I
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->H0()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public r0(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RawTextureNode: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->g:LMb/p;

    :cond_1
    :goto_0
    return-void
.end method

.method public w(Lbd/h;)Lbd/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, Lbd/k;

    invoke-direct {p1}, Lbd/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lbd/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_RAW_TEXTURE:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
