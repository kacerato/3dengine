.class public LNb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LNb/b;


# direct methods
.method public constructor <init>(LNb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LNb/b$a;->b:LNb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LNb/b$a;->b:LNb/b;

    invoke-static {v0}, LNb/b;->c(LNb/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LNb/b$a;->b:LNb/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LNb/b;->d(LNb/b;Z)Z

    iget-object v1, p0, LNb/b$a;->b:LNb/b;

    invoke-static {v1}, LNb/b;->e(LNb/b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, LNb/b$a;->b:LNb/b;

    invoke-static {v1}, LNb/b;->g(LNb/b;)I

    move-result v2

    iget-object v3, p0, LNb/b$a;->b:LNb/b;

    invoke-static {v3}, LNb/b;->e(LNb/b;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, LNb/b;->h(LNb/b;I)I

    iget-object v1, p0, LNb/b$a;->b:LNb/b;

    const/4 v2, -0x1

    invoke-static {v1, v2}, LNb/b;->f(LNb/b;I)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
