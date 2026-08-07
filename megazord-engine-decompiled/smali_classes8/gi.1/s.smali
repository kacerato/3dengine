.class public final enum Lgi/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgi/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgi/s;

.field public static final enum ALL:Lgi/s;

.field public static final enum BOOLEAN:Lgi/s;

.field public static final enum CHAR:Lgi/s;

.field public static final enum DOUBLE:Lgi/s;

.field public static final enum FLOAT:Lgi/s;

.field public static final enum INT:Lgi/s;

.field public static final enum LONG:Lgi/s;

.field public static final enum NULL:Lgi/s;

.field public static final enum PRIMITIVE:Lgi/s;

.field public static final enum STRING:Lgi/s;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lgi/s;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgi/s;->NULL:Lgi/s;

    new-instance v1, Lgi/s;

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgi/s;->INT:Lgi/s;

    new-instance v2, Lgi/s;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgi/s;->LONG:Lgi/s;

    new-instance v3, Lgi/s;

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgi/s;->FLOAT:Lgi/s;

    new-instance v4, Lgi/s;

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgi/s;->DOUBLE:Lgi/s;

    new-instance v5, Lgi/s;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgi/s;->BOOLEAN:Lgi/s;

    new-instance v6, Lgi/s;

    const-string v7, "CHAR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lgi/s;->CHAR:Lgi/s;

    new-instance v7, Lgi/s;

    const-string v8, "STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgi/s;->STRING:Lgi/s;

    new-instance v8, Lgi/s;

    const-string v9, "ALL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgi/s;->ALL:Lgi/s;

    new-instance v9, Lgi/s;

    const-string v10, "PRIMITIVE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lgi/s;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgi/s;->PRIMITIVE:Lgi/s;

    filled-new-array/range {v0 .. v9}, [Lgi/s;

    move-result-object v0

    sput-object v0, Lgi/s;->$VALUES:[Lgi/s;

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

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgi/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lgi/s;->values()[Lgi/s;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lgi/s;->ALL:Lgi/s;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lgi/s;->PRIMITIVE:Lgi/s;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgi/s;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgi/s;->INT:Lgi/s;

    sget-object v1, Lgi/s;->LONG:Lgi/s;

    sget-object v2, Lgi/s;->FLOAT:Lgi/s;

    sget-object v3, Lgi/s;->DOUBLE:Lgi/s;

    sget-object v4, Lgi/s;->BOOLEAN:Lgi/s;

    sget-object v5, Lgi/s;->CHAR:Lgi/s;

    filled-new-array/range {v0 .. v5}, [Lgi/s;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgi/s;
    .locals 1

    const-class v0, Lgi/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgi/s;

    return-object p0
.end method

.method public static values()[Lgi/s;
    .locals 1

    sget-object v0, Lgi/s;->$VALUES:[Lgi/s;

    invoke-virtual {v0}, [Lgi/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgi/s;

    return-object v0
.end method
