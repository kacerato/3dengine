.class public abstract LKa/x;
.super LKa/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title"
        }
    .end annotation

    const-string v0, "Blending Mode"

    sget-object v1, Lya/H;->BLENDING_MODE:Lya/H;

    invoke-direct {p0, p1, p2, v0, v1}, LKa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lya/H;)V

    return-void
.end method


# virtual methods
.method public G0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    sget-object v0, LKa/F;->a:[Ljava/lang/String;

    const-class v1, Lxc/a;

    sget-object v2, Lxc/a;->OPAQUE:Lxc/a;

    invoke-static {p1, v0, v0, v1, v2}, LKa/J;->e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
