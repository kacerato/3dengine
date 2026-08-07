.class public final enum Lpf/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LXe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpf/a;",
        ">;",
        "LXe/c<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "Lpf/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpf/a;

.field public static final enum ERROR:Lpf/a;

.field public static final enum RETRY:Lpf/a;

.field public static final enum SKIP:Lpf/a;

.field public static final enum STOP:Lpf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lpf/a;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpf/a;->STOP:Lpf/a;

    new-instance v1, Lpf/a;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lpf/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpf/a;->ERROR:Lpf/a;

    new-instance v2, Lpf/a;

    const-string v3, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lpf/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lpf/a;->SKIP:Lpf/a;

    new-instance v3, Lpf/a;

    const-string v4, "RETRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lpf/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpf/a;->RETRY:Lpf/a;

    filled-new-array {v0, v1, v2, v3}, [Lpf/a;

    move-result-object v0

    sput-object v0, Lpf/a;->$VALUES:[Lpf/a;

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

.method public static valueOf(Ljava/lang/String;)Lpf/a;
    .locals 1

    const-class v0, Lpf/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpf/a;

    return-object p0
.end method

.method public static values()[Lpf/a;
    .locals 1

    sget-object v0, Lpf/a;->$VALUES:[Lpf/a;

    invoke-virtual {v0}, [Lpf/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpf/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Throwable;)Lpf/a;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lpf/a;->a(Ljava/lang/Long;Ljava/lang/Throwable;)Lpf/a;

    move-result-object p1

    return-object p1
.end method
