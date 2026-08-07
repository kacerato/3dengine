.class public final enum LE0/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LE0/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LE0/x;

.field public static final enum W:LE0/x;

.field public static final enum X:LE0/x;

.field public static final enum Y:LE0/x;

.field public static final enum Z:LE0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE0/x;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/x;->X:LE0/x;

    new-instance v0, LE0/x;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LE0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/x;->Y:LE0/x;

    new-instance v0, LE0/x;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LE0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/x;->Z:LE0/x;

    new-instance v0, LE0/x;

    const-string v1, "W"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LE0/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/x;->W:LE0/x;

    invoke-static {}, LE0/x;->a()[LE0/x;

    move-result-object v0

    sput-object v0, LE0/x;->$VALUES:[LE0/x;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LE0/x;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LE0/x;
    .locals 4

    sget-object v0, LE0/x;->X:LE0/x;

    sget-object v1, LE0/x;->Y:LE0/x;

    sget-object v2, LE0/x;->Z:LE0/x;

    sget-object v3, LE0/x;->W:LE0/x;

    filled-new-array {v0, v1, v2, v3}, [LE0/x;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LE0/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LE0/x;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LE0/x;
    .locals 1

    const-class v0, LE0/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE0/x;

    return-object p0
.end method

.method public static values()[LE0/x;
    .locals 1

    sget-object v0, LE0/x;->$VALUES:[LE0/x;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE0/x;

    return-object v0
.end method
