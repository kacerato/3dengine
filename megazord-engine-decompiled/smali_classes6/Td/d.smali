.class public LTd/d;
.super LSd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTd/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSd/c<",
        "LTd/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, LSd/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)LTd/d$a;
    .locals 1

    new-instance v0, LTd/d$a;

    invoke-direct {v0, p0}, LTd/d$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
