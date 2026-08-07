.class public final enum LQg/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LQg/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LQg/f;

.field public static final enum SPECIFICATION_VERSION:LQg/f;

.field public static final enum UNIX:LQg/f;

.field public static final enum WINDOWS:LQg/f;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LQg/f;

    const/16 v1, 0x33

    const-string v2, "SPECIFICATION_VERSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LQg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, LQg/f;->SPECIFICATION_VERSION:LQg/f;

    new-instance v1, LQg/f;

    const-string v2, "WINDOWS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, LQg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v1, LQg/f;->WINDOWS:LQg/f;

    new-instance v2, LQg/f;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "UNIX"

    invoke-direct {v2, v5, v3, v4}, LQg/f;-><init>(Ljava/lang/String;IB)V

    sput-object v2, LQg/f;->UNIX:LQg/f;

    filled-new-array {v0, v1, v2}, [LQg/f;

    move-result-object v0

    sput-object v0, LQg/f;->$VALUES:[LQg/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, LQg/f;->code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQg/f;
    .locals 1

    const-class v0, LQg/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQg/f;

    return-object p0
.end method

.method public static values()[LQg/f;
    .locals 1

    sget-object v0, LQg/f;->$VALUES:[LQg/f;

    invoke-virtual {v0}, [LQg/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQg/f;

    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, LQg/f;->code:B

    return v0
.end method
