.class public LZ2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime LZ2/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ2/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)D
    .locals 1

    sget-object v0, LZ2/a$a;->a:LZ2/a$a;

    invoke-virtual {v0, p0, p1}, LZ2/p;->b(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    move-result-wide p0

    return-wide p0
.end method
