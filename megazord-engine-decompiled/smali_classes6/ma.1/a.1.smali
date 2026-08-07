.class public final enum Lma/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lma/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lma/a;

.field public static final enum BL:Lma/a;

.field public static final enum BR:Lma/a;

.field public static final enum TL:Lma/a;

.field public static final enum TR:Lma/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lma/a;

    const-string v1, "TL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lma/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/a;->TL:Lma/a;

    new-instance v0, Lma/a;

    const-string v1, "TR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lma/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/a;->TR:Lma/a;

    new-instance v0, Lma/a;

    const-string v1, "BR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lma/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/a;->BR:Lma/a;

    new-instance v0, Lma/a;

    const-string v1, "BL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lma/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/a;->BL:Lma/a;

    invoke-static {}, Lma/a;->a()[Lma/a;

    move-result-object v0

    sput-object v0, Lma/a;->$VALUES:[Lma/a;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static synthetic a()[Lma/a;
    .locals 4

    sget-object v0, Lma/a;->TL:Lma/a;

    sget-object v1, Lma/a;->TR:Lma/a;

    sget-object v2, Lma/a;->BR:Lma/a;

    sget-object v3, Lma/a;->BL:Lma/a;

    filled-new-array {v0, v1, v2, v3}, [Lma/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lma/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lma/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lma/a;

    return-object p0
.end method

.method public static values()[Lma/a;
    .locals 1

    sget-object v0, Lma/a;->$VALUES:[Lma/a;

    invoke-virtual {v0}, [Lma/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lma/a;

    return-object v0
.end method
