.class public final enum Lgi/I;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgi/I;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgi/I;

.field public static final enum ALL:Lgi/I;

.field public static final enum CONSTRUCTOR_RESULT:Lgi/I;

.field public static final enum EXCEPTION_PARAMETER:Lgi/I;

.field public static final enum EXPLICIT_LOWER_BOUND:Lgi/I;

.field public static final enum EXPLICIT_UPPER_BOUND:Lgi/I;

.field public static final enum FIELD:Lgi/I;

.field public static final enum IMPLICIT_LOWER_BOUND:Lgi/I;

.field public static final enum IMPLICIT_UPPER_BOUND:Lgi/I;

.field public static final enum LOCAL_VARIABLE:Lgi/I;

.field public static final enum LOWER_BOUND:Lgi/I;

.field public static final enum OTHERWISE:Lgi/I;

.field public static final enum PARAMETER:Lgi/I;

.field public static final enum RECEIVER:Lgi/I;

.field public static final enum RESOURCE_VARIABLE:Lgi/I;

.field public static final enum RETURN:Lgi/I;

.field public static final enum UPPER_BOUND:Lgi/I;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lgi/I;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/I;->FIELD:Lgi/I;

    new-instance v1, Lgi/I;

    const-string v2, "LOCAL_VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgi/I;->LOCAL_VARIABLE:Lgi/I;

    new-instance v2, Lgi/I;

    const-string v3, "RESOURCE_VARIABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgi/I;->RESOURCE_VARIABLE:Lgi/I;

    new-instance v3, Lgi/I;

    const-string v4, "EXCEPTION_PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgi/I;->EXCEPTION_PARAMETER:Lgi/I;

    new-instance v4, Lgi/I;

    const-string v5, "RECEIVER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgi/I;->RECEIVER:Lgi/I;

    new-instance v5, Lgi/I;

    const-string v6, "PARAMETER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgi/I;->PARAMETER:Lgi/I;

    new-instance v6, Lgi/I;

    const-string v7, "RETURN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lgi/I;->RETURN:Lgi/I;

    new-instance v7, Lgi/I;

    const-string v8, "CONSTRUCTOR_RESULT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgi/I;->CONSTRUCTOR_RESULT:Lgi/I;

    new-instance v8, Lgi/I;

    const-string v9, "LOWER_BOUND"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgi/I;->LOWER_BOUND:Lgi/I;

    new-instance v9, Lgi/I;

    const-string v10, "EXPLICIT_LOWER_BOUND"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgi/I;->EXPLICIT_LOWER_BOUND:Lgi/I;

    new-instance v10, Lgi/I;

    const-string v11, "IMPLICIT_LOWER_BOUND"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lgi/I;->IMPLICIT_LOWER_BOUND:Lgi/I;

    new-instance v11, Lgi/I;

    const-string v12, "UPPER_BOUND"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lgi/I;->UPPER_BOUND:Lgi/I;

    new-instance v12, Lgi/I;

    const-string v13, "EXPLICIT_UPPER_BOUND"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lgi/I;->EXPLICIT_UPPER_BOUND:Lgi/I;

    new-instance v13, Lgi/I;

    const-string v14, "IMPLICIT_UPPER_BOUND"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lgi/I;->IMPLICIT_UPPER_BOUND:Lgi/I;

    new-instance v14, Lgi/I;

    const-string v15, "OTHERWISE"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lgi/I;->OTHERWISE:Lgi/I;

    new-instance v15, Lgi/I;

    const-string v13, "ALL"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lgi/I;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lgi/I;->ALL:Lgi/I;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lgi/I;

    move-result-object v0

    sput-object v0, Lgi/I;->$VALUES:[Lgi/I;

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

.method public static valueOf(Ljava/lang/String;)Lgi/I;
    .locals 1

    const-class v0, Lgi/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgi/I;

    return-object p0
.end method

.method public static values()[Lgi/I;
    .locals 1

    sget-object v0, Lgi/I;->$VALUES:[Lgi/I;

    invoke-virtual {v0}, [Lgi/I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgi/I;

    return-object v0
.end method
