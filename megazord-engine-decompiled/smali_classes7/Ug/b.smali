.class public final enum LUg/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LUg/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LUg/b;

.field public static final enum ONE:LUg/b;

.field public static final enum TWO:LUg/b;


# instance fields
.field private versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LUg/b;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LUg/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LUg/b;->ONE:LUg/b;

    new-instance v1, LUg/b;

    const-string v2, "TWO"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, LUg/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, LUg/b;->TWO:LUg/b;

    filled-new-array {v0, v1}, [LUg/b;

    move-result-object v0

    sput-object v0, LUg/b;->$VALUES:[LUg/b;

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

    iput p3, p0, LUg/b;->versionNumber:I

    return-void
.end method

.method public static a(I)LUg/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {}, LUg/b;->values()[LUg/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, LUg/b;->versionNumber:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Unsupported Aes version"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)LUg/b;
    .locals 1

    const-class v0, LUg/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LUg/b;

    return-object p0
.end method

.method public static values()[LUg/b;
    .locals 1

    sget-object v0, LUg/b;->$VALUES:[LUg/b;

    invoke-virtual {v0}, [LUg/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUg/b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LUg/b;->versionNumber:I

    return v0
.end method
