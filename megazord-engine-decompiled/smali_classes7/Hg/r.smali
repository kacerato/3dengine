.class public final enum LHg/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHg/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHg/r;

.field public static final enum ALREADY_SELECTED:LHg/r;

.field public static final enum CANCELLED:LHg/r;

.field public static final enum REREGISTER:LHg/r;

.field public static final enum SUCCESSFUL:LHg/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHg/r;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHg/r;->SUCCESSFUL:LHg/r;

    new-instance v0, LHg/r;

    const-string v1, "REREGISTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHg/r;->REREGISTER:LHg/r;

    new-instance v0, LHg/r;

    const-string v1, "CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LHg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHg/r;->CANCELLED:LHg/r;

    new-instance v0, LHg/r;

    const-string v1, "ALREADY_SELECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LHg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHg/r;->ALREADY_SELECTED:LHg/r;

    invoke-static {}, LHg/r;->a()[LHg/r;

    move-result-object v0

    sput-object v0, LHg/r;->$VALUES:[LHg/r;

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

.method public static final synthetic a()[LHg/r;
    .locals 4

    sget-object v0, LHg/r;->SUCCESSFUL:LHg/r;

    sget-object v1, LHg/r;->REREGISTER:LHg/r;

    sget-object v2, LHg/r;->CANCELLED:LHg/r;

    sget-object v3, LHg/r;->ALREADY_SELECTED:LHg/r;

    filled-new-array {v0, v1, v2, v3}, [LHg/r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHg/r;
    .locals 1

    const-class v0, LHg/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHg/r;

    return-object p0
.end method

.method public static values()[LHg/r;
    .locals 1

    sget-object v0, LHg/r;->$VALUES:[LHg/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHg/r;

    return-object v0
.end method
