.class public LJi/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJi/q;

.field public final b:LJi/a;

.field public final c:LJi/i;

.field public final d:LJi/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJi/q;

    invoke-direct {v0}, LJi/q;-><init>()V

    iput-object v0, p0, LJi/p;->a:LJi/q;

    new-instance v0, LJi/a;

    invoke-direct {v0}, LJi/a;-><init>()V

    iput-object v0, p0, LJi/p;->b:LJi/a;

    new-instance v0, LJi/i;

    invoke-direct {v0}, LJi/i;-><init>()V

    iput-object v0, p0, LJi/p;->c:LJi/i;

    new-instance v0, LJi/o;

    invoke-direct {v0}, LJi/o;-><init>()V

    iput-object v0, p0, LJi/p;->d:LJi/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)[LEi/v;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LJi/p;->a:LJi/q;

    invoke-virtual {v0, p1}, LJi/q;->a(Ljava/io/File;)LJi/d;

    move-result-object p1

    iget-object v0, p1, LJi/d;->a:LJi/j;

    iget-object v1, p1, LJi/d;->c:[LJi/m;

    iget v2, v0, LJi/j;->b:I

    new-array v2, v2, [LEi/v;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, v0, LJi/j;->b:I

    if-ge v4, v6, :cond_2

    iget-object v6, p1, LJi/d;->d:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJi/g;

    iget-object v7, p1, LJi/d;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJi/e;

    iget-object v8, p1, LJi/d;->f:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7}, LJi/e;->a()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_1

    iget-object v9, p0, LJi/p;->b:LJi/a;

    invoke-virtual {v9, v7}, LJi/a;->a(LJi/e;)V

    iget-object v9, p0, LJi/p;->c:LJi/i;

    invoke-virtual {v9, v5, v7, v8}, LJi/i;->a(ILJi/e;Ljava/util/List;)V

    iget-object v8, p0, LJi/p;->d:LJi/o;

    invoke-virtual {v8, v7, v1, v5}, LJi/o;->a(LJi/e;[LJi/m;I)V

    new-instance v8, LEi/y;

    invoke-direct {v8}, LEi/y;-><init>()V

    iget-object v9, v7, LJi/e;->c:[LEi/q;

    array-length v9, v9

    iput v9, v8, LEi/y;->d:I

    const v9, 0x8000

    iput v9, v8, LEi/y;->e:I

    iget v9, v6, LJi/g;->i:F

    iget v10, v6, LJi/g;->c:F

    mul-float/2addr v9, v10

    iput v9, v8, LEi/y;->b:F

    iget v9, v6, LJi/g;->j:F

    mul-float/2addr v9, v10

    iput v9, v8, LEi/y;->c:F

    iget-object v9, v8, LEi/y;->a:[F

    iget-object v10, v6, LJi/g;->n:LHi/d;

    iget v11, v10, LHi/d;->a:F

    const/high16 v12, -0x41000000    # -0.5f

    mul-float/2addr v11, v12

    iget-object v6, v6, LJi/g;->m:LHi/d;

    iget v13, v6, LHi/d;->a:F

    add-float/2addr v11, v13

    aput v11, v9, v3

    iget v11, v10, LHi/d;->b:F

    mul-float/2addr v11, v12

    iget v13, v6, LHi/d;->b:F

    add-float/2addr v11, v13

    const/4 v13, 0x1

    aput v11, v9, v13

    iget v10, v10, LHi/d;->c:F

    mul-float/2addr v10, v12

    iget v6, v6, LHi/d;->c:F

    add-float/2addr v10, v6

    const/4 v6, 0x2

    aput v10, v9, v6

    new-instance v6, LEi/v;

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, LEi/v;-><init>(LEi/y;I)V

    iget-object v8, v7, LJi/e;->c:[LEi/q;

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    const-wide/16 v12, 0x0

    invoke-virtual {v6, v11, v3, v12, v13}, LEi/v;->c(LEi/q;IJ)J

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    aput-object v6, v2, v4

    invoke-virtual {v7}, LJi/e;->a()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent number of nodes in data file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and connecton files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v2
.end method
