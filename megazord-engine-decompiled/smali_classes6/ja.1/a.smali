.class public final enum Lja/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lja/a;

.field public static final enum Horizontal:Lja/a;

.field public static final enum Vertical:Lja/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lja/a;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lja/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/a;->Vertical:Lja/a;

    new-instance v0, Lja/a;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lja/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/a;->Horizontal:Lja/a;

    invoke-static {}, Lja/a;->a()[Lja/a;

    move-result-object v0

    sput-object v0, Lja/a;->$VALUES:[Lja/a;

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

.method public static synthetic a()[Lja/a;
    .locals 2

    sget-object v0, Lja/a;->Vertical:Lja/a;

    sget-object v1, Lja/a;->Horizontal:Lja/a;

    filled-new-array {v0, v1}, [Lja/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lja/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lja/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lja/a;

    return-object p0
.end method

.method public static values()[Lja/a;
    .locals 1

    sget-object v0, Lja/a;->$VALUES:[Lja/a;

    invoke-virtual {v0}, [Lja/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/a;

    return-object v0
.end method
