.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:LMb/p;

.field public f:Z

.field private force9patch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient g:Ljava/lang/Runnable;

.field public final h:LTb/h;

.field private imageFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private spriteIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->h:LTb/h;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRequestDrawRunnable"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->g:Ljava/lang/Runnable;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x()V

    :cond_0
    return-void
.end method

.method public g(Lbd/h;)Lbd/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "@@UIG@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg4/h;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    :cond_1
    new-instance v0, Lbd/k;

    invoke-direct {v0}, Lbd/k;-><init>()V

    iget-object v1, v0, Lbd/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->k(Ljava/lang/String;Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "context",
            "display9Patch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->k(Ljava/lang/String;Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Landroid/content/Context;ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "context",
            "display9Patch",
            "forceShowSpriteIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "ZZ)",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    sget-object v3, LW5/b$a;->UITexture:LW5/b$a;

    invoke-direct {v1, v2, p1, v3, p2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    new-instance p1, LW5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$c;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    const-string p3, "Force 9-patch"

    sget-object v1, LW5/b$a;->SLBoolean:LW5/b$a;

    invoke-direct {p1, p2, p3, v1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    invoke-static {p1}, LMb/g;->J0(LMb/p;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    new-instance p1, LW5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$d;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    const-string p3, "Sprite index"

    sget-object p4, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {p1, p2, p3, p4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    return v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    if-eqz v0, :cond_0

    instance-of v1, v0, LMb/g;

    if-eqz v1, :cond_0

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->t()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->t()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->t()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lgd/b;->F(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->t()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()LMb/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LMb/p;->N()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    return v0
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "@@UIG@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg4/h;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIImageHandler: REPLACING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TO "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public t(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force9patch"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->force9patch:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    return-void
.end method

.method public v(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->spriteIndex:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    :cond_1
    return-void
.end method

.method public w(LMb/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_0

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "@@"

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-nez v3, :cond_1

    const-string v3, "@@UIG@@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->imageFile:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg4/h;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    :cond_1
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->b:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->c:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    invoke-static {v1}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->h:LTb/h;

    invoke-virtual {v1, v2}, LMb/p;->r(LTb/h;)V

    goto :goto_2

    :cond_5
    :goto_0
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_1
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->d:Ljava/lang/String;

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e:LMb/p;

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->h:LTb/h;

    invoke-virtual {v0, v1}, LMb/p;->f0(LTb/h;)V

    :cond_8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->r()V

    :cond_9
    return-void
.end method
