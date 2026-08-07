.class public LE/p$b;
.super LE/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE/d<",
        "LE/p$a;",
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

    invoke-virtual {p0}, LE/p$b;->d()LE/p$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LE/p$a;
    .locals 1

    new-instance v0, LE/p$a;

    invoke-direct {v0, p0}, LE/p$a;-><init>(LE/p$b;)V

    return-object v0
.end method

.method public e(I)LE/p$a;
    .locals 1

    invoke-super {p0}, LE/d;->b()LE/m;

    move-result-object v0

    check-cast v0, LE/p$a;

    invoke-virtual {v0, p1}, LE/p$a;->b(I)V

    return-object v0
.end method
