.class public final enum LGg/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LGg/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LGg/a$d;

.field public static final enum BLOCKING:LGg/a$d;

.field public static final enum CPU_ACQUIRED:LGg/a$d;

.field public static final enum DORMANT:LGg/a$d;

.field public static final enum PARKING:LGg/a$d;

.field public static final enum TERMINATED:LGg/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LGg/a$d;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LGg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGg/a$d;->CPU_ACQUIRED:LGg/a$d;

    new-instance v0, LGg/a$d;

    const-string v1, "BLOCKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LGg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGg/a$d;->BLOCKING:LGg/a$d;

    new-instance v0, LGg/a$d;

    const-string v1, "PARKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LGg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGg/a$d;->PARKING:LGg/a$d;

    new-instance v0, LGg/a$d;

    const-string v1, "DORMANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LGg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGg/a$d;->DORMANT:LGg/a$d;

    new-instance v0, LGg/a$d;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LGg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGg/a$d;->TERMINATED:LGg/a$d;

    invoke-static {}, LGg/a$d;->a()[LGg/a$d;

    move-result-object v0

    sput-object v0, LGg/a$d;->$VALUES:[LGg/a$d;

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

.method public static final synthetic a()[LGg/a$d;
    .locals 5

    sget-object v0, LGg/a$d;->CPU_ACQUIRED:LGg/a$d;

    sget-object v1, LGg/a$d;->BLOCKING:LGg/a$d;

    sget-object v2, LGg/a$d;->PARKING:LGg/a$d;

    sget-object v3, LGg/a$d;->DORMANT:LGg/a$d;

    sget-object v4, LGg/a$d;->TERMINATED:LGg/a$d;

    filled-new-array {v0, v1, v2, v3, v4}, [LGg/a$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LGg/a$d;
    .locals 1

    const-class v0, LGg/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGg/a$d;

    return-object p0
.end method

.method public static values()[LGg/a$d;
    .locals 1

    sget-object v0, LGg/a$d;->$VALUES:[LGg/a$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGg/a$d;

    return-object v0
.end method
