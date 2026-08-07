.class public final LKa/t;
.super LKa/H;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialRoughnessFallback"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Roughness value"

    const-string v1, "Numbers"

    const-class v2, LKa/t;

    const-string v3, "GetMaterialRoughnessFallback"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v4, LKa/G;->f:[Ljava/lang/String;

    sget-object v5, LKa/G;->g:[Ljava/lang/String;

    const-string v1, "GetMaterialRoughnessFallback"

    const-string v2, "Get Material Roughness value"

    const-string v3, "Roughness value"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LKa/H;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
