.class public final enum LUg/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LUg/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LUg/e;

.field public static final enum AES:LUg/e;

.field public static final enum NONE:LUg/e;

.field public static final enum ZIP_STANDARD:LUg/e;

.field public static final enum ZIP_STANDARD_VARIANT_STRONG:LUg/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LUg/e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LUg/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUg/e;->NONE:LUg/e;

    new-instance v1, LUg/e;

    const-string v2, "ZIP_STANDARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LUg/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, LUg/e;->ZIP_STANDARD:LUg/e;

    new-instance v2, LUg/e;

    const-string v3, "ZIP_STANDARD_VARIANT_STRONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LUg/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, LUg/e;->ZIP_STANDARD_VARIANT_STRONG:LUg/e;

    new-instance v3, LUg/e;

    const-string v4, "AES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LUg/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, LUg/e;->AES:LUg/e;

    filled-new-array {v0, v1, v2, v3}, [LUg/e;

    move-result-object v0

    sput-object v0, LUg/e;->$VALUES:[LUg/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LUg/e;
    .locals 1

    const-class v0, LUg/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LUg/e;

    return-object p0
.end method

.method public static values()[LUg/e;
    .locals 1

    sget-object v0, LUg/e;->$VALUES:[LUg/e;

    invoke-virtual {v0}, [LUg/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUg/e;

    return-object v0
.end method
