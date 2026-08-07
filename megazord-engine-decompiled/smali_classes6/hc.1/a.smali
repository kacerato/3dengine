.class public abstract Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc/a$b;,
        Lhc/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, LAc/a;->a()V

    invoke-static {}, Lhc/a$b;->a()V

    return-void
.end method

.method public static c(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-static {p0, p1}, Lyc/a;->g(II)V

    return-void
.end method

.method public static d()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;-><init>()V

    sput-object v0, Lhc/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-static {}, LQb/b;->q()V

    invoke-static {}, LQb/b;->a()V

    invoke-static {}, Lyc/a;->c()V

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    invoke-static {}, LI6/d;->D1()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "VFX Update"

    invoke-static {p0}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {}, LHc/a;->u()V

    invoke-static {p0}, LI6/d;->I1(LI6/g;)V

    invoke-static {}, LI6/d;->D1()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Gizmo preparation"

    invoke-static {p0}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object v0

    :cond_1
    sget-object p0, Lhc/a$b;->b:Lnc/d;

    invoke-static {}, Lnc/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnc/d;->n(Ljava/util/List;)V

    invoke-static {v0}, LI6/d;->I1(LI6/g;)V

    invoke-static {}, Lnc/a;->b()V

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->a0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, LAc/a;->c(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    :cond_0
    return-void
.end method
