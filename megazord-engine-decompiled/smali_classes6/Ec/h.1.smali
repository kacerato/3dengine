.class public LEc/h;
.super LCc/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "VectorWXZ"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LEc/h$a;

    invoke-direct {v0}, LEc/h$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "wxz"

    const-string v2, "VectorWXZ"

    const-string v3, "Vector WXZ"

    invoke-direct {p0, v2, v3, v0, v1}, LCc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Ljava/lang/String;)V

    return-void
.end method
