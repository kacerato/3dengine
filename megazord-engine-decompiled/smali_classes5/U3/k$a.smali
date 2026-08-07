.class public LU3/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LU3/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public final synthetic b:LU3/k;


# direct methods
.method public constructor <init>(LU3/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LU3/k$a;->b:LU3/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, LU3/k$a;->a:F

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 5

    iget-object v0, p0, LU3/k$a;->b:LU3/k;

    invoke-static {v0}, LU3/k;->a(LU3/k;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU3/k$a;->b:LU3/k;

    invoke-static {v1}, LU3/k;->b(LU3/k;)LGb/b$a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU3/k$a;->b:LU3/k;

    invoke-static {v1}, LU3/k;->b(LU3/k;)LGb/b$a;

    move-result-object v1

    if-eq p0, v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, LU3/k$a;->b:LU3/k;

    iget-boolean v1, v1, LU3/k;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget v1, p0, LU3/k$a;->a:F

    invoke-static {}, Lc9/d;->e()F

    move-result v3

    add-float/2addr v1, v3

    iput v1, p0, LU3/k$a;->a:F

    iget-object v3, p0, LU3/k$a;->b:LU3/k;

    invoke-virtual {v3}, LU3/k;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    iput v1, p0, LU3/k$a;->a:F

    new-instance v1, LU3/k$a$a;

    invoke-direct {v1, p0}, LU3/k$a$a;-><init>(LU3/k$a;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_3
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
