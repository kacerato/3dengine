.class public Lcom/bumptech/glide/j;
.super LT/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "LT/a<",
        "Lcom/bumptech/glide/j<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/g<",
        "Lcom/bumptech/glide/j<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field public static final e1:LT/h;


# instance fields
.field public D0:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final W:Landroid/content/Context;

.field public final X:Lcom/bumptech/glide/k;

.field public X0:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LT/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public final Y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public Y0:Lcom/bumptech/glide/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final Z:Lcom/bumptech/glide/b;

.field public Z0:Lcom/bumptech/glide/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public a1:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b1:Z

.field public c1:Z

.field public d1:Z

.field public final q0:Lcom/bumptech/glide/d;

.field public v0:Lcom/bumptech/glide/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->c:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v1}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sget-object v1, Lcom/bumptech/glide/h;->LOW:Lcom/bumptech/glide/h;

    invoke-virtual {v0, v1}, LT/a;->C0(Lcom/bumptech/glide/h;)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LT/a;->K0(Z)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, Lcom/bumptech/glide/j;->e1:LT/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/k;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LT/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/j;->b1:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/j;->Z:Lcom/bumptech/glide/b;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/j;->X:Lcom/bumptech/glide/k;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/j;->Y:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/j;->W:Landroid/content/Context;

    .line 7
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/k;->C(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->j()Lcom/bumptech/glide/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/j;->q0:Lcom/bumptech/glide/d;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/k;->A()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->h1(Ljava/util/List;)V

    .line 10
    invoke-virtual {p2}, Lcom/bumptech/glide/k;->B()LT/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/j<",
            "*>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p2, Lcom/bumptech/glide/j;->Z:Lcom/bumptech/glide/b;

    iget-object v1, p2, Lcom/bumptech/glide/j;->X:Lcom/bumptech/glide/k;

    iget-object v2, p2, Lcom/bumptech/glide/j;->W:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V

    .line 12
    iget-object p1, p2, Lcom/bumptech/glide/j;->D0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/j;->D0:Ljava/lang/Object;

    .line 13
    iget-boolean p1, p2, Lcom/bumptech/glide/j;->c1:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->c1:Z

    .line 14
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    return-void
.end method


# virtual methods
.method public A1()LU/p;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LU/p<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->B1(II)LU/p;

    move-result-object v0

    return-object v0
.end method

.method public B1(II)LU/p;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LU/p<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->X:Lcom/bumptech/glide/k;

    invoke-static {v0, p1, p2}, LU/m;->f(Lcom/bumptech/glide/k;II)LU/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->j1(LU/p;)LU/p;

    move-result-object p1

    return-object p1
.end method

.method public C1()LT/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->D1(II)LT/c;

    move-result-object v0

    return-object v0
.end method

.method public D1(II)LT/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LT/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, LT/f;

    invoke-direct {v0, p1, p2}, LT/f;-><init>(II)V

    invoke-static {}, LX/e;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/bumptech/glide/j;->l1(LU/p;LT/g;Ljava/util/concurrent/Executor;)LU/p;

    move-result-object p1

    check-cast p1, LT/c;

    return-object p1
.end method

.method public E1(F)Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/j;->a1:Ljava/lang/Float;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public varargs G1([Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # [Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->F1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->F1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->F1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public H1(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/l;

    iput-object p1, p0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->b1:Z

    return-object p0
.end method

.method public W0(LT/g;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/j;->X0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->X0:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->X0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public X0(LT/a;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # LT/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT/a<",
            "*>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, LT/a;->a(LT/a;)LT/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    return-object p1
.end method

.method public final Y0(LU/p;LT/g;LT/a;Ljava/util/concurrent/Executor;)LT/d;
    .locals 11
    .param p2    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU/p<",
            "TTranscodeType;>;",
            "LT/g<",
            "TTranscodeType;>;",
            "LT/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LT/d;"
        }
    .end annotation

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    invoke-virtual {p3}, LT/a;->N()Lcom/bumptech/glide/h;

    move-result-object v6

    invoke-virtual {p3}, LT/a;->K()I

    move-result v7

    invoke-virtual {p3}, LT/a;->J()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->Z0(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;
    .locals 23
    .param p3    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # LT/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LU/p<",
            "TTranscodeType;>;",
            "LT/g<",
            "TTranscodeType;>;",
            "LT/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "LT/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LT/d;"
        }
    .end annotation

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    new-instance v0, LT/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, LT/b;-><init>(Ljava/lang/Object;LT/e;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->a1(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, LT/a;->K()I

    move-result v1

    iget-object v2, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, LT/a;->J()I

    move-result v2

    invoke-static/range {p7 .. p8}, LX/m;->v(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    invoke-virtual {v3}, LT/a;->l0()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p9 .. p9}, LT/a;->K()I

    move-result v1

    invoke-virtual/range {p9 .. p9}, LT/a;->J()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    iget-object v12, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    iget-object v1, v12, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    invoke-virtual {v12}, LT/a;->N()Lcom/bumptech/glide/h;

    move-result-object v18

    iget-object v2, v11, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    invoke-virtual/range {v12 .. v22}, Lcom/bumptech/glide/j;->Z0(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, LT/b;->o(LT/d;LT/d;)V

    return-object v3
.end method

.method public bridge synthetic a(LT/a;)LT/a;
    .locals 0
    .param p1    # LT/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public final a1(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;
    .locals 18
    .param p4    # LT/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LU/p<",
            "TTranscodeType;>;",
            "LT/g<",
            "TTranscodeType;>;",
            "LT/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "LT/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LT/d;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    iget-object v0, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_4

    iget-boolean v1, v11, Lcom/bumptech/glide/j;->d1:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    iget-boolean v2, v0, Lcom/bumptech/glide/j;->b1:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    invoke-virtual {v0}, LT/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, LT/a;->N()Lcom/bumptech/glide/h;

    move-result-object v0

    :goto_1
    move-object v15, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v11, v13}, Lcom/bumptech/glide/j;->g1(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, LT/a;->K()I

    move-result v0

    iget-object v1, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, LT/a;->J()I

    move-result v1

    invoke-static/range {p7 .. p8}, LX/m;->v(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, LT/a;->l0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p9 .. p9}, LT/a;->K()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, LT/a;->J()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    new-instance v10, LT/k;

    invoke-direct {v10, v12, v5}, LT/k;-><init>(Ljava/lang/Object;LT/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->z1(Ljava/lang/Object;LU/p;LT/g;LT/a;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)LT/d;

    move-result-object v10

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/bumptech/glide/j;->d1:Z

    iget-object v9, v11, Lcom/bumptech/glide/j;->Y0:Lcom/bumptech/glide/j;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->Z0(Ljava/lang/Object;LU/p;LT/g;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILT/a;Ljava/util/concurrent/Executor;)LT/d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/bumptech/glide/j;->d1:Z

    invoke-virtual {v13, v12, v0}, LT/k;->n(LT/d;LT/d;)V

    return-object v13

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/j;->a1:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v14, LT/k;

    invoke-direct {v14, v12, v5}, LT/k;-><init>(Ljava/lang/Object;LT/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->z1(Ljava/lang/Object;LU/p;LT/g;LT/a;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)LT/d;

    move-result-object v15

    invoke-virtual/range {p9 .. p9}, LT/a;->i()LT/a;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/j;->a1:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, LT/a;->J0(F)LT/a;

    move-result-object v4

    invoke-virtual {v11, v13}, Lcom/bumptech/glide/j;->g1(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->z1(Ljava/lang/Object;LU/p;LT/g;LT/a;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)LT/d;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, LT/k;->n(LT/d;LT/d;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->z1(Ljava/lang/Object;LU/p;LT/g;LT/a;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)LT/d;

    move-result-object v0

    return-object v0
.end method

.method public b1()Lcom/bumptech/glide/j;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, LT/a;->i()LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    iget-object v1, v0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/l;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/j;->v0:Lcom/bumptech/glide/l;

    return-object v0
.end method

.method public c1(II)LT/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LT/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->f1()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/j;->D1(II)LT/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->b1()Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->r1(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public d1(LU/p;)LU/p;
    .locals 1
    .param p1    # LU/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "LU/p<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->f1()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->j1(LU/p;)LU/p;

    move-result-object p1

    return-object p1
.end method

.method public e1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->Z0:Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public bridge synthetic f(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->q1(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public f1()Lcom/bumptech/glide/j;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/j;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/j;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V

    sget-object v1, Lcom/bumptech/glide/j;->e1:LT/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->p1(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public final g1(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 2
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/j$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LT/a;->N()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/h;->IMMEDIATE:Lcom/bumptech/glide/h;

    return-object p1

    :cond_2
    sget-object p1, Lcom/bumptech/glide/h;->HIGH:Lcom/bumptech/glide/h;

    return-object p1

    :cond_3
    sget-object p1, Lcom/bumptech/glide/h;->NORMAL:Lcom/bumptech/glide/h;

    return-object p1
.end method

.method public final h1(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LT/g<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/g;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->W0(LT/g;)Lcom/bumptech/glide/j;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic i()LT/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->b1()Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public i1(II)LT/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LT/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/j;->D1(II)LT/c;

    move-result-object p1

    return-object p1
.end method

.method public j1(LU/p;)LU/p;
    .locals 2
    .param p1    # LU/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "LU/p<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LX/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/j;->l1(LU/p;LT/g;Ljava/util/concurrent/Executor;)LU/p;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LU/p;LT/g;LT/a;Ljava/util/concurrent/Executor;)LU/p;
    .locals 1
    .param p1    # LU/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "LU/p<",
            "TTranscodeType;>;>(TY;",
            "LT/g<",
            "TTranscodeType;>;",
            "LT/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bumptech/glide/j;->c1:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/j;->Y0(LU/p;LT/g;LT/a;Ljava/util/concurrent/Executor;)LT/d;

    move-result-object p2

    invoke-interface {p1}, LU/p;->getRequest()LT/d;

    move-result-object p4

    invoke-interface {p2, p4}, LT/d;->h(LT/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/bumptech/glide/j;->n1(LT/a;LT/d;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p4}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LT/d;

    invoke-interface {p2}, LT/d;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p4}, LT/d;->i()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/j;->X:Lcom/bumptech/glide/k;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->w(LU/p;)V

    invoke-interface {p1, p2}, LU/p;->e(LT/d;)V

    iget-object p3, p0, Lcom/bumptech/glide/j;->X:Lcom/bumptech/glide/k;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/k;->W(LU/p;LT/d;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l1(LU/p;LT/g;Ljava/util/concurrent/Executor;)LU/p;
    .locals 0
    .param p1    # LU/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "LU/p<",
            "TTranscodeType;>;>(TY;",
            "LT/g<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/j;->k1(LU/p;LT/g;LT/a;Ljava/util/concurrent/Executor;)LU/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->s1(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->w1(Ljava/net/URL;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->x1([B)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->u1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public m1(Landroid/widget/ImageView;)LU/r;
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "LU/r<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, LX/m;->b()V

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LT/a;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LT/a;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/j$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, LT/a;->i()LT/a;

    move-result-object v0

    invoke-virtual {v0}, LT/a;->q0()LT/a;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, LT/a;->i()LT/a;

    move-result-object v0

    invoke-virtual {v0}, LT/a;->s0()LT/a;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, LT/a;->i()LT/a;

    move-result-object v0

    invoke-virtual {v0}, LT/a;->q0()LT/a;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, LT/a;->i()LT/a;

    move-result-object v0

    invoke-virtual {v0}, LT/a;->p0()LT/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/j;->q0:Lcom/bumptech/glide/d;

    iget-object v2, p0, Lcom/bumptech/glide/j;->Y:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;Ljava/lang/Class;)LU/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {}, LX/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/j;->k1(LU/p;LT/g;LT/a;Ljava/util/concurrent/Executor;)LU/p;

    move-result-object p1

    check-cast p1, LU/r;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic n(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->t1(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public final n1(LT/a;LT/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT/a<",
            "*>;",
            "LT/d;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, LT/a;->Y()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, LT/d;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic o(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->v1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public o1(LT/g;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # LT/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/j;->X0:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->W0(LT/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public p1(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v0}, LT/h;->b1(Lcom/bumptech/glide/load/engine/i;)LT/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public q1(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v0}, LT/h;->b1(Lcom/bumptech/glide/load/engine/i;)LT/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public r1(Landroid/net/Uri;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public s1(Ljava/io/File;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public t1(Ljava/lang/Integer;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/j;->W:Landroid/content/Context;

    invoke-static {v0}, LW/a;->a(Landroid/content/Context;)LB/e;

    move-result-object v0

    invoke-static {v0}, LT/h;->s1(LB/e;)LT/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public u1(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public v1(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/net/URL;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public x1([B)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1}, LT/a;->W()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v0}, LT/h;->b1(Lcom/bumptech/glide/load/engine/i;)LT/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, LT/a;->h0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, LT/h;->u1(Z)LT/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final y1(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->D0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->c1:Z

    return-object p0
.end method

.method public final z1(Ljava/lang/Object;LU/p;LT/g;LT/a;LT/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)LT/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LU/p<",
            "TTranscodeType;>;",
            "LT/g<",
            "TTranscodeType;>;",
            "LT/a<",
            "*>;",
            "LT/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LT/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/j;->W:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/j;->q0:Lcom/bumptech/glide/d;

    iget-object v4, v0, Lcom/bumptech/glide/j;->D0:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/j;->Y:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/j;->X0:Ljava/util/List;

    invoke-virtual {v2}, Lcom/bumptech/glide/d;->f()Lcom/bumptech/glide/load/engine/j;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/l;->c()LV/g;

    move-result-object v15

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    invoke-static/range {v1 .. v16}, LT/j;->x(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LT/a;IILcom/bumptech/glide/h;LU/p;LT/g;Ljava/util/List;LT/e;Lcom/bumptech/glide/load/engine/j;LV/g;Ljava/util/concurrent/Executor;)LT/j;

    move-result-object v1

    return-object v1
.end method
