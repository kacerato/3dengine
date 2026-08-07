.class public final enum LBg/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBg/M;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBg/M;

.field public static final enum START:LBg/M;

.field public static final enum STOP:LBg/M;

.field public static final enum STOP_AND_RESET_REPLAY_CACHE:LBg/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LBg/M;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBg/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBg/M;->START:LBg/M;

    new-instance v0, LBg/M;

    const-string v1, "STOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LBg/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBg/M;->STOP:LBg/M;

    new-instance v0, LBg/M;

    const-string v1, "STOP_AND_RESET_REPLAY_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LBg/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBg/M;->STOP_AND_RESET_REPLAY_CACHE:LBg/M;

    invoke-static {}, LBg/M;->a()[LBg/M;

    move-result-object v0

    sput-object v0, LBg/M;->$VALUES:[LBg/M;

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

.method public static final synthetic a()[LBg/M;
    .locals 3

    sget-object v0, LBg/M;->START:LBg/M;

    sget-object v1, LBg/M;->STOP:LBg/M;

    sget-object v2, LBg/M;->STOP_AND_RESET_REPLAY_CACHE:LBg/M;

    filled-new-array {v0, v1, v2}, [LBg/M;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LBg/M;
    .locals 1

    const-class v0, LBg/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBg/M;

    return-object p0
.end method

.method public static values()[LBg/M;
    .locals 1

    sget-object v0, LBg/M;->$VALUES:[LBg/M;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBg/M;

    return-object v0
.end method
