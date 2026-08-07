.class public LEd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:I

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LEd/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 9
    iput p1, p0, LEd/a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LEd/a;->d:I

    return v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LEd/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LEd/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LEd/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public e(I)LEd/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iput p1, p0, LEd/a;->d:I

    return-object p0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LEd/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    iget-object v0, p0, LEd/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LEd/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertice"
        }
    .end annotation

    iget-object v0, p0, LEd/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LEd/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertice"
        }
    .end annotation

    iget-object v0, p0, LEd/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public i(Lcom/jme3/math/Vector3f;)LEd/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertice"
        }
    .end annotation

    iget-object v0, p0, LEd/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y1(Lcom/jme3/math/Vector3f;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vertice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LEd/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->O2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LEd/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->O2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
