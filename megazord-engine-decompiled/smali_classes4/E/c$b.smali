.class public LE/c$b;
.super LE/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE/d<",
        "LE/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LE/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LE/m;
    .locals 1

    invoke-virtual {p0}, LE/c$b;->d()LE/c$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LE/c$a;
    .locals 1

    new-instance v0, LE/c$a;

    invoke-direct {v0, p0}, LE/c$a;-><init>(LE/c$b;)V

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)LE/c$a;
    .locals 1

    invoke-virtual {p0}, LE/d;->b()LE/m;

    move-result-object v0

    check-cast v0, LE/c$a;

    invoke-virtual {v0, p1, p2, p3}, LE/c$a;->b(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
