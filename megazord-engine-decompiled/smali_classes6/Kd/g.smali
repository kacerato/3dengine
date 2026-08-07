.class public final enum LKd/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LKd/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LKd/g;

.field public static final enum MULTI:LKd/g;

.field public static final enum SINGLE:LKd/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LKd/g;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LKd/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LKd/g;->SINGLE:LKd/g;

    new-instance v1, LKd/g;

    const-string v2, "MULTI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LKd/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, LKd/g;->MULTI:LKd/g;

    filled-new-array {v0, v1}, [LKd/g;

    move-result-object v0

    sput-object v0, LKd/g;->$VALUES:[LKd/g;

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

.method public static valueOf(Ljava/lang/String;)LKd/g;
    .locals 1

    const-class v0, LKd/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LKd/g;

    return-object p0
.end method

.method public static values()[LKd/g;
    .locals 1

    sget-object v0, LKd/g;->$VALUES:[LKd/g;

    invoke-virtual {v0}, [LKd/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKd/g;

    return-object v0
.end method
