.class public final enum Lyg/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyg/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyg/i;

.field public static final enum DROP_LATEST:Lyg/i;

.field public static final enum DROP_OLDEST:Lyg/i;

.field public static final enum SUSPEND:Lyg/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyg/i;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyg/i;->SUSPEND:Lyg/i;

    new-instance v0, Lyg/i;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lyg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyg/i;->DROP_OLDEST:Lyg/i;

    new-instance v0, Lyg/i;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lyg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyg/i;->DROP_LATEST:Lyg/i;

    invoke-static {}, Lyg/i;->a()[Lyg/i;

    move-result-object v0

    sput-object v0, Lyg/i;->$VALUES:[Lyg/i;

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

.method public static final synthetic a()[Lyg/i;
    .locals 3

    sget-object v0, Lyg/i;->SUSPEND:Lyg/i;

    sget-object v1, Lyg/i;->DROP_OLDEST:Lyg/i;

    sget-object v2, Lyg/i;->DROP_LATEST:Lyg/i;

    filled-new-array {v0, v1, v2}, [Lyg/i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyg/i;
    .locals 1

    const-class v0, Lyg/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyg/i;

    return-object p0
.end method

.method public static values()[Lyg/i;
    .locals 1

    sget-object v0, Lyg/i;->$VALUES:[Lyg/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyg/i;

    return-object v0
.end method
