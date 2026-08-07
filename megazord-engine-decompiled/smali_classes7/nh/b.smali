.class public Lnh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field public b:Lnh/a;

.field public c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

.field public d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public e:Lbd/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbd/s<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lbd/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbd/s<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lbd/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbd/s<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lbd/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbd/s<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lbd/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbd/s<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    iput-object v0, p0, Lnh/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v0, Lbd/s;

    invoke-direct {v0}, Lbd/s;-><init>()V

    iput-object v0, p0, Lnh/b;->e:Lbd/s;

    new-instance v0, Lbd/s;

    invoke-direct {v0}, Lbd/s;-><init>()V

    iput-object v0, p0, Lnh/b;->f:Lbd/s;

    new-instance v0, Lbd/s;

    invoke-direct {v0}, Lbd/s;-><init>()V

    iput-object v0, p0, Lnh/b;->g:Lbd/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnh/b;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnh/b;->o:Ljava/util/HashMap;

    new-instance v0, Lbd/s;

    invoke-direct {v0}, Lbd/s;-><init>()V

    iput-object v0, p0, Lnh/b;->p:Lbd/s;

    new-instance v0, Lbd/s;

    invoke-direct {v0}, Lbd/s;-><init>()V

    iput-object v0, p0, Lnh/b;->q:Lbd/s;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnh/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmd/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnh/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmd/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnh/b;->a:Ljava/io/File;

    invoke-static {v0}, Lmd/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnh/b;->a:Ljava/io/File;

    invoke-static {v0}, Lmd/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnh/b;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lnh/b;->e:Lbd/s;

    invoke-virtual {v0}, Lbd/s;->clear()V

    iget-object v0, p0, Lnh/b;->f:Lbd/s;

    invoke-virtual {v0}, Lbd/s;->clear()V

    iget-object v0, p0, Lnh/b;->g:Lbd/s;

    invoke-virtual {v0}, Lbd/s;->clear()V

    iget-object v0, p0, Lnh/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnh/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lnh/b;->p:Lbd/s;

    invoke-virtual {v0}, Lbd/s;->clear()V

    iget-object v0, p0, Lnh/b;->q:Lbd/s;

    invoke-virtual {v0}, Lbd/s;->clear()V

    return-void
.end method
