.class public final LKa/a0;
.super LKa/N;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialEmissive"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Emissive"

    const-string v1, "Textures"

    const-class v2, LKa/a0;

    const-string v3, "SetMaterialEmissive"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_EMISSIVE:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LKa/L;->m:[Ljava/lang/String;

    sget-object v7, LKa/L;->n:[Ljava/lang/String;

    const-string v2, "SetMaterialEmissive"

    const-string v3, "Set Material Emissive"

    const-string v4, "Emissive"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LKa/N;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
