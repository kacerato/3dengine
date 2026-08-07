.class public Lva/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lva/m;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Lva/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Lva/m;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;",
            "Lva/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/i;->a:Lfd/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lva/i;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lva/i;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lva/i;->d:Ljava/util/Map;

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/i;->e:Lfd/c;

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/i;->f:Lfd/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lva/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva/m;

    if-nez v0, :cond_1

    new-instance v0, Lva/m;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, Lva/m;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v1, p0, Lva/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v1, v0}, Lfd/c;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Lva/m;->c:Lfd/c;

    invoke-virtual {v1, p1}, Lfd/c;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lva/i;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lva/i;->e:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lva/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva/m;

    if-nez v0, :cond_1

    new-instance v0, Lva/m;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, Lva/m;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v1, p0, Lva/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v1, v0}, Lfd/c;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Lva/m;->d:Lfd/c;

    invoke-virtual {v1, p1}, Lfd/c;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lva/i;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lva/i;->f:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lva/i;->e:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lva/i;->e:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->size()I

    move-result v0

    return v0
.end method

.method public e(I)Lva/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lva/m;

    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->size()I

    move-result v0

    return v0
.end method

.method public g(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lva/i;->f:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    return-object p1
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lva/i;->f:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->size()I

    move-result v0

    return v0
.end method

.method public i(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lva/m;

    iget-object p1, p1, Lva/m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->size()I

    move-result v0

    return v0
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/i;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/i;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/i;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    invoke-virtual {p0, p1}, Lva/i;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lva/i;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    invoke-virtual {p0, p1}, Lva/i;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    return-void
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lva/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva/m;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lva/m;->c:Lfd/c;

    invoke-virtual {v1, p1}, Lfd/c;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lva/m;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v1, v0}, Lfd/c;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lva/i;->b:Ljava/util/Map;

    iget-object v0, v0, Lva/m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lva/i;->e:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lva/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva/m;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lva/m;->d:Lfd/c;

    invoke-virtual {v1, p1}, Lfd/c;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lva/m;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lva/i;->a:Lfd/c;

    invoke-virtual {v1, v0}, Lfd/c;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lva/i;->b:Ljava/util/Map;

    iget-object v0, v0, Lva/m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lva/i;->f:Lfd/c;

    invoke-virtual {v0, p1}, Lfd/c;->remove(Ljava/lang/Object;)Z

    return-void
.end method
