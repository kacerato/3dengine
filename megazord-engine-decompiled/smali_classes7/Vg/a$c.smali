.class public final enum LVg/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LVg/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LVg/a$c;

.field public static final enum ADD_ENTRY:LVg/a$c;

.field public static final enum CALCULATE_CRC:LVg/a$c;

.field public static final enum EXTRACT_ENTRY:LVg/a$c;

.field public static final enum MERGE_ZIP_FILES:LVg/a$c;

.field public static final enum NONE:LVg/a$c;

.field public static final enum REMOVE_ENTRY:LVg/a$c;

.field public static final enum RENAME_FILE:LVg/a$c;

.field public static final enum SET_COMMENT:LVg/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LVg/a$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVg/a$c;->NONE:LVg/a$c;

    new-instance v1, LVg/a$c;

    const-string v2, "ADD_ENTRY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, LVg/a$c;->ADD_ENTRY:LVg/a$c;

    new-instance v2, LVg/a$c;

    const-string v3, "REMOVE_ENTRY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, LVg/a$c;->REMOVE_ENTRY:LVg/a$c;

    new-instance v3, LVg/a$c;

    const-string v4, "CALCULATE_CRC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, LVg/a$c;->CALCULATE_CRC:LVg/a$c;

    new-instance v4, LVg/a$c;

    const-string v5, "EXTRACT_ENTRY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, LVg/a$c;->EXTRACT_ENTRY:LVg/a$c;

    new-instance v5, LVg/a$c;

    const-string v6, "MERGE_ZIP_FILES"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, LVg/a$c;->MERGE_ZIP_FILES:LVg/a$c;

    new-instance v6, LVg/a$c;

    const-string v7, "SET_COMMENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, LVg/a$c;->SET_COMMENT:LVg/a$c;

    new-instance v7, LVg/a$c;

    const-string v8, "RENAME_FILE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, LVg/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, LVg/a$c;->RENAME_FILE:LVg/a$c;

    filled-new-array/range {v0 .. v7}, [LVg/a$c;

    move-result-object v0

    sput-object v0, LVg/a$c;->$VALUES:[LVg/a$c;

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

.method public static valueOf(Ljava/lang/String;)LVg/a$c;
    .locals 1

    const-class v0, LVg/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVg/a$c;

    return-object p0
.end method

.method public static values()[LVg/a$c;
    .locals 1

    sget-object v0, LVg/a$c;->$VALUES:[LVg/a$c;

    invoke-virtual {v0}, [LVg/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVg/a$c;

    return-object v0
.end method
