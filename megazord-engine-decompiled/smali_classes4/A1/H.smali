.class public abstract LA1/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA1/H;

.field public static final b:LA1/H;

.field public static final c:LA1/H;

.field public static final d:LA1/H;

.field public static final e:LA1/H;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LA1/F;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, LA1/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, LA1/H;->a:LA1/H;

    new-instance v0, LA1/F;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v2, v3, v1}, LA1/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, LA1/H;->b:LA1/H;

    new-instance v0, LA1/G;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v2, v3, v1}, LA1/G;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, LA1/H;->c:LA1/H;

    new-instance v0, LA1/G;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v2, v3, v1}, LA1/G;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, LA1/H;->d:LA1/H;

    new-instance v0, LA1/E;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, LA1/E;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LA1/H;->e:LA1/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LA1/H;
    .locals 1

    sget-object v0, LA1/H;->e:LA1/H;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(I)I
.end method

.method public final d([BII)Ljava/lang/String;
    .locals 2

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, LA1/n;->e(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, LA1/H;->b(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p2, p1, v0, p3}, LA1/H;->a(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
