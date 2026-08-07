.class public Lna/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lna/k;->b:Z

    iput-boolean v0, p0, Lna/k;->c:Z

    iput-boolean v0, p0, Lna/k;->d:Z

    iput-boolean v0, p0, Lna/k;->e:Z

    iput-boolean v0, p0, Lna/k;->f:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lna/k;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lna/k;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lna/k;->d:Z

    return v0
.end method

.method public d(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    iput-boolean p1, p0, Lna/k;->a:Z

    return-void
.end method

.method public e()Z
    .locals 4

    iget-boolean v0, p0, Lna/k;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lna/k;->b:Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lna/k;->d:Z

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lna/k;->d:Z

    move v0, v1

    :cond_1
    iget-boolean v3, p0, Lna/k;->a:Z

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Lna/k;->f:Z

    iget-boolean v3, p0, Lna/k;->b:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lna/k;->c:Z

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lna/k;->b:Z

    iput-boolean v1, p0, Lna/k;->c:Z

    iput-boolean v2, p0, Lna/k;->e:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lna/k;->c:Z

    iget-boolean v3, p0, Lna/k;->d:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lna/k;->e:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lna/k;->f:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lna/k;->d:Z

    iput-boolean v2, p0, Lna/k;->f:Z

    iput-boolean v1, p0, Lna/k;->e:Z

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method
