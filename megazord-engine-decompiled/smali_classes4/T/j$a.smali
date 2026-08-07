.class public final enum LT/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LT/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LT/j$a;

.field public static final enum CLEARED:LT/j$a;

.field public static final enum COMPLETE:LT/j$a;

.field public static final enum FAILED:LT/j$a;

.field public static final enum PENDING:LT/j$a;

.field public static final enum RUNNING:LT/j$a;

.field public static final enum WAITING_FOR_SIZE:LT/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LT/j$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT/j$a;->PENDING:LT/j$a;

    new-instance v1, LT/j$a;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LT/j$a;->RUNNING:LT/j$a;

    new-instance v2, LT/j$a;

    const-string v3, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LT/j$a;->WAITING_FOR_SIZE:LT/j$a;

    new-instance v3, LT/j$a;

    const-string v4, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LT/j$a;->COMPLETE:LT/j$a;

    new-instance v4, LT/j$a;

    const-string v5, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LT/j$a;->FAILED:LT/j$a;

    new-instance v5, LT/j$a;

    const-string v6, "CLEARED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LT/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, LT/j$a;->CLEARED:LT/j$a;

    filled-new-array/range {v0 .. v5}, [LT/j$a;

    move-result-object v0

    sput-object v0, LT/j$a;->$VALUES:[LT/j$a;

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

.method public static valueOf(Ljava/lang/String;)LT/j$a;
    .locals 1

    const-class v0, LT/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT/j$a;

    return-object p0
.end method

.method public static values()[LT/j$a;
    .locals 1

    sget-object v0, LT/j$a;->$VALUES:[LT/j$a;

    invoke-virtual {v0}, [LT/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT/j$a;

    return-object v0
.end method
