.class public final enum Lz3/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz3/k$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz3/k$a;

.field public static final enum COMBINED:Lz3/k$a;

.field public static final enum GLOBAL:Lz3/k$a;

.field public static final enum NONE:Lz3/k$a;

.field public static final enum SDK:Lz3/k$a;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz3/k$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lz3/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz3/k$a;->NONE:Lz3/k$a;

    new-instance v0, Lz3/k$a;

    const-string v1, "SDK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lz3/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz3/k$a;->SDK:Lz3/k$a;

    new-instance v0, Lz3/k$a;

    const-string v1, "GLOBAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lz3/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz3/k$a;->GLOBAL:Lz3/k$a;

    new-instance v0, Lz3/k$a;

    const-string v1, "COMBINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lz3/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz3/k$a;->COMBINED:Lz3/k$a;

    invoke-static {}, Lz3/k$a;->a()[Lz3/k$a;

    move-result-object v0

    sput-object v0, Lz3/k$a;->$VALUES:[Lz3/k$a;

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

    iput p3, p0, Lz3/k$a;->code:I

    return-void
.end method

.method public static synthetic a()[Lz3/k$a;
    .locals 4

    sget-object v0, Lz3/k$a;->NONE:Lz3/k$a;

    sget-object v1, Lz3/k$a;->SDK:Lz3/k$a;

    sget-object v2, Lz3/k$a;->GLOBAL:Lz3/k$a;

    sget-object v3, Lz3/k$a;->COMBINED:Lz3/k$a;

    filled-new-array {v0, v1, v2, v3}, [Lz3/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lz3/k$a;
    .locals 1

    const-class v0, Lz3/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz3/k$a;

    return-object p0
.end method

.method public static values()[Lz3/k$a;
    .locals 1

    sget-object v0, Lz3/k$a;->$VALUES:[Lz3/k$a;

    invoke-virtual {v0}, [Lz3/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz3/k$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lz3/k$a;->code:I

    return v0
.end method
