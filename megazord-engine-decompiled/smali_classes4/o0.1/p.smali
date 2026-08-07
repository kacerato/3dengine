.class public final enum Lo0/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo0/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo0/p;

.field public static final enum DEFAULT:Lo0/p;

.field public static final enum FAST_IF_RADIO_AWAKE:Lo0/p;

.field public static final enum NEVER:Lo0/p;

.field public static final enum UNMETERED_ONLY:Lo0/p;

.field public static final enum UNMETERED_OR_DAILY:Lo0/p;

.field public static final enum UNRECOGNIZED:Lo0/p;

.field private static final valueMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo0/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v6, Lo0/p;

    const-string v0, "DEFAULT"

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v7}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lo0/p;->DEFAULT:Lo0/p;

    new-instance v8, Lo0/p;

    const-string v0, "UNMETERED_ONLY"

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9, v9}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lo0/p;->UNMETERED_ONLY:Lo0/p;

    new-instance v10, Lo0/p;

    const-string v0, "UNMETERED_OR_DAILY"

    const/4 v11, 0x2

    invoke-direct {v10, v0, v11, v11}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lo0/p;->UNMETERED_OR_DAILY:Lo0/p;

    new-instance v12, Lo0/p;

    const-string v0, "FAST_IF_RADIO_AWAKE"

    const/4 v13, 0x3

    invoke-direct {v12, v0, v13, v13}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lo0/p;->FAST_IF_RADIO_AWAKE:Lo0/p;

    new-instance v14, Lo0/p;

    const-string v0, "NEVER"

    const/4 v15, 0x4

    invoke-direct {v14, v0, v15, v15}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lo0/p;->NEVER:Lo0/p;

    new-instance v5, Lo0/p;

    const-string v0, "UNRECOGNIZED"

    const/4 v1, 0x5

    const/4 v4, -0x1

    invoke-direct {v5, v0, v1, v4}, Lo0/p;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lo0/p;->UNRECOGNIZED:Lo0/p;

    move-object v0, v6

    move-object v1, v8

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v16, v5

    filled-new-array/range {v0 .. v5}, [Lo0/p;

    move-result-object v0

    sput-object v0, Lo0/p;->$VALUES:[Lo0/p;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lo0/p;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v16

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

    iput p3, p0, Lo0/p;->value:I

    return-void
.end method

.method public static a(I)Lo0/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo0/p;->NEVER:Lo0/p;

    return-object p0

    :cond_1
    sget-object p0, Lo0/p;->FAST_IF_RADIO_AWAKE:Lo0/p;

    return-object p0

    :cond_2
    sget-object p0, Lo0/p;->UNMETERED_OR_DAILY:Lo0/p;

    return-object p0

    :cond_3
    sget-object p0, Lo0/p;->UNMETERED_ONLY:Lo0/p;

    return-object p0

    :cond_4
    sget-object p0, Lo0/p;->DEFAULT:Lo0/p;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo0/p;
    .locals 1

    const-class v0, Lo0/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo0/p;

    return-object p0
.end method

.method public static values()[Lo0/p;
    .locals 1

    sget-object v0, Lo0/p;->$VALUES:[Lo0/p;

    invoke-virtual {v0}, [Lo0/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo0/p;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lo0/p;->value:I

    return v0
.end method
