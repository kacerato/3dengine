.class public final LY2/f$d;
.super LY2/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final d:LY2/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY2/f$d;

    invoke-direct {v0}, LY2/f$d;-><init>()V

    sput-object v0, LY2/f$d;->d:LY2/f$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, LY2/f$b;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)LY2/j;
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LY2/j;->h()LY2/j;

    move-result-object p1

    return-object p1
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, LY2/f$b;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
