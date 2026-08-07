.class public LOi/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LRi/h;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRi/h;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightfield",
            "colliders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRi/h;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOi/v;->b:Ljava/util/Set;

    invoke-virtual {p0, p1}, LOi/v;->a(LRi/h;)LRi/h;

    move-result-object p1

    iput-object p1, p0, LOi/v;->a:LRi/h;

    return-void
.end method


# virtual methods
.method public final a(LRi/h;)LRi/h;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    new-instance v8, LRi/h;

    iget v1, p1, LRi/h;->a:I

    iget v2, p1, LRi/h;->b:I

    iget-object v0, p1, LRi/h;->c:[F

    invoke-static {v0}, LEi/g;->y([F)[F

    move-result-object v3

    iget-object v0, p1, LRi/h;->d:[F

    invoke-static {v0}, LEi/g;->y([F)[F

    move-result-object v4

    iget v5, p1, LRi/h;->e:F

    iget v6, p1, LRi/h;->f:F

    iget v7, p1, LRi/h;->h:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LRi/h;-><init>(II[F[FFFI)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p1, LRi/h;->b:I

    if-ge v1, v3, :cond_3

    move v3, v0

    :goto_1
    iget v4, p1, LRi/h;->a:I

    if-ge v3, v4, :cond_2

    iget-object v4, p1, LRi/h;->g:[LRi/K;

    add-int v5, v2, v3

    aget-object v4, v4, v5

    const/4 v6, 0x0

    :goto_2
    if-eqz v4, :cond_1

    new-instance v7, LRi/K;

    invoke-direct {v7}, LRi/K;-><init>()V

    iget v9, v4, LRi/K;->a:I

    iput v9, v7, LRi/K;->a:I

    iget v9, v4, LRi/K;->b:I

    iput v9, v7, LRi/K;->b:I

    iget v9, v4, LRi/K;->c:I

    iput v9, v7, LRi/K;->c:I

    if-nez v6, :cond_0

    iget-object v6, v8, LRi/h;->g:[LRi/K;

    aput-object v7, v6, v5

    goto :goto_3

    :cond_0
    iput-object v7, v6, LRi/K;->d:LRi/K;

    :goto_3
    iget-object v4, v4, LRi/K;->d:LRi/K;

    move-object v6, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return-object v8
.end method
