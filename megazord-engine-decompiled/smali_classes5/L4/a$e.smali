.class public final enum LL4/a$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LL4/a$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LL4/a$e;

.field public static final enum Above:LL4/a$e;

.field public static final enum Below:LL4/a$e;

.field public static final enum Left:LL4/a$e;

.field public static final enum Right:LL4/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LL4/a$e;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LL4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL4/a$e;->Left:LL4/a$e;

    new-instance v0, LL4/a$e;

    const-string v1, "Above"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LL4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL4/a$e;->Above:LL4/a$e;

    new-instance v0, LL4/a$e;

    const-string v1, "Below"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LL4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL4/a$e;->Below:LL4/a$e;

    new-instance v0, LL4/a$e;

    const-string v1, "Right"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LL4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL4/a$e;->Right:LL4/a$e;

    invoke-static {}, LL4/a$e;->a()[LL4/a$e;

    move-result-object v0

    sput-object v0, LL4/a$e;->$VALUES:[LL4/a$e;

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

.method public static synthetic a()[LL4/a$e;
    .locals 4

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    sget-object v1, LL4/a$e;->Above:LL4/a$e;

    sget-object v2, LL4/a$e;->Below:LL4/a$e;

    sget-object v3, LL4/a$e;->Right:LL4/a$e;

    filled-new-array {v0, v1, v2, v3}, [LL4/a$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LL4/a$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LL4/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LL4/a$e;

    return-object p0
.end method

.method public static values()[LL4/a$e;
    .locals 1

    sget-object v0, LL4/a$e;->$VALUES:[LL4/a$e;

    invoke-virtual {v0}, [LL4/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LL4/a$e;

    return-object v0
.end method
