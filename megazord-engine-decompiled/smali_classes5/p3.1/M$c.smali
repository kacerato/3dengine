.class public final enum Lp3/M$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp3/M$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lp3/M$c;

.field public static final enum IDLE:Lp3/M$c;

.field public static final enum QUEUED:Lp3/M$c;

.field public static final enum QUEUING:Lp3/M$c;

.field public static final enum RUNNING:Lp3/M$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp3/M$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp3/M$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp3/M$c;->IDLE:Lp3/M$c;

    new-instance v0, Lp3/M$c;

    const-string v1, "QUEUING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lp3/M$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp3/M$c;->QUEUING:Lp3/M$c;

    new-instance v0, Lp3/M$c;

    const-string v1, "QUEUED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lp3/M$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp3/M$c;->QUEUED:Lp3/M$c;

    new-instance v0, Lp3/M$c;

    const-string v1, "RUNNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lp3/M$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp3/M$c;->RUNNING:Lp3/M$c;

    invoke-static {}, Lp3/M$c;->a()[Lp3/M$c;

    move-result-object v0

    sput-object v0, Lp3/M$c;->$VALUES:[Lp3/M$c;

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

.method public static synthetic a()[Lp3/M$c;
    .locals 4

    sget-object v0, Lp3/M$c;->IDLE:Lp3/M$c;

    sget-object v1, Lp3/M$c;->QUEUING:Lp3/M$c;

    sget-object v2, Lp3/M$c;->QUEUED:Lp3/M$c;

    sget-object v3, Lp3/M$c;->RUNNING:Lp3/M$c;

    filled-new-array {v0, v1, v2, v3}, [Lp3/M$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lp3/M$c;
    .locals 1

    const-class v0, Lp3/M$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/M$c;

    return-object p0
.end method

.method public static values()[Lp3/M$c;
    .locals 1

    sget-object v0, Lp3/M$c;->$VALUES:[Lp3/M$c;

    invoke-virtual {v0}, [Lp3/M$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/M$c;

    return-object v0
.end method
