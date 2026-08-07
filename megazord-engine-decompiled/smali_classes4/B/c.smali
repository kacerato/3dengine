.class public final enum LB/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB/c;

.field public static final enum NONE:LB/c;

.field public static final enum SOURCE:LB/c;

.field public static final enum TRANSFORMED:LB/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LB/c;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/c;->SOURCE:LB/c;

    new-instance v1, LB/c;

    const-string v2, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LB/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/c;->TRANSFORMED:LB/c;

    new-instance v2, LB/c;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LB/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB/c;->NONE:LB/c;

    filled-new-array {v0, v1, v2}, [LB/c;

    move-result-object v0

    sput-object v0, LB/c;->$VALUES:[LB/c;

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

.method public static valueOf(Ljava/lang/String;)LB/c;
    .locals 1

    const-class v0, LB/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/c;

    return-object p0
.end method

.method public static values()[LB/c;
    .locals 1

    sget-object v0, LB/c;->$VALUES:[LB/c;

    invoke-virtual {v0}, [LB/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/c;

    return-object v0
.end method
