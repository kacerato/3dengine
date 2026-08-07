.class public final enum Lge/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lge/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lge/o;

.field public static final enum BOUNCE:Lge/o;

.field public static final enum DROPDOWN:Lge/o;

.field public static final enum FADE:Lge/o;

.field public static final enum NORMAL:Lge/o;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lge/o;

    const-string v1, "DROPDOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lge/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lge/o;->DROPDOWN:Lge/o;

    new-instance v1, Lge/o;

    const-string v2, "FADE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lge/o;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lge/o;->FADE:Lge/o;

    new-instance v2, Lge/o;

    const-string v3, "BOUNCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lge/o;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lge/o;->BOUNCE:Lge/o;

    new-instance v3, Lge/o;

    const-string v4, "NORMAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lge/o;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lge/o;->NORMAL:Lge/o;

    filled-new-array {v0, v1, v2, v3}, [Lge/o;

    move-result-object v0

    sput-object v0, Lge/o;->$VALUES:[Lge/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lge/o;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lge/o;
    .locals 1

    const-class v0, Lge/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lge/o;

    return-object p0
.end method

.method public static values()[Lge/o;
    .locals 1

    sget-object v0, Lge/o;->$VALUES:[Lge/o;

    invoke-virtual {v0}, [Lge/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lge/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lge/o;->value:I

    return v0
.end method
