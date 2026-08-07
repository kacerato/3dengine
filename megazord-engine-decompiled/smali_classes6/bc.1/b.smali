.class public Lbc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbc/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:LJAVARuntime/CompoundVertex;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbc/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Lbc/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transform"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0()LUb/f;

    move-result-object p2

    new-instance v0, Lbc/b$a;

    invoke-direct {v0, p1, p2}, Lbc/b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;)V

    iget-object v1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q1()I

    move-result v1

    invoke-static {v0, v1}, Lbc/b$a;->b(Lbc/b$a;I)I

    iget-object v1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I0()I

    move-result v1

    invoke-static {v0, v1}, Lbc/b$a;->d(Lbc/b$a;I)I

    iget-object v1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q0()I

    move-result v1

    invoke-static {v0, v1}, Lbc/b$a;->f(Lbc/b$a;I)I

    iget-object v1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :goto_0
    iget-object p1, p0, Lbc/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2

    iget-object v0, p0, Lbc/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No bake yet, please add at least one vertex"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, Lbc/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc/b$a;

    invoke-static {v1}, Lbc/b$a;->h(Lbc/b$a;)LUb/f;

    move-result-object v1

    iget-object v2, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iput-object v1, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lbc/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, Lbc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbc/b$a;->g(Lbc/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {p1}, Lbc/b$a;->h(Lbc/b$a;)LUb/f;

    move-result-object v2

    invoke-static {p1}, Lbc/b$a;->a(Lbc/b$a;)I

    move-result v3

    invoke-static {p1}, Lbc/b$a;->c(Lbc/b$a;)I

    move-result v4

    invoke-static {p1}, Lbc/b$a;->e(Lbc/b$a;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->O1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;III)V

    :cond_0
    return-void
.end method

.method public e(Lbc/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    iget-object v0, p0, Lbc/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbc/b;->c()V

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbc/b$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbc/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lbc/b;->c()V

    return-void
.end method

.method public g(LJAVARuntime/CompoundVertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lbc/b;->c:LJAVARuntime/CompoundVertex;

    return-void
.end method

.method public h()LJAVARuntime/CompoundVertex;
    .locals 1

    iget-object v0, p0, Lbc/b;->c:LJAVARuntime/CompoundVertex;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CompoundVertex;

    invoke-direct {v0, p0}, LJAVARuntime/CompoundVertex;-><init>(Lbc/b;)V

    iput-object v0, p0, Lbc/b;->c:LJAVARuntime/CompoundVertex;

    :cond_0
    return-object v0
.end method
