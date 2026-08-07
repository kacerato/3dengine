.class public final enum LAf/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LAf/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LAf/h;

.field public static final enum Disabled:LAf/h;

.field public static final enum Enabled:LAf/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LAf/h;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LAf/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/h;->Disabled:LAf/h;

    new-instance v0, LAf/h;

    const-string v1, "Enabled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LAf/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/h;->Enabled:LAf/h;

    invoke-static {}, LAf/h;->a()[LAf/h;

    move-result-object v0

    sput-object v0, LAf/h;->$VALUES:[LAf/h;

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
            null,
            null
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

.method public static synthetic a()[LAf/h;
    .locals 2

    sget-object v0, LAf/h;->Disabled:LAf/h;

    sget-object v1, LAf/h;->Enabled:LAf/h;

    filled-new-array {v0, v1}, [LAf/h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LAf/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, LAf/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAf/h;

    return-object p0
.end method

.method public static values()[LAf/h;
    .locals 1

    sget-object v0, LAf/h;->$VALUES:[LAf/h;

    invoke-virtual {v0}, [LAf/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAf/h;

    return-object v0
.end method
