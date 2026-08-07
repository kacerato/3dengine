.class public final enum LD4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LD4/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LD4/a;

.field public static final enum CloseDown:LD4/a;

.field public static final enum CloseUp:LD4/a;

.field public static final enum None:LD4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD4/a;

    const-string v1, "CloseDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LD4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD4/a;->CloseDown:LD4/a;

    new-instance v0, LD4/a;

    const-string v1, "CloseUp"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD4/a;->CloseUp:LD4/a;

    new-instance v0, LD4/a;

    const-string v1, "None"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LD4/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD4/a;->None:LD4/a;

    invoke-static {}, LD4/a;->a()[LD4/a;

    move-result-object v0

    sput-object v0, LD4/a;->$VALUES:[LD4/a;

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

.method public static synthetic a()[LD4/a;
    .locals 3

    sget-object v0, LD4/a;->CloseDown:LD4/a;

    sget-object v1, LD4/a;->CloseUp:LD4/a;

    sget-object v2, LD4/a;->None:LD4/a;

    filled-new-array {v0, v1, v2}, [LD4/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LD4/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LD4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LD4/a;

    return-object p0
.end method

.method public static values()[LD4/a;
    .locals 1

    sget-object v0, LD4/a;->$VALUES:[LD4/a;

    invoke-virtual {v0}, [LD4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LD4/a;

    return-object v0
.end method
