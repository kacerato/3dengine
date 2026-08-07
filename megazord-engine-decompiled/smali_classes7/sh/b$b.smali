.class public final enum Lsh/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsh/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lsh/b$b;

.field public static final enum HalfLineIndicator:Lsh/b$b;

.field public static final enum KiteIndicator:Lsh/b$b;

.field public static final enum LineIndicator:Lsh/b$b;

.field public static final enum NeedleIndicator:Lsh/b$b;

.field public static final enum NoIndicator:Lsh/b$b;

.field public static final enum NormalIndicator:Lsh/b$b;

.field public static final enum NormalSmallIndicator:Lsh/b$b;

.field public static final enum QuarterLineIndicator:Lsh/b$b;

.field public static final enum SpindleIndicator:Lsh/b$b;

.field public static final enum TriangleIndicator:Lsh/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsh/b$b;

    const-string v1, "NoIndicator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->NoIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "NormalIndicator"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->NormalIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "NormalSmallIndicator"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->NormalSmallIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "TriangleIndicator"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->TriangleIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "SpindleIndicator"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->SpindleIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "LineIndicator"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->LineIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "HalfLineIndicator"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->HalfLineIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "QuarterLineIndicator"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->QuarterLineIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "KiteIndicator"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->KiteIndicator:Lsh/b$b;

    new-instance v0, Lsh/b$b;

    const-string v1, "NeedleIndicator"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lsh/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/b$b;->NeedleIndicator:Lsh/b$b;

    invoke-static {}, Lsh/b$b;->a()[Lsh/b$b;

    move-result-object v0

    sput-object v0, Lsh/b$b;->$VALUES:[Lsh/b$b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lsh/b$b;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lsh/b$b;
    .locals 10

    sget-object v0, Lsh/b$b;->NoIndicator:Lsh/b$b;

    sget-object v1, Lsh/b$b;->NormalIndicator:Lsh/b$b;

    sget-object v2, Lsh/b$b;->NormalSmallIndicator:Lsh/b$b;

    sget-object v3, Lsh/b$b;->TriangleIndicator:Lsh/b$b;

    sget-object v4, Lsh/b$b;->SpindleIndicator:Lsh/b$b;

    sget-object v5, Lsh/b$b;->LineIndicator:Lsh/b$b;

    sget-object v6, Lsh/b$b;->HalfLineIndicator:Lsh/b$b;

    sget-object v7, Lsh/b$b;->QuarterLineIndicator:Lsh/b$b;

    sget-object v8, Lsh/b$b;->KiteIndicator:Lsh/b$b;

    sget-object v9, Lsh/b$b;->NeedleIndicator:Lsh/b$b;

    filled-new-array/range {v0 .. v9}, [Lsh/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lsh/b$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lsh/b$b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsh/b$b;
    .locals 1

    const-class v0, Lsh/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsh/b$b;

    return-object p0
.end method

.method public static values()[Lsh/b$b;
    .locals 1

    sget-object v0, Lsh/b$b;->$VALUES:[Lsh/b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsh/b$b;

    return-object v0
.end method
