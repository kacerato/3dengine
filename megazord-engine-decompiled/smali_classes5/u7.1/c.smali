.class public Lu7/c;
.super Lbd/m;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Lu7/b;

.field public c:F


# direct methods
.method public constructor <init>(Lu7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    invoke-direct {p0}, Lbd/m;-><init>()V

    iput-object p1, p0, Lu7/c;->b:Lu7/b;

    invoke-static {p0}, Lu7/d;->a(Lu7/c;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lu7/c;->c:F

    return-void
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lu7/c;->c:F

    return v0
.end method

.method public s(F)Lu7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    iput p1, p0, Lu7/c;->c:F

    return-object p0
.end method

.method public u(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    iput p1, p0, Lu7/c;->c:F

    return-void
.end method
