.class public Lva/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/m;->b:Lfd/c;

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/m;->c:Lfd/c;

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Lfd/c;-><init>()V

    iput-object v0, p0, Lva/m;->d:Lfd/c;

    iput-object p1, p0, Lva/m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lva/m;->b:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lva/m;->c:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lva/m;->d:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lva/m;->c:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lva/m;->d:Lfd/c;

    invoke-virtual {v0}, Lfd/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
