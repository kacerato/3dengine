.class public final enum LJc/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJc/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJc/f;

.field public static final enum POSITION:LJc/f;

.field public static final enum SCALE:LJc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJc/f;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJc/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJc/f;->POSITION:LJc/f;

    new-instance v0, LJc/f;

    const-string v1, "SCALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJc/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJc/f;->SCALE:LJc/f;

    invoke-static {}, LJc/f;->a()[LJc/f;

    move-result-object v0

    sput-object v0, LJc/f;->$VALUES:[LJc/f;

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

.method public static synthetic a()[LJc/f;
    .locals 2

    sget-object v0, LJc/f;->POSITION:LJc/f;

    sget-object v1, LJc/f;->SCALE:LJc/f;

    filled-new-array {v0, v1}, [LJc/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LJc/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJc/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJc/f;

    return-object p0
.end method

.method public static values()[LJc/f;
    .locals 1

    sget-object v0, LJc/f;->$VALUES:[LJc/f;

    invoke-virtual {v0}, [LJc/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJc/f;

    return-object v0
.end method
