.class public final enum LVd/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LVd/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LVd/a$c;

.field public static final enum HTML_5_PLAYER:LVd/a$c;

.field public static final enum INVALID_PARAMETER_IN_REQUEST:LVd/a$c;

.field public static final enum UNKNOWN:LVd/a$c;

.field public static final enum VIDEO_NOT_FOUND:LVd/a$c;

.field public static final enum VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LVd/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LVd/a$c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LVd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVd/a$c;->UNKNOWN:LVd/a$c;

    new-instance v1, LVd/a$c;

    const-string v2, "INVALID_PARAMETER_IN_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LVd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, LVd/a$c;->INVALID_PARAMETER_IN_REQUEST:LVd/a$c;

    new-instance v2, LVd/a$c;

    const-string v3, "HTML_5_PLAYER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LVd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, LVd/a$c;->HTML_5_PLAYER:LVd/a$c;

    new-instance v3, LVd/a$c;

    const-string v4, "VIDEO_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LVd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, LVd/a$c;->VIDEO_NOT_FOUND:LVd/a$c;

    new-instance v4, LVd/a$c;

    const-string v5, "VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LVd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, LVd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LVd/a$c;

    filled-new-array {v0, v1, v2, v3, v4}, [LVd/a$c;

    move-result-object v0

    sput-object v0, LVd/a$c;->$VALUES:[LVd/a$c;

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

.method public static valueOf(Ljava/lang/String;)LVd/a$c;
    .locals 1

    const-class v0, LVd/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVd/a$c;

    return-object p0
.end method

.method public static values()[LVd/a$c;
    .locals 1

    sget-object v0, LVd/a$c;->$VALUES:[LVd/a$c;

    invoke-virtual {v0}, [LVd/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVd/a$c;

    return-object v0
.end method
