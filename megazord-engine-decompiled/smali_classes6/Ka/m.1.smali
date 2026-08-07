.class public final LKa/m;
.super LKa/H;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialHeightIntensity"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Height Intensity"

    const-string v1, "Numbers"

    const-class v2, LKa/m;

    const-string v3, "GetMaterialHeightIntensity"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v3, "Height Intensity"

    sget-object v5, LKa/G;->b:[Ljava/lang/String;

    const-string v1, "GetMaterialHeightIntensity"

    const-string v2, "Get Material Height Intensity"

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, LKa/H;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
