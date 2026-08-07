.class public final enum LQg/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LQg/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LQg/c;

.field public static final enum AES_EXTRA_DATA_RECORD:LQg/c;

.field public static final enum ARCEXTDATREC:LQg/c;

.field public static final enum CENTRAL_DIRECTORY:LQg/c;

.field public static final enum DIGITAL_SIGNATURE:LQg/c;

.field public static final enum END_OF_CENTRAL_DIRECTORY:LQg/c;

.field public static final enum EXTRA_DATA_RECORD:LQg/c;

.field public static final enum LOCAL_FILE_HEADER:LQg/c;

.field public static final enum SPLIT_ZIP:LQg/c;

.field public static final enum TEMPORARY_SPANNING_MARKER:LQg/c;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:LQg/c;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:LQg/c;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:LQg/c;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, LQg/c;

    const/4 v1, 0x0

    const-wide/32 v2, 0x4034b50

    const-string v4, "LOCAL_FILE_HEADER"

    invoke-direct {v0, v4, v1, v2, v3}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LQg/c;->LOCAL_FILE_HEADER:LQg/c;

    new-instance v1, LQg/c;

    const-string v2, "EXTRA_DATA_RECORD"

    const/4 v3, 0x1

    const-wide/32 v4, 0x8074b50

    invoke-direct {v1, v2, v3, v4, v5}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, LQg/c;->EXTRA_DATA_RECORD:LQg/c;

    new-instance v2, LQg/c;

    const/4 v3, 0x2

    const-wide/32 v6, 0x2014b50    # 1.6619997E-316

    const-string v8, "CENTRAL_DIRECTORY"

    invoke-direct {v2, v8, v3, v6, v7}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, LQg/c;->CENTRAL_DIRECTORY:LQg/c;

    new-instance v3, LQg/c;

    const/4 v6, 0x3

    const-wide/32 v7, 0x6054b50

    const-string v9, "END_OF_CENTRAL_DIRECTORY"

    invoke-direct {v3, v9, v6, v7, v8}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, LQg/c;->END_OF_CENTRAL_DIRECTORY:LQg/c;

    new-instance v6, LQg/c;

    const/4 v7, 0x4

    const-wide/32 v8, 0x30304b50

    const-string v10, "TEMPORARY_SPANNING_MARKER"

    invoke-direct {v6, v10, v7, v8, v9}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, LQg/c;->TEMPORARY_SPANNING_MARKER:LQg/c;

    new-instance v7, LQg/c;

    const/4 v8, 0x5

    const-wide/32 v9, 0x5054b50

    const-string v11, "DIGITAL_SIGNATURE"

    invoke-direct {v7, v11, v8, v9, v10}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, LQg/c;->DIGITAL_SIGNATURE:LQg/c;

    new-instance v8, LQg/c;

    const/4 v9, 0x6

    const-wide/32 v10, 0x8064b50

    const-string v12, "ARCEXTDATREC"

    invoke-direct {v8, v12, v9, v10, v11}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, LQg/c;->ARCEXTDATREC:LQg/c;

    new-instance v9, LQg/c;

    const-string v10, "SPLIT_ZIP"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v4, v5}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, LQg/c;->SPLIT_ZIP:LQg/c;

    new-instance v10, LQg/c;

    const/16 v4, 0x8

    const-wide/32 v11, 0x7064b50

    const-string v5, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    invoke-direct {v10, v5, v4, v11, v12}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, LQg/c;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:LQg/c;

    new-instance v11, LQg/c;

    const/16 v4, 0x9

    const-wide/32 v12, 0x6064b50

    const-string v5, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    invoke-direct {v11, v5, v4, v12, v13}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, LQg/c;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:LQg/c;

    new-instance v12, LQg/c;

    const/16 v4, 0xa

    const-wide/16 v13, 0x1

    const-string v5, "ZIP64_EXTRA_FIELD_SIGNATURE"

    invoke-direct {v12, v5, v4, v13, v14}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, LQg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:LQg/c;

    new-instance v13, LQg/c;

    const/16 v4, 0xb

    const-wide/32 v14, 0x9901

    const-string v5, "AES_EXTRA_DATA_RECORD"

    invoke-direct {v13, v5, v4, v14, v15}, LQg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v13, LQg/c;->AES_EXTRA_DATA_RECORD:LQg/c;

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [LQg/c;

    move-result-object v0

    sput-object v0, LQg/c;->$VALUES:[LQg/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, LQg/c;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQg/c;
    .locals 1

    const-class v0, LQg/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQg/c;

    return-object p0
.end method

.method public static values()[LQg/c;
    .locals 1

    sget-object v0, LQg/c;->$VALUES:[LQg/c;

    invoke-virtual {v0}, [LQg/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQg/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, LQg/c;->value:J

    return-wide v0
.end method
