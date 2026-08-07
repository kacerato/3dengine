.class public final enum LB/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB/a;

.field public static final enum DATA_DISK_CACHE:LB/a;

.field public static final enum LOCAL:LB/a;

.field public static final enum MEMORY_CACHE:LB/a;

.field public static final enum REMOTE:LB/a;

.field public static final enum RESOURCE_DISK_CACHE:LB/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LB/a;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/a;->LOCAL:LB/a;

    new-instance v1, LB/a;

    const-string v2, "REMOTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LB/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/a;->REMOTE:LB/a;

    new-instance v2, LB/a;

    const-string v3, "DATA_DISK_CACHE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LB/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB/a;->DATA_DISK_CACHE:LB/a;

    new-instance v3, LB/a;

    const-string v4, "RESOURCE_DISK_CACHE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LB/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LB/a;->RESOURCE_DISK_CACHE:LB/a;

    new-instance v4, LB/a;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LB/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LB/a;->MEMORY_CACHE:LB/a;

    filled-new-array {v0, v1, v2, v3, v4}, [LB/a;

    move-result-object v0

    sput-object v0, LB/a;->$VALUES:[LB/a;

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

.method public static valueOf(Ljava/lang/String;)LB/a;
    .locals 1

    const-class v0, LB/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/a;

    return-object p0
.end method

.method public static values()[LB/a;
    .locals 1

    sget-object v0, LB/a;->$VALUES:[LB/a;

    invoke-virtual {v0}, [LB/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/a;

    return-object v0
.end method
