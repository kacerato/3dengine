.class public final enum LE0/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LE0/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LE0/r;

.field public static final enum W:LE0/r;

.field public static final enum X:LE0/r;

.field public static final enum Y:LE0/r;

.field public static final enum Z:LE0/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE0/r;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE0/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/r;->X:LE0/r;

    new-instance v0, LE0/r;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LE0/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/r;->Y:LE0/r;

    new-instance v0, LE0/r;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LE0/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/r;->Z:LE0/r;

    new-instance v0, LE0/r;

    const-string v1, "W"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LE0/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE0/r;->W:LE0/r;

    invoke-static {}, LE0/r;->a()[LE0/r;

    move-result-object v0

    sput-object v0, LE0/r;->$VALUES:[LE0/r;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LE0/r;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LE0/r;
    .locals 4

    sget-object v0, LE0/r;->X:LE0/r;

    sget-object v1, LE0/r;->Y:LE0/r;

    sget-object v2, LE0/r;->Z:LE0/r;

    sget-object v3, LE0/r;->W:LE0/r;

    filled-new-array {v0, v1, v2, v3}, [LE0/r;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LE0/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LE0/r;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LE0/r;
    .locals 1

    const-class v0, LE0/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE0/r;

    return-object p0
.end method

.method public static values()[LE0/r;
    .locals 1

    sget-object v0, LE0/r;->$VALUES:[LE0/r;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE0/r;

    return-object v0
.end method
