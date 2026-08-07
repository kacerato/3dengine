.class public LEc/D;
.super LCc/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "VectorXZX"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LEc/D$a;

    invoke-direct {v0}, LEc/D$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "xzx"

    const-string v2, "VectorXZX"

    const-string v3, "Vector XZX"

    invoke-direct {p0, v2, v3, v0, v1}, LCc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Ljava/lang/String;)V

    return-void
.end method
