.class public final enum LY2/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime LY2/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LY2/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LY2/r;

.field public static final enum APPEND:LY2/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LY2/r;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LY2/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY2/r;->APPEND:LY2/r;

    invoke-static {}, LY2/r;->a()[LY2/r;

    move-result-object v0

    sput-object v0, LY2/r;->$VALUES:[LY2/r;

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

.method public static synthetic a()[LY2/r;
    .locals 1

    sget-object v0, LY2/r;->APPEND:LY2/r;

    filled-new-array {v0}, [LY2/r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LY2/r;
    .locals 1

    const-class v0, LY2/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY2/r;

    return-object p0
.end method

.method public static values()[LY2/r;
    .locals 1

    sget-object v0, LY2/r;->$VALUES:[LY2/r;

    invoke-virtual {v0}, [LY2/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY2/r;

    return-object v0
.end method
