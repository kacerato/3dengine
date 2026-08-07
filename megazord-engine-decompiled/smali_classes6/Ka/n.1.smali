.class public final LKa/n;
.super LKa/M;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialHeight"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Height"

    const-string v1, "Textures"

    const-class v2, LKa/n;

    const-string v3, "GetMaterialHeight"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v4, LKa/L;->g:[Ljava/lang/String;

    sget-object v5, LKa/L;->h:[Ljava/lang/String;

    const-string v1, "GetMaterialHeight"

    const-string v2, "Get Material Height"

    const-string v3, "Height"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LKa/M;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
