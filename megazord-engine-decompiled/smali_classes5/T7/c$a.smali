.class public final enum LT7/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LT7/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LT7/c$a;

.field public static final enum Error:LT7/c$a;

.field public static final enum Success:LT7/c$a;

.field public static final enum Unknown:LT7/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT7/c$a;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LT7/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT7/c$a;->Success:LT7/c$a;

    new-instance v0, LT7/c$a;

    const-string v1, "Error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LT7/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT7/c$a;->Error:LT7/c$a;

    new-instance v0, LT7/c$a;

    const-string v1, "Unknown"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LT7/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT7/c$a;->Unknown:LT7/c$a;

    invoke-static {}, LT7/c$a;->a()[LT7/c$a;

    move-result-object v0

    sput-object v0, LT7/c$a;->$VALUES:[LT7/c$a;

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

.method public static synthetic a()[LT7/c$a;
    .locals 3

    sget-object v0, LT7/c$a;->Success:LT7/c$a;

    sget-object v1, LT7/c$a;->Error:LT7/c$a;

    sget-object v2, LT7/c$a;->Unknown:LT7/c$a;

    filled-new-array {v0, v1, v2}, [LT7/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LT7/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LT7/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT7/c$a;

    return-object p0
.end method

.method public static values()[LT7/c$a;
    .locals 1

    sget-object v0, LT7/c$a;->$VALUES:[LT7/c$a;

    invoke-virtual {v0}, [LT7/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT7/c$a;

    return-object v0
.end method
