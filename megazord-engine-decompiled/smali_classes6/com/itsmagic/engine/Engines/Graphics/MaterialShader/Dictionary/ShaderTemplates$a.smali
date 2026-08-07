.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;
.super Lbd/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lvc/d;

.field public c:Lxc/h;

.field public d:Lxc/i;


# direct methods
.method public constructor <init>(Lvc/d;Lxc/h;Lxc/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderConstructor",
            "forwardShader",
            "variance"
        }
    .end annotation

    invoke-direct {p0}, Lbd/m;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->b:Lvc/d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->c:Lxc/h;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->d:Lxc/i;

    return-void
.end method
