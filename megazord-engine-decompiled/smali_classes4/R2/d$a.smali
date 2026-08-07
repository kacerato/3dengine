.class public final enum LR2/d$a;
.super LR2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILR2/e;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LR2/d;-><init>(Ljava/lang/String;ILR2/e;Ljava/lang/String;LR2/d$a;)V

    return-void
.end method


# virtual methods
.method public c(LR2/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, LR2/d;->LOWER_UNDERSCORE:LR2/d;

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    if-ne p1, v0, :cond_0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, LR2/d;->UPPER_UNDERSCORE:LR2/d;

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LR2/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, LR2/d;->c(LR2/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LR2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
