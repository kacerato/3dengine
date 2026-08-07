.class public LJAVARuntime/PoolSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient instance:LE9/d;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LE9/d;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/PoolSearchResult;->instance:LE9/d;

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:LE9/d;

    invoke-virtual {v0}, LE9/d;->a()F

    move-result v0

    return v0
.end method

.method public getObject()LJAVARuntime/PooledObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:LE9/d;

    invoke-virtual {v0}, LE9/d;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->E()LJAVARuntime/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public getSquaredDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared distance of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia ao quadrado do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:LE9/d;

    invoke-virtual {v0}, LE9/d;->c()F

    move-result v0

    return v0
.end method
