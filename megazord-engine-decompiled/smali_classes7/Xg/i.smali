.class public LXg/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LTg/s;LXg/f;)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-object v1, LQg/f;->SPECIFICATION_VERSION:LQg/f;

    invoke-virtual {v1}, LQg/f;->a()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sget-object v1, LQg/f;->UNIX:LQg/f;

    invoke-virtual {v1}, LQg/f;->a()B

    move-result v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-static {}, LXg/c;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LTg/s;->t()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LQg/f;->WINDOWS:LQg/f;

    invoke-virtual {p0}, LQg/f;->a()B

    move-result p0

    aput-byte p0, v0, v3

    :cond_0
    invoke-virtual {p1, v0, v2}, LXg/f;->m([BI)I

    move-result p0

    return p0
.end method

.method public static b(LTg/s;)LQg/g;
    .locals 5

    sget-object v0, LQg/g;->DEFAULT:LQg/g;

    invoke-virtual {p0}, LTg/s;->d()LUg/d;

    move-result-object v1

    sget-object v2, LUg/d;->DEFLATE:LUg/d;

    if-ne v1, v2, :cond_0

    sget-object v0, LQg/g;->DEFLATE_COMPRESSED:LQg/g;

    :cond_0
    invoke-virtual {p0}, LTg/s;->h()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    sget-object v0, LQg/g;->ZIP_64_FORMAT:LQg/g;

    :cond_1
    invoke-virtual {p0}, LTg/s;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LTg/s;->f()LUg/e;

    move-result-object p0

    sget-object v1, LUg/e;->AES:LUg/e;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, LQg/g;->AES_ENCRYPTED:LQg/g;

    :cond_2
    return-object v0
.end method
