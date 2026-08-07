.class public LE/o$c;
.super LE/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE/d<",
        "LE/o$b;",
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

    invoke-virtual {p0}, LE/o$c;->d()LE/o$b;

    move-result-object v0

    return-object v0
.end method

.method public d()LE/o$b;
    .locals 1

    new-instance v0, LE/o$b;

    invoke-direct {v0, p0}, LE/o$b;-><init>(LE/o$c;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/Bitmap$Config;)LE/o$b;
    .locals 1

    invoke-virtual {p0}, LE/d;->b()LE/m;

    move-result-object v0

    check-cast v0, LE/o$b;

    invoke-virtual {v0, p1, p2}, LE/o$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
