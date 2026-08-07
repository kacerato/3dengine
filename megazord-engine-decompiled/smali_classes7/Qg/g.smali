.class public final enum LQg/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LQg/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LQg/g;

.field public static final enum AES_ENCRYPTED:LQg/g;

.field public static final enum DEFAULT:LQg/g;

.field public static final enum DEFLATE_COMPRESSED:LQg/g;

.field public static final enum ZIP_64_FORMAT:LQg/g;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LQg/g;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, LQg/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, LQg/g;->DEFAULT:LQg/g;

    new-instance v1, LQg/g;

    const/4 v2, 0x1

    const/16 v3, 0x14

    const-string v4, "DEFLATE_COMPRESSED"

    invoke-direct {v1, v4, v2, v3}, LQg/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, LQg/g;->DEFLATE_COMPRESSED:LQg/g;

    new-instance v2, LQg/g;

    const/4 v3, 0x2

    const/16 v4, 0x2d

    const-string v5, "ZIP_64_FORMAT"

    invoke-direct {v2, v5, v3, v4}, LQg/g;-><init>(Ljava/lang/String;II)V

    sput-object v2, LQg/g;->ZIP_64_FORMAT:LQg/g;

    new-instance v3, LQg/g;

    const/4 v4, 0x3

    const/16 v5, 0x33

    const-string v6, "AES_ENCRYPTED"

    invoke-direct {v3, v6, v4, v5}, LQg/g;-><init>(Ljava/lang/String;II)V

    sput-object v3, LQg/g;->AES_ENCRYPTED:LQg/g;

    filled-new-array {v0, v1, v2, v3}, [LQg/g;

    move-result-object v0

    sput-object v0, LQg/g;->$VALUES:[LQg/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LQg/g;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQg/g;
    .locals 1

    const-class v0, LQg/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQg/g;

    return-object p0
.end method

.method public static values()[LQg/g;
    .locals 1

    sget-object v0, LQg/g;->$VALUES:[LQg/g;

    invoke-virtual {v0}, [LQg/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQg/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LQg/g;->code:I

    return v0
.end method
