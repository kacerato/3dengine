.class public final enum LZb/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZb/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LZb/c$a;

.field public static final enum HORIZONTAL_X:LZb/c$a;

.field public static final enum HORIZONTAL_Z:LZb/c$a;

.field public static final enum VERTICAL:LZb/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZb/c$a;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZb/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/c$a;->VERTICAL:LZb/c$a;

    new-instance v0, LZb/c$a;

    const-string v1, "HORIZONTAL_X"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LZb/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/c$a;->HORIZONTAL_X:LZb/c$a;

    new-instance v0, LZb/c$a;

    const-string v1, "HORIZONTAL_Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LZb/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/c$a;->HORIZONTAL_Z:LZb/c$a;

    invoke-static {}, LZb/c$a;->a()[LZb/c$a;

    move-result-object v0

    sput-object v0, LZb/c$a;->$VALUES:[LZb/c$a;

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

.method public static synthetic a()[LZb/c$a;
    .locals 3

    sget-object v0, LZb/c$a;->VERTICAL:LZb/c$a;

    sget-object v1, LZb/c$a;->HORIZONTAL_X:LZb/c$a;

    sget-object v2, LZb/c$a;->HORIZONTAL_Z:LZb/c$a;

    filled-new-array {v0, v1, v2}, [LZb/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LZb/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LZb/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZb/c$a;

    return-object p0
.end method

.method public static values()[LZb/c$a;
    .locals 1

    sget-object v0, LZb/c$a;->$VALUES:[LZb/c$a;

    invoke-virtual {v0}, [LZb/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZb/c$a;

    return-object v0
.end method
