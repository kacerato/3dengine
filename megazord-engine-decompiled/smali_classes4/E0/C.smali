.class public final enum LE0/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LE0/C;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LE0/C;

.field public static final enum XYZ:LE0/C;

.field public static final enum XZY:LE0/C;

.field public static final enum YXZ:LE0/C;

.field public static final enum YZX:LE0/C;

.field public static final enum ZXY:LE0/C;

.field public static final enum ZYX:LE0/C;


# instance fields
.field private final pitch:LE0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roll:LE0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final yaw:LE0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v6, LE0/C;

    sget-object v7, LE0/H;->X:LE0/H;

    sget-object v8, LE0/H;->Y:LE0/H;

    sget-object v9, LE0/H;->Z:LE0/H;

    const-string v1, "XYZ"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->XYZ:LE0/C;

    new-instance v6, LE0/C;

    const-string v1, "XZY"

    const/4 v2, 0x1

    move-object v0, v6

    move-object v4, v9

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->XZY:LE0/C;

    new-instance v6, LE0/C;

    const-string v1, "YXZ"

    const/4 v2, 0x2

    move-object v0, v6

    move-object v3, v8

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->YXZ:LE0/C;

    new-instance v6, LE0/C;

    const-string v1, "YZX"

    const/4 v2, 0x3

    move-object v0, v6

    move-object v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->YZX:LE0/C;

    new-instance v6, LE0/C;

    const-string v1, "ZXY"

    const/4 v2, 0x4

    move-object v0, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->ZXY:LE0/C;

    new-instance v6, LE0/C;

    const-string v1, "ZYX"

    const/4 v2, 0x5

    move-object v0, v6

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, LE0/C;-><init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V

    sput-object v6, LE0/C;->ZYX:LE0/C;

    invoke-static {}, LE0/C;->a()[LE0/C;

    move-result-object v0

    sput-object v0, LE0/C;->$VALUES:[LE0/C;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LE0/C;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILE0/H;LE0/H;LE0/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE0/H;",
            "LE0/H;",
            "LE0/H;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LE0/C;->yaw:LE0/H;

    iput-object p4, p0, LE0/C;->pitch:LE0/H;

    iput-object p5, p0, LE0/C;->roll:LE0/H;

    return-void
.end method

.method public static final synthetic a()[LE0/C;
    .locals 6

    sget-object v0, LE0/C;->XYZ:LE0/C;

    sget-object v1, LE0/C;->XZY:LE0/C;

    sget-object v2, LE0/C;->YXZ:LE0/C;

    sget-object v3, LE0/C;->YZX:LE0/C;

    sget-object v4, LE0/C;->ZXY:LE0/C;

    sget-object v5, LE0/C;->ZYX:LE0/C;

    filled-new-array/range {v0 .. v5}, [LE0/C;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LE0/C;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LE0/C;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LE0/C;
    .locals 1

    const-class v0, LE0/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE0/C;

    return-object p0
.end method

.method public static values()[LE0/C;
    .locals 1

    sget-object v0, LE0/C;->$VALUES:[LE0/C;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE0/C;

    return-object v0
.end method


# virtual methods
.method public final c()LE0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/C;->pitch:LE0/H;

    return-object v0
.end method

.method public final d()LE0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/C;->roll:LE0/H;

    return-object v0
.end method

.method public final e()LE0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LE0/C;->yaw:LE0/H;

    return-object v0
.end method
