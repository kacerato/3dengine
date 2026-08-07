.class public Lqb/f;
.super Lob/a;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "VectorWXX"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqb/f$a;

    invoke-direct {v0}, Lqb/f$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lya/H;->FLOAT3:Lya/H;

    const-string v1, "wxx"

    const-string v2, "VectorWXX"

    const-string v3, "Vector WXX"

    invoke-direct {p0, v2, v3, v0, v1}, Lob/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lya/H;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_VECTOR_WXX:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
