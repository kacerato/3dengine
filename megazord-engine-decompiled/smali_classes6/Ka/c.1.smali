.class public final LKa/c;
.super LKa/M;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialAlbedo"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Albedo"

    const-string v1, "Textures"

    const-class v2, LKa/c;

    const-string v3, "GetMaterialAlbedo"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v4, LKa/L;->a:[Ljava/lang/String;

    sget-object v5, LKa/L;->b:[Ljava/lang/String;

    const-string v1, "GetMaterialAlbedo"

    const-string v2, "Get Material Albedo"

    const-string v3, "Albedo"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LKa/M;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
