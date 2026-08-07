.class public LJc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJc/f;

.field public final b:Lxc/f;

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>(LJc/f;Lxc/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramTag",
            "shaderParam"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/e;->a:LJc/f;

    iput-object p2, p0, LJc/e;->b:Lxc/f;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, LJc/e;->c:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, LJc/e;->c:[I

    iput p1, p0, LJc/e;->d:I

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "simpleName",
            "baseVFXEffect"
        }
    .end annotation

    iget-object v0, p0, LJc/e;->b:Lxc/f;

    invoke-virtual {v0}, Lxc/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vfx_pr_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, LJc/e;->c:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_2

    :cond_0
    iput p1, p0, LJc/e;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, LJc/e;->c:[I

    new-array p1, p1, [I

    iput-object p1, p0, LJc/e;->c:[I

    if-eqz v0, :cond_2

    array-length v2, v0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, LJc/e;->c:[I

    return-object v0
.end method

.method public e()LJc/f;
    .locals 1

    iget-object v0, p0, LJc/e;->a:LJc/f;

    return-object v0
.end method

.method public f()Lxc/f;
    .locals 1

    iget-object v0, p0, LJc/e;->b:Lxc/f;

    return-object v0
.end method

.method public g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "v"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LJc/e;->c(I)V

    iget-object v0, p0, LJc/e;->c:[I

    aput p2, v0, p1

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, LJc/e;->d:I

    return v0
.end method
