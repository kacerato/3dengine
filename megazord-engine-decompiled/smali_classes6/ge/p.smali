.class public final enum Lge/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lge/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lge/p;

.field public static final enum BOTTOM:Lge/p;

.field public static final enum END:Lge/p;

.field public static final enum START:Lge/p;

.field public static final enum TOP:Lge/p;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lge/p;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lge/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lge/p;->START:Lge/p;

    new-instance v1, Lge/p;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lge/p;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lge/p;->TOP:Lge/p;

    new-instance v2, Lge/p;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lge/p;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lge/p;->END:Lge/p;

    new-instance v3, Lge/p;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lge/p;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lge/p;->BOTTOM:Lge/p;

    filled-new-array {v0, v1, v2, v3}, [Lge/p;

    move-result-object v0

    sput-object v0, Lge/p;->$VALUES:[Lge/p;

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

    iput p3, p0, Lge/p;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lge/p;
    .locals 1

    const-class v0, Lge/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lge/p;

    return-object p0
.end method

.method public static values()[Lge/p;
    .locals 1

    sget-object v0, Lge/p;->$VALUES:[Lge/p;

    invoke-virtual {v0}, [Lge/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lge/p;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lge/p;->value:I

    return v0
.end method
