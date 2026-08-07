.class public Lvc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lxc/h;

.field public final c:Lxc/i;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public e:Lxc/i;

.field public f:Lxc/e;


# direct methods
.method public constructor <init>(Lxc/h;Ljava/util/List;Lxc/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderVarianceHandler",
            "params",
            "defaultVariance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxc/h;",
            "Ljava/util/List<",
            "Lxc/f;",
            ">;",
            "Lxc/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/b;->b:Lxc/h;

    iput-object p2, p0, Lvc/b;->a:Ljava/util/List;

    iput-object p3, p0, Lvc/b;->c:Lxc/i;

    return-void
.end method

.method public static b(Lvc/b;)Lvc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPass"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lvc/b;

    iget-object v1, p0, Lvc/b;->b:Lxc/h;

    iget-object v2, p0, Lvc/b;->a:Ljava/util/List;

    iget-object p0, p0, Lvc/b;->c:Lxc/i;

    invoke-direct {v0, v1, v2, p0}, Lvc/b;-><init>(Lxc/h;Ljava/util/List;Lxc/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matName"
        }
    .end annotation

    iget-object v0, p0, Lvc/b;->f:Lxc/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lvc/b;->c:Lxc/i;

    invoke-virtual {p0, v0, p1}, Lvc/b;->n(Lxc/i;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    invoke-virtual {v0}, Lxc/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvc/b;->e:Lxc/i;

    invoke-virtual {p0, v0, p1}, Lvc/b;->n(Lxc/i;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lxc/h;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lxc/i;
    .locals 1

    iget-object v0, p0, Lvc/b;->c:Lxc/i;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Lvc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public f()Lxc/e;
    .locals 1

    iget-object v0, p0, Lvc/b;->f:Lxc/e;

    return-object v0
.end method

.method public g()Lxc/i;
    .locals 1

    iget-object v0, p0, Lvc/b;->e:Lxc/i;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lxc/h;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lxc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lxc/h;->v(Lxc/i;)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxc/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lxc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lxc/h;->C(Lxc/i;)Z

    return-void
.end method

.method public l(Lxc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lxc/h;->C(Lxc/i;)Z

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    invoke-virtual {v0, p1, p2}, Lxc/h;->H(Ljava/lang/String;Z)V

    return-void
.end method

.method public n(Lxc/i;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "matName"
        }
    .end annotation

    iput-object p1, p0, Lvc/b;->e:Lxc/i;

    iget-object v0, p0, Lvc/b;->b:Lxc/h;

    invoke-virtual {v0, p1, p2}, Lxc/h;->r(Lxc/i;Ljava/lang/String;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, Lvc/b;->f:Lxc/e;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lvc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p0, Lvc/b;->b:Lxc/h;

    invoke-virtual {p1}, Lxc/h;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvc/b;->b:Lxc/h;

    invoke-virtual {p1}, Lxc/h;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lvc/b;->b:Lxc/h;

    const-string p2, "Failed to create material shader"

    invoke-virtual {p1, p2}, Lxc/h;->I(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p1}, Lxc/e;->u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p1

    iput-object p1, p0, Lvc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x1

    return p1
.end method
