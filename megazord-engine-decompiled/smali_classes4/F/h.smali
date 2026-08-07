.class public final LF/h;
.super LF/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "image_manager_disk_cache"

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1, v2}, LF/h;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 2
    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2, p3}, LF/h;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 3
    new-instance v0, LF/h$a;

    invoke-direct {v0, p1, p2}, LF/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, LF/d;-><init>(LF/d$c;J)V

    return-void
.end method
