.class public LOi/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:F

.field public e:LRi/u$a;

.field public f:LRi/a;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(ZIIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useTiles",
            "tileSizeX",
            "tileSizeZ",
            "cellSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LRi/u$a;->WATERSHED:LRi/u$a;

    iput-object v0, p0, LOi/s;->e:LRi/u$a;

    new-instance v0, LRi/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LRi/a;-><init>(I)V

    iput-object v0, p0, LOi/s;->f:LRi/a;

    iput-boolean v1, p0, LOi/s;->s:Z

    iput-boolean v1, p0, LOi/s;->t:Z

    iput-boolean v1, p0, LOi/s;->u:Z

    iput-boolean v1, p0, LOi/s;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LOi/s;->w:Z

    iput-boolean p1, p0, LOi/s;->a:Z

    iput p2, p0, LOi/s;->b:I

    iput p3, p0, LOi/s;->c:I

    iput p4, p0, LOi/s;->d:F

    return-void
.end method
