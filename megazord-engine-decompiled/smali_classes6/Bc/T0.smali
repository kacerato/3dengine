.class public LBc/T0;
.super LBc/f1;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "Pow"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LBc/T0$a;

    invoke-direct {v0}, LBc/T0$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "pow"

    const-string v1, "Pow"

    invoke-direct {p0, v1, v0}, LBc/f1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method
