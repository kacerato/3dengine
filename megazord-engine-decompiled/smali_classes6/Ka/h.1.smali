.class public final LKa/h;
.super LKa/A;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialDoubleSided"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Double Sided"

    const-string v1, "Others"

    const-class v2, LKa/h;

    const-string v3, "GetMaterialDoubleSided"

    invoke-static {v2, v3, v0, v1}, LKa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v3, "Double Sided"

    sget-object v5, LKa/z;->b:[Ljava/lang/String;

    const-string v1, "GetMaterialDoubleSided"

    const-string v2, "Get Material Double Sided"

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, LKa/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
