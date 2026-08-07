.class public LLi/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/o$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:LLi/o$a;

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public f:F

.field public g:F

.field public final h:[F

.field public final i:[F

.field public final j:[F

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:LLi/f;

.field public o:LLi/o;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, LLi/o;->c:[F

    new-array v1, v0, [F

    iput-object v1, p0, LLi/o;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, LLi/o;->e:[F

    new-array v1, v0, [F

    iput-object v1, p0, LLi/o;->h:[F

    new-array v0, v0, [F

    iput-object v0, p0, LLi/o;->i:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, LLi/o;->j:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LLi/o;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LLi/o;->l:Ljava/util/List;

    sget-object v0, LLi/f;->DT_OBSTACLE_EMPTY:LLi/f;

    iput-object v0, p0, LLi/o;->n:LLi/f;

    const/4 v0, 0x1

    iput v0, p0, LLi/o;->m:I

    iput p1, p0, LLi/o;->a:I

    return-void
.end method
