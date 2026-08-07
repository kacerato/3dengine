.class public Llb/k;
.super LXa/e;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "DiscardDecimals"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llb/k$a;

    invoke-direct {v0}, Llb/k$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Discard Decimals"

    invoke-direct {p0, v0}, LXa/e;-><init>(Ljava/lang/String;)V

    const-string v0, "DiscardDecimals"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    float-to-int p1, p1

    int-to-float p1, p1

    return p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_DISCARD_DECIMALS:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
