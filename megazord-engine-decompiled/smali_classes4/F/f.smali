.class public final LF/f;
.super LF/d;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, LF/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2}, LF/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 3
    new-instance v0, LF/f$a;

    invoke-direct {v0, p1, p2}, LF/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, LF/d;-><init>(LF/d$c;J)V

    return-void
.end method
