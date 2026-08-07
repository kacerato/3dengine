.class public final enum Lo6/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo6/a$a;

.field public static final enum DOWNLOADS:Lo6/a$a;

.field public static final enum DOWNLOADS_INVERSE:Lo6/a$a;

.field public static final enum PRICE:Lo6/a$a;

.field public static final enum PRICE_INVERSE:Lo6/a$a;

.field public static final enum PUBLISH_DATE:Lo6/a$a;

.field public static final enum PUBLISH_DATE_INVERSE:Lo6/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo6/a$a;

    const-string v1, "DOWNLOADS_INVERSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->DOWNLOADS_INVERSE:Lo6/a$a;

    new-instance v0, Lo6/a$a;

    const-string v1, "DOWNLOADS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->DOWNLOADS:Lo6/a$a;

    new-instance v0, Lo6/a$a;

    const-string v1, "PRICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->PRICE:Lo6/a$a;

    new-instance v0, Lo6/a$a;

    const-string v1, "PRICE_INVERSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->PRICE_INVERSE:Lo6/a$a;

    new-instance v0, Lo6/a$a;

    const-string v1, "PUBLISH_DATE_INVERSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->PUBLISH_DATE_INVERSE:Lo6/a$a;

    new-instance v0, Lo6/a$a;

    const-string v1, "PUBLISH_DATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lo6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/a$a;->PUBLISH_DATE:Lo6/a$a;

    invoke-static {}, Lo6/a$a;->a()[Lo6/a$a;

    move-result-object v0

    sput-object v0, Lo6/a$a;->$VALUES:[Lo6/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lo6/a$a;
    .locals 6

    sget-object v0, Lo6/a$a;->DOWNLOADS_INVERSE:Lo6/a$a;

    sget-object v1, Lo6/a$a;->DOWNLOADS:Lo6/a$a;

    sget-object v2, Lo6/a$a;->PRICE:Lo6/a$a;

    sget-object v3, Lo6/a$a;->PRICE_INVERSE:Lo6/a$a;

    sget-object v4, Lo6/a$a;->PUBLISH_DATE_INVERSE:Lo6/a$a;

    sget-object v5, Lo6/a$a;->PUBLISH_DATE:Lo6/a$a;

    filled-new-array/range {v0 .. v5}, [Lo6/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo6/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lo6/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/a$a;

    return-object p0
.end method

.method public static values()[Lo6/a$a;
    .locals 1

    sget-object v0, Lo6/a$a;->$VALUES:[Lo6/a$a;

    invoke-virtual {v0}, [Lo6/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/a$a;

    return-object v0
.end method
