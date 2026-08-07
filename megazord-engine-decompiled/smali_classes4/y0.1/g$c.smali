.class public final enum Ly0/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly0/g$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ly0/g$c;

.field public static final enum DEVICE_CHARGING:Ly0/g$c;

.field public static final enum DEVICE_IDLE:Ly0/g$c;

.field public static final enum NETWORK_UNMETERED:Ly0/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ly0/g$c;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly0/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/g$c;->NETWORK_UNMETERED:Ly0/g$c;

    new-instance v1, Ly0/g$c;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ly0/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly0/g$c;->DEVICE_IDLE:Ly0/g$c;

    new-instance v2, Ly0/g$c;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ly0/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly0/g$c;->DEVICE_CHARGING:Ly0/g$c;

    filled-new-array {v0, v1, v2}, [Ly0/g$c;

    move-result-object v0

    sput-object v0, Ly0/g$c;->$VALUES:[Ly0/g$c;

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

.method public static valueOf(Ljava/lang/String;)Ly0/g$c;
    .locals 1

    const-class v0, Ly0/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly0/g$c;

    return-object p0
.end method

.method public static values()[Ly0/g$c;
    .locals 1

    sget-object v0, Ly0/g$c;->$VALUES:[Ly0/g$c;

    invoke-virtual {v0}, [Ly0/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly0/g$c;

    return-object v0
.end method
