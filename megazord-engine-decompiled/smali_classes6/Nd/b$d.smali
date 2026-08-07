.class public final LNd/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNd/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LNd/b;


# direct methods
.method public constructor <init>(LNd/b;)V
    .locals 0

    iput-object p1, p0, LNd/b$d;->b:LNd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LNd/b$d;->b:LNd/b;

    invoke-virtual {v1}, LNd/b;->getIndeterminateMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, LNd/b$d;->b:LNd/b;

    invoke-static {v1}, LNd/b;->e(LNd/b;)V

    iget-object v1, v0, LNd/b$d;->b:LNd/b;

    invoke-static {v1}, LNd/b;->a(LNd/b;)LNd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, LNd/b;->f(LNd/b;LNd/b$c;)LNd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, LNd/b;->g(LNd/b;LNd/b$c;)V

    iget-object v1, v0, LNd/b$d;->b:LNd/b;

    invoke-static {v1}, LNd/b;->a(LNd/b;)LNd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, LNd/b;->d(LNd/b;LNd/b$c;)Z

    move-result v1

    const-wide/16 v2, 0x5dc

    if-eqz v1, :cond_0

    iget-object v4, v0, LNd/b$d;->b:LNd/b;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, LNd/b;->v(LNd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v11, v0, LNd/b$d;->b:LNd/b;

    invoke-virtual {v11}, LNd/b;->getProgressMax()F

    move-result v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, LNd/b;->v(LNd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
