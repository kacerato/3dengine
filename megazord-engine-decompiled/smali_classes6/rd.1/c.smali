.class public abstract Lrd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lrd/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formatAllowed",
            "eventListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lrd/c$a;

    invoke-direct {v0, p1}, Lrd/c$a;-><init>(Lrd/g;)V

    invoke-static {p0, v0}, LP5/a;->w1(Ljava/lang/String;LP5/a$i;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;Lrd/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pathExample",
            "activity",
            "eventListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lrd/c$b;

    invoke-direct {v0, p2, p1, p0}, Lrd/c$b;-><init>(Lrd/g;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lqd/b;->v(Landroid/app/Activity;Lqd/a;)V

    :cond_0
    return-void
.end method
