.class public final enum LIi/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LIi/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LIi/n;

.field public static final enum EDGE_CLIMB_DOWN:LIi/n;

.field public static final enum EDGE_JUMP:LIi/n;

.field public static final enum EDGE_JUMP_OVER:LIi/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIi/n;

    const-string v1, "EDGE_JUMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LIi/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/n;->EDGE_JUMP:LIi/n;

    new-instance v0, LIi/n;

    const-string v1, "EDGE_CLIMB_DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LIi/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/n;->EDGE_CLIMB_DOWN:LIi/n;

    new-instance v0, LIi/n;

    const-string v1, "EDGE_JUMP_OVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LIi/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/n;->EDGE_JUMP_OVER:LIi/n;

    invoke-static {}, LIi/n;->a()[LIi/n;

    move-result-object v0

    sput-object v0, LIi/n;->$VALUES:[LIi/n;

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

.method public static synthetic a()[LIi/n;
    .locals 3

    sget-object v0, LIi/n;->EDGE_JUMP:LIi/n;

    sget-object v1, LIi/n;->EDGE_CLIMB_DOWN:LIi/n;

    sget-object v2, LIi/n;->EDGE_JUMP_OVER:LIi/n;

    filled-new-array {v0, v1, v2}, [LIi/n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LIi/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LIi/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIi/n;

    return-object p0
.end method

.method public static values()[LIi/n;
    .locals 1

    sget-object v0, LIi/n;->$VALUES:[LIi/n;

    invoke-virtual {v0}, [LIi/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIi/n;

    return-object v0
.end method
