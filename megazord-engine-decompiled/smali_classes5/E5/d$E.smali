.class public final enum LE5/d$E;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LE5/d$E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LE5/d$E;

.field public static final enum BottomCenter:LE5/d$E;

.field public static final enum BottomRight:LE5/d$E;

.field public static final enum TopCenter:LE5/d$E;

.field public static final enum TopRight:LE5/d$E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE5/d$E;

    const-string v1, "TopCenter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE5/d$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE5/d$E;->TopCenter:LE5/d$E;

    new-instance v0, LE5/d$E;

    const-string v1, "TopRight"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LE5/d$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE5/d$E;->TopRight:LE5/d$E;

    new-instance v0, LE5/d$E;

    const-string v1, "BottomCenter"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LE5/d$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE5/d$E;->BottomCenter:LE5/d$E;

    new-instance v0, LE5/d$E;

    const-string v1, "BottomRight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LE5/d$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE5/d$E;->BottomRight:LE5/d$E;

    invoke-static {}, LE5/d$E;->a()[LE5/d$E;

    move-result-object v0

    sput-object v0, LE5/d$E;->$VALUES:[LE5/d$E;

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

.method public static synthetic a()[LE5/d$E;
    .locals 4

    sget-object v0, LE5/d$E;->TopCenter:LE5/d$E;

    sget-object v1, LE5/d$E;->TopRight:LE5/d$E;

    sget-object v2, LE5/d$E;->BottomCenter:LE5/d$E;

    sget-object v3, LE5/d$E;->BottomRight:LE5/d$E;

    filled-new-array {v0, v1, v2, v3}, [LE5/d$E;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LE5/d$E;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LE5/d$E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE5/d$E;

    return-object p0
.end method

.method public static values()[LE5/d$E;
    .locals 1

    sget-object v0, LE5/d$E;->$VALUES:[LE5/d$E;

    invoke-virtual {v0}, [LE5/d$E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE5/d$E;

    return-object v0
.end method
