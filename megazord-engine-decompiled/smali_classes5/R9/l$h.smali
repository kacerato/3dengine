.class public final enum LR9/l$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LR9/l$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LR9/l$h;

.field public static final enum BillinearBorders:LR9/l$h;

.field public static final enum Normal:LR9/l$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR9/l$h;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR9/l$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR9/l$h;->Normal:LR9/l$h;

    new-instance v0, LR9/l$h;

    const-string v1, "BillinearBorders"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR9/l$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR9/l$h;->BillinearBorders:LR9/l$h;

    invoke-static {}, LR9/l$h;->a()[LR9/l$h;

    move-result-object v0

    sput-object v0, LR9/l$h;->$VALUES:[LR9/l$h;

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

.method public static synthetic a()[LR9/l$h;
    .locals 2

    sget-object v0, LR9/l$h;->Normal:LR9/l$h;

    sget-object v1, LR9/l$h;->BillinearBorders:LR9/l$h;

    filled-new-array {v0, v1}, [LR9/l$h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LR9/l$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LR9/l$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR9/l$h;

    return-object p0
.end method

.method public static values()[LR9/l$h;
    .locals 1

    sget-object v0, LR9/l$h;->$VALUES:[LR9/l$h;

    invoke-virtual {v0}, [LR9/l$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR9/l$h;

    return-object v0
.end method
