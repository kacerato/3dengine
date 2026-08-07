.class public final enum Lo5/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo5/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo5/a$a;

.field public static final enum HIDE:Lo5/a$a;

.field public static final enum IGNORE:Lo5/a$a;

.field public static final enum SHOW:Lo5/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo5/a$a;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo5/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/a$a;->IGNORE:Lo5/a$a;

    new-instance v0, Lo5/a$a;

    const-string v1, "HIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo5/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/a$a;->HIDE:Lo5/a$a;

    new-instance v0, Lo5/a$a;

    const-string v1, "SHOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo5/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/a$a;->SHOW:Lo5/a$a;

    invoke-static {}, Lo5/a$a;->a()[Lo5/a$a;

    move-result-object v0

    sput-object v0, Lo5/a$a;->$VALUES:[Lo5/a$a;

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

.method public static synthetic a()[Lo5/a$a;
    .locals 3

    sget-object v0, Lo5/a$a;->IGNORE:Lo5/a$a;

    sget-object v1, Lo5/a$a;->HIDE:Lo5/a$a;

    sget-object v2, Lo5/a$a;->SHOW:Lo5/a$a;

    filled-new-array {v0, v1, v2}, [Lo5/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo5/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lo5/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo5/a$a;

    return-object p0
.end method

.method public static values()[Lo5/a$a;
    .locals 1

    sget-object v0, Lo5/a$a;->$VALUES:[Lo5/a$a;

    invoke-virtual {v0}, [Lo5/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo5/a$a;

    return-object v0
.end method
