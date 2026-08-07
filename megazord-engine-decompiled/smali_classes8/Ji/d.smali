.class public LJi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJi/j;

.field public final b:[I

.field public final c:[LJi/m;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJi/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJi/e;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJi/j;[I[LJi/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "meta",
            "indexToNode",
            "nodeLinks2",
            "graphMeta",
            "graphMeshData",
            "graphConnections"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJi/j;",
            "[I[",
            "LJi/m;",
            "Ljava/util/List<",
            "LJi/g;",
            ">;",
            "Ljava/util/List<",
            "LJi/e;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[I>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJi/d;->a:LJi/j;

    iput-object p2, p0, LJi/d;->b:[I

    iput-object p3, p0, LJi/d;->c:[LJi/m;

    iput-object p4, p0, LJi/d;->d:Ljava/util/List;

    iput-object p5, p0, LJi/d;->e:Ljava/util/List;

    iput-object p6, p0, LJi/d;->f:Ljava/util/List;

    return-void
.end method
