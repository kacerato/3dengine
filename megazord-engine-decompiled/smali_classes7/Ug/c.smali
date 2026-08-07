.class public final enum LUg/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LUg/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LUg/c;

.field public static final enum FAST:LUg/c;

.field public static final enum FASTER:LUg/c;

.field public static final enum FASTEST:LUg/c;

.field public static final enum HIGHER:LUg/c;

.field public static final enum MAXIMUM:LUg/c;

.field public static final enum MEDIUM_FAST:LUg/c;

.field public static final enum NORMAL:LUg/c;

.field public static final enum NO_COMPRESSION:LUg/c;

.field public static final enum PRE_ULTRA:LUg/c;

.field public static final enum ULTRA:LUg/c;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LUg/c;

    const-string v1, "NO_COMPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LUg/c;->NO_COMPRESSION:LUg/c;

    new-instance v1, LUg/c;

    const-string v2, "FASTEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LUg/c;->FASTEST:LUg/c;

    new-instance v2, LUg/c;

    const-string v3, "FASTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, LUg/c;->FASTER:LUg/c;

    new-instance v3, LUg/c;

    const-string v4, "FAST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LUg/c;->FAST:LUg/c;

    new-instance v4, LUg/c;

    const-string v5, "MEDIUM_FAST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, LUg/c;->MEDIUM_FAST:LUg/c;

    new-instance v5, LUg/c;

    const-string v6, "NORMAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, LUg/c;->NORMAL:LUg/c;

    new-instance v6, LUg/c;

    const-string v7, "HIGHER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v6, LUg/c;->HIGHER:LUg/c;

    new-instance v7, LUg/c;

    const-string v8, "MAXIMUM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, LUg/c;->MAXIMUM:LUg/c;

    new-instance v8, LUg/c;

    const-string v9, "PRE_ULTRA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v8, LUg/c;->PRE_ULTRA:LUg/c;

    new-instance v9, LUg/c;

    const-string v10, "ULTRA"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, LUg/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, LUg/c;->ULTRA:LUg/c;

    filled-new-array/range {v0 .. v9}, [LUg/c;

    move-result-object v0

    sput-object v0, LUg/c;->$VALUES:[LUg/c;

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

    iput p3, p0, LUg/c;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LUg/c;
    .locals 1

    const-class v0, LUg/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LUg/c;

    return-object p0
.end method

.method public static values()[LUg/c;
    .locals 1

    sget-object v0, LUg/c;->$VALUES:[LUg/c;

    invoke-virtual {v0}, [LUg/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUg/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LUg/c;->level:I

    return v0
.end method
