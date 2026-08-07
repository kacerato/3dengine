.class public final enum Lgi/H;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgi/H;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgi/H;

.field public static final enum ARRAY:Lgi/H;

.field public static final enum BOOLEAN:Lgi/H;

.field public static final enum BYTE:Lgi/H;

.field public static final enum CHAR:Lgi/H;

.field public static final enum DECLARED:Lgi/H;

.field public static final enum DOUBLE:Lgi/H;

.field public static final enum ERROR:Lgi/H;

.field public static final enum EXECUTABLE:Lgi/H;

.field public static final enum FLOAT:Lgi/H;

.field public static final enum INT:Lgi/H;

.field public static final enum INTERSECTION:Lgi/H;

.field public static final enum LONG:Lgi/H;

.field public static final enum NONE:Lgi/H;

.field public static final enum NULL:Lgi/H;

.field public static final enum OTHER:Lgi/H;

.field public static final enum PACKAGE:Lgi/H;

.field public static final enum SHORT:Lgi/H;

.field public static final enum TYPEVAR:Lgi/H;

.field public static final enum UNION:Lgi/H;

.field public static final enum VOID:Lgi/H;

.field public static final enum WILDCARD:Lgi/H;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lgi/H;

    move-object v0, v1

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgi/H;->BOOLEAN:Lgi/H;

    new-instance v2, Lgi/H;

    move-object v1, v2

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgi/H;->BYTE:Lgi/H;

    new-instance v3, Lgi/H;

    move-object v2, v3

    const-string v4, "SHORT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgi/H;->SHORT:Lgi/H;

    new-instance v4, Lgi/H;

    move-object v3, v4

    const-string v5, "INT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgi/H;->INT:Lgi/H;

    new-instance v5, Lgi/H;

    move-object v4, v5

    const-string v6, "LONG"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgi/H;->LONG:Lgi/H;

    new-instance v6, Lgi/H;

    move-object v5, v6

    const-string v7, "CHAR"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lgi/H;->CHAR:Lgi/H;

    new-instance v7, Lgi/H;

    move-object v6, v7

    const-string v8, "FLOAT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgi/H;->FLOAT:Lgi/H;

    new-instance v8, Lgi/H;

    move-object v7, v8

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgi/H;->DOUBLE:Lgi/H;

    new-instance v9, Lgi/H;

    move-object v8, v9

    const-string v10, "VOID"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgi/H;->VOID:Lgi/H;

    new-instance v10, Lgi/H;

    move-object v9, v10

    const-string v11, "NONE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lgi/H;->NONE:Lgi/H;

    new-instance v11, Lgi/H;

    move-object v10, v11

    const-string v12, "NULL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lgi/H;->NULL:Lgi/H;

    new-instance v12, Lgi/H;

    move-object v11, v12

    const-string v13, "ARRAY"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lgi/H;->ARRAY:Lgi/H;

    new-instance v13, Lgi/H;

    move-object v12, v13

    const-string v14, "DECLARED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lgi/H;->DECLARED:Lgi/H;

    new-instance v14, Lgi/H;

    move-object v13, v14

    const-string v15, "ERROR"

    move-object/from16 v21, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lgi/H;->ERROR:Lgi/H;

    new-instance v0, Lgi/H;

    move-object v14, v0

    const-string v15, "TYPEVAR"

    move-object/from16 v22, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->TYPEVAR:Lgi/H;

    new-instance v0, Lgi/H;

    move-object v15, v0

    const-string v1, "WILDCARD"

    move-object/from16 v23, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->WILDCARD:Lgi/H;

    new-instance v0, Lgi/H;

    move-object/from16 v16, v0

    const-string v1, "PACKAGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->PACKAGE:Lgi/H;

    new-instance v0, Lgi/H;

    move-object/from16 v17, v0

    const-string v1, "EXECUTABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->EXECUTABLE:Lgi/H;

    new-instance v0, Lgi/H;

    move-object/from16 v18, v0

    const-string v1, "OTHER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->OTHER:Lgi/H;

    new-instance v0, Lgi/H;

    move-object/from16 v19, v0

    const-string v1, "UNION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->UNION:Lgi/H;

    new-instance v0, Lgi/H;

    move-object/from16 v20, v0

    const-string v1, "INTERSECTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lgi/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/H;->INTERSECTION:Lgi/H;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    filled-new-array/range {v0 .. v20}, [Lgi/H;

    move-result-object v0

    sput-object v0, Lgi/H;->$VALUES:[Lgi/H;

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

.method public static valueOf(Ljava/lang/String;)Lgi/H;
    .locals 1

    const-class v0, Lgi/H;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgi/H;

    return-object p0
.end method

.method public static values()[Lgi/H;
    .locals 1

    sget-object v0, Lgi/H;->$VALUES:[Lgi/H;

    invoke-virtual {v0}, [Lgi/H;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgi/H;

    return-object v0
.end method
