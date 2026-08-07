.class public final enum Lcom/google/android/filament/Texture$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$d;

.field public static final enum NEGATIVE_X:Lcom/google/android/filament/Texture$d;

.field public static final enum NEGATIVE_Y:Lcom/google/android/filament/Texture$d;

.field public static final enum NEGATIVE_Z:Lcom/google/android/filament/Texture$d;

.field public static final enum POSITIVE_X:Lcom/google/android/filament/Texture$d;

.field public static final enum POSITIVE_Y:Lcom/google/android/filament/Texture$d;

.field public static final enum POSITIVE_Z:Lcom/google/android/filament/Texture$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "POSITIVE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->POSITIVE_X:Lcom/google/android/filament/Texture$d;

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "NEGATIVE_X"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->NEGATIVE_X:Lcom/google/android/filament/Texture$d;

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "POSITIVE_Y"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->POSITIVE_Y:Lcom/google/android/filament/Texture$d;

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "NEGATIVE_Y"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->NEGATIVE_Y:Lcom/google/android/filament/Texture$d;

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "POSITIVE_Z"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->POSITIVE_Z:Lcom/google/android/filament/Texture$d;

    new-instance v0, Lcom/google/android/filament/Texture$d;

    const-string v1, "NEGATIVE_Z"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$d;->NEGATIVE_Z:Lcom/google/android/filament/Texture$d;

    invoke-static {}, Lcom/google/android/filament/Texture$d;->a()[Lcom/google/android/filament/Texture$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture$d;->$VALUES:[Lcom/google/android/filament/Texture$d;

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

.method public static synthetic a()[Lcom/google/android/filament/Texture$d;
    .locals 6

    sget-object v0, Lcom/google/android/filament/Texture$d;->POSITIVE_X:Lcom/google/android/filament/Texture$d;

    sget-object v1, Lcom/google/android/filament/Texture$d;->NEGATIVE_X:Lcom/google/android/filament/Texture$d;

    sget-object v2, Lcom/google/android/filament/Texture$d;->POSITIVE_Y:Lcom/google/android/filament/Texture$d;

    sget-object v3, Lcom/google/android/filament/Texture$d;->NEGATIVE_Y:Lcom/google/android/filament/Texture$d;

    sget-object v4, Lcom/google/android/filament/Texture$d;->POSITIVE_Z:Lcom/google/android/filament/Texture$d;

    sget-object v5, Lcom/google/android/filament/Texture$d;->NEGATIVE_Z:Lcom/google/android/filament/Texture$d;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/Texture$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$d;
    .locals 1

    const-class v0, Lcom/google/android/filament/Texture$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$d;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$d;->$VALUES:[Lcom/google/android/filament/Texture$d;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$d;

    return-object v0
.end method
