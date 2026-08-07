.class public LGb/b;
.super Lc9/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGb/b$a;
    }
.end annotation


# instance fields
.field public b:LGb/b$a;

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc9/f;-><init>()V

    return-void
.end method

.method public constructor <init>(LGb/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, LGb/b;->b:LGb/b$a;

    return-void
.end method

.method public constructor <init>(LGb/b$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "delaySeconds"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p1, p0, LGb/b;->b:LGb/b$a;

    .line 12
    iput p2, p0, LGb/b;->d:F

    return-void
.end method

.method public constructor <init>(LGb/b$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "delayFrames"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, LGb/b;->b:LGb/b$a;

    .line 8
    iput p2, p0, LGb/b;->c:I

    return-void
.end method


# virtual methods
.method public q()I
    .locals 1

    iget v0, p0, LGb/b;->c:I

    return v0
.end method

.method public r()LGb/b$a;
    .locals 1

    iget-object v0, p0, LGb/b;->b:LGb/b$a;

    return-object v0
.end method

.method public s()Z
    .locals 4

    iget-object v0, p0, LGb/b;->b:LGb/b$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, LGb/b;->c:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    iput v1, p0, LGb/b;->c:I

    return v2

    :cond_1
    iget v1, p0, LGb/b;->d:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    invoke-static {}, Lc9/d;->e()F

    move-result v0

    sub-float/2addr v1, v0

    iput v1, p0, LGb/b;->d:F

    return v2

    :cond_2
    invoke-interface {v0}, LGb/b$a;->run()Z

    move-result v0

    return v0
.end method

.method public u(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayFrames"
        }
    .end annotation

    iput p1, p0, LGb/b;->c:I

    return-void
.end method

.method public v(LGb/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    iput-object p1, p0, LGb/b;->b:LGb/b$a;

    return-void
.end method
