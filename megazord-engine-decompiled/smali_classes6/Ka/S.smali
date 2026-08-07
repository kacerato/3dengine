.class public final LKa/S;
.super LKa/N;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialAoMap"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material AO Map"

    const-string v1, "Textures"

    const-class v2, LKa/S;

    const-string v3, "SetMaterialAoMap"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_AO_MAP:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LKa/L;->i:[Ljava/lang/String;

    sget-object v7, LKa/L;->j:[Ljava/lang/String;

    const-string v2, "SetMaterialAoMap"

    const-string v3, "Set Material AO Map"

    const-string v4, "AO Map"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LKa/N;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
