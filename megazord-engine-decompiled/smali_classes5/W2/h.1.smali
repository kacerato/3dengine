.class public abstract enum LW2/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LW2/g$c;


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW2/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LW2/h;",
        ">;",
        "LW2/g$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LW2/h;

.field public static final enum MURMUR128_MITZ_32:LW2/h;

.field public static final enum MURMUR128_MITZ_64:LW2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW2/h$a;

    const-string v1, "MURMUR128_MITZ_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LW2/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW2/h;->MURMUR128_MITZ_32:LW2/h;

    new-instance v0, LW2/h$b;

    const-string v1, "MURMUR128_MITZ_64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LW2/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW2/h;->MURMUR128_MITZ_64:LW2/h;

    invoke-static {}, LW2/h;->a()[LW2/h;

    move-result-object v0

    sput-object v0, LW2/h;->$VALUES:[LW2/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILW2/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LW2/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LW2/h;
    .locals 2

    sget-object v0, LW2/h;->MURMUR128_MITZ_32:LW2/h;

    sget-object v1, LW2/h;->MURMUR128_MITZ_64:LW2/h;

    filled-new-array {v0, v1}, [LW2/h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LW2/h;
    .locals 1

    const-class v0, LW2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/h;

    return-object p0
.end method

.method public static values()[LW2/h;
    .locals 1

    sget-object v0, LW2/h;->$VALUES:[LW2/h;

    invoke-virtual {v0}, [LW2/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/h;

    return-object v0
.end method
