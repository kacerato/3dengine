.class public final LKa/i0;
.super LKa/I;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialRoughnessFallback"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Roughness value"

    const-string v1, "Numbers"

    const-class v2, LKa/i0;

    const-string v3, "SetMaterialRoughnessFallback"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ROUGHNESS_VALUE:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, LKa/G;->f:[Ljava/lang/String;

    sget-object v8, LKa/G;->g:[Ljava/lang/String;

    const-string v2, "SetMaterialRoughnessFallback"

    const-string v3, "Set Material Roughness value"

    const-string v4, "Roughness value"

    const-string v6, "0.6"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LKa/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
