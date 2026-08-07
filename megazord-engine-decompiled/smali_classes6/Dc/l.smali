.class public LDc/l;
.super LCc/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "VectorYZ"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LDc/l$a;

    invoke-direct {v0}, LDc/l$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "yz"

    const-string v2, "VectorYZ"

    const-string v3, "Vector YZ"

    invoke-direct {p0, v2, v3, v0, v1}, LCc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Ljava/lang/String;)V

    return-void
.end method
