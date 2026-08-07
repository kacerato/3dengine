.class public final LKa/e0;
.super LKa/N;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialLightMap"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Light Map"

    const-string v1, "Textures"

    const-class v2, LKa/e0;

    const-string v3, "SetMaterialLightMap"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_LIGHT_MAP:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LKa/L;->i:[Ljava/lang/String;

    sget-object v7, LKa/L;->j:[Ljava/lang/String;

    const-string v2, "SetMaterialLightMap"

    const-string v3, "Set Material Light Map"

    const-string v4, "Light Map"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LKa/N;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
