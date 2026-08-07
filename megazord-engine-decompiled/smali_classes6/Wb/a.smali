.class public LWb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LWb/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, LWb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    invoke-static {p1}, Lbc/l;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LWb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_0
    iget-object p1, p0, LWb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LWb/a;->a:Ljava/util/List;

    return-void
.end method
