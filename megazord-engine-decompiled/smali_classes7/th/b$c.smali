.class public final enum Lth/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lth/b$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lth/b$c;

.field public static final enum BottomIndicator:Lth/b$c;

.field public static final enum CenterIndicator:Lth/b$c;

.field public static final enum CenterSpeedometer:Lth/b$c;

.field public static final enum QuarterSpeedometer:Lth/b$c;

.field public static final enum TopIndicator:Lth/b$c;

.field public static final enum TopSpeedometer:Lth/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lth/b$c;

    const-string v1, "TopIndicator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->TopIndicator:Lth/b$c;

    new-instance v0, Lth/b$c;

    const-string v1, "CenterIndicator"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->CenterIndicator:Lth/b$c;

    new-instance v0, Lth/b$c;

    const-string v1, "BottomIndicator"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->BottomIndicator:Lth/b$c;

    new-instance v0, Lth/b$c;

    const-string v1, "TopSpeedometer"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->TopSpeedometer:Lth/b$c;

    new-instance v0, Lth/b$c;

    const-string v1, "CenterSpeedometer"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->CenterSpeedometer:Lth/b$c;

    new-instance v0, Lth/b$c;

    const-string v1, "QuarterSpeedometer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lth/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$c;->QuarterSpeedometer:Lth/b$c;

    invoke-static {}, Lth/b$c;->a()[Lth/b$c;

    move-result-object v0

    sput-object v0, Lth/b$c;->$VALUES:[Lth/b$c;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lth/b$c;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lth/b$c;
    .locals 6

    sget-object v0, Lth/b$c;->TopIndicator:Lth/b$c;

    sget-object v1, Lth/b$c;->CenterIndicator:Lth/b$c;

    sget-object v2, Lth/b$c;->BottomIndicator:Lth/b$c;

    sget-object v3, Lth/b$c;->TopSpeedometer:Lth/b$c;

    sget-object v4, Lth/b$c;->CenterSpeedometer:Lth/b$c;

    sget-object v5, Lth/b$c;->QuarterSpeedometer:Lth/b$c;

    filled-new-array/range {v0 .. v5}, [Lth/b$c;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lth/b$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lth/b$c;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lth/b$c;
    .locals 1

    const-class v0, Lth/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lth/b$c;

    return-object p0
.end method

.method public static values()[Lth/b$c;
    .locals 1

    sget-object v0, Lth/b$c;->$VALUES:[Lth/b$c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lth/b$c;

    return-object v0
.end method
