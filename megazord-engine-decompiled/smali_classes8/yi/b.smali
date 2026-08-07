.class public final enum Lyi/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyi/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lyi/b;

.field public static final enum BOTTOM_TO_TOP:Lyi/b;

.field public static final enum LEFT_TO_RIGHT:Lyi/b;

.field public static final enum RIGHT_TO_LEFT:Lyi/b;

.field public static final enum TOP_TO_BOTTOM:Lyi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyi/b;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyi/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/b;->RIGHT_TO_LEFT:Lyi/b;

    new-instance v0, Lyi/b;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lyi/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/b;->LEFT_TO_RIGHT:Lyi/b;

    new-instance v0, Lyi/b;

    const-string v1, "TOP_TO_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lyi/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/b;->TOP_TO_BOTTOM:Lyi/b;

    new-instance v0, Lyi/b;

    const-string v1, "BOTTOM_TO_TOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyi/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/b;->BOTTOM_TO_TOP:Lyi/b;

    invoke-static {}, Lyi/b;->a()[Lyi/b;

    move-result-object v0

    sput-object v0, Lyi/b;->$VALUES:[Lyi/b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lyi/b;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lyi/b;
    .locals 4

    sget-object v0, Lyi/b;->RIGHT_TO_LEFT:Lyi/b;

    sget-object v1, Lyi/b;->LEFT_TO_RIGHT:Lyi/b;

    sget-object v2, Lyi/b;->TOP_TO_BOTTOM:Lyi/b;

    sget-object v3, Lyi/b;->BOTTOM_TO_TOP:Lyi/b;

    filled-new-array {v0, v1, v2, v3}, [Lyi/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lyi/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyi/b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyi/b;
    .locals 1

    const-class v0, Lyi/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyi/b;

    return-object p0
.end method

.method public static values()[Lyi/b;
    .locals 1

    sget-object v0, Lyi/b;->$VALUES:[Lyi/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyi/b;

    return-object v0
.end method
