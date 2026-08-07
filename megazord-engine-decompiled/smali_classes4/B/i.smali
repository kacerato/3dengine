.class public final enum LB/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB/i;

.field public static final enum DISPLAY_P3:LB/i;

.field public static final enum SRGB:LB/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB/i;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/i;->SRGB:LB/i;

    new-instance v1, LB/i;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LB/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/i;->DISPLAY_P3:LB/i;

    filled-new-array {v0, v1}, [LB/i;

    move-result-object v0

    sput-object v0, LB/i;->$VALUES:[LB/i;

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

.method public static valueOf(Ljava/lang/String;)LB/i;
    .locals 1

    const-class v0, LB/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/i;

    return-object p0
.end method

.method public static values()[LB/i;
    .locals 1

    sget-object v0, LB/i;->$VALUES:[LB/i;

    invoke-virtual {v0}, [LB/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/i;

    return-object v0
.end method
