.class public Lsa/d;
.super Lc9/f;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:LJAVARuntime/RayDirection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "dir"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 5
    iput-object p1, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 6
    iput-object p2, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lsa/d;->q()Lsa/d;

    move-result-object v0

    return-object v0
.end method

.method public q()Lsa/d;
    .locals 3

    new-instance v0, Lsa/d;

    iget-object v1, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->O2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->O2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    iput-object p1, p0, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orig"
        }
    .end annotation

    iput-object p1, p0, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public w()LJAVARuntime/RayDirection;
    .locals 1

    iget-object v0, p0, Lsa/d;->d:LJAVARuntime/RayDirection;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/RayDirection;

    invoke-direct {v0, p0}, LJAVARuntime/RayDirection;-><init>(Lsa/d;)V

    iput-object v0, p0, Lsa/d;->d:LJAVARuntime/RayDirection;

    :cond_0
    return-object v0
.end method
