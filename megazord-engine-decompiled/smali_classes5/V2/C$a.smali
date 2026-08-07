.class public final enum LV2/C$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LV2/C$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LV2/C$a;

.field public static final enum EDGE_EXISTS:LV2/C$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LV2/C$a;

    const-string v1, "EDGE_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LV2/C$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LV2/C$a;->EDGE_EXISTS:LV2/C$a;

    invoke-static {}, LV2/C$a;->a()[LV2/C$a;

    move-result-object v0

    sput-object v0, LV2/C$a;->$VALUES:[LV2/C$a;

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

.method public static synthetic a()[LV2/C$a;
    .locals 1

    sget-object v0, LV2/C$a;->EDGE_EXISTS:LV2/C$a;

    filled-new-array {v0}, [LV2/C$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LV2/C$a;
    .locals 1

    const-class v0, LV2/C$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LV2/C$a;

    return-object p0
.end method

.method public static values()[LV2/C$a;
    .locals 1

    sget-object v0, LV2/C$a;->$VALUES:[LV2/C$a;

    invoke-virtual {v0}, [LV2/C$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV2/C$a;

    return-object v0
.end method
