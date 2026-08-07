.class public LU3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LU3/j;

.field public b:I

.field public c:Z

.field public d:Lf8/c$g;

.field public final e:Ljava/lang/Object;

.field public f:LGb/b;

.field public g:LGb/b$a;


# direct methods
.method public constructor <init>(LU3/j;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatListener",
            "delay"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LU3/k;->c:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LU3/k;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, LU3/k;->a:LU3/j;

    .line 5
    iput p2, p0, LU3/k;->b:I

    return-void
.end method

.method public constructor <init>(LU3/j;ILf8/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repeatListener",
            "delay",
            "allowedPage"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LU3/k;->c:Z

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LU3/k;->e:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, LU3/k;->a:LU3/j;

    .line 10
    iput p2, p0, LU3/k;->b:I

    .line 11
    iput-object p3, p0, LU3/k;->d:Lf8/c$g;

    return-void
.end method

.method public static synthetic a(LU3/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LU3/k;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(LU3/k;)LGb/b$a;
    .locals 0

    iget-object p0, p0, LU3/k;->g:LGb/b$a;

    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, LU3/k;->b:I

    return v0
.end method

.method public d()LU3/j;
    .locals 1

    iget-object v0, p0, LU3/k;->a:LU3/j;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LU3/k;->f:LGb/b;

    if-nez v0, :cond_0

    new-instance v0, LU3/k$a;

    invoke-direct {v0, p0}, LU3/k$a;-><init>(LU3/k;)V

    iput-object v0, p0, LU3/k;->g:LGb/b$a;

    new-instance v1, LGb/b;

    invoke-direct {v1, v0}, LGb/b;-><init>(LGb/b$a;)V

    iput-object v1, p0, LU3/k;->f:LGb/b;

    invoke-static {v1}, Lc9/a;->H(LGb/b;)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    iput p1, p0, LU3/k;->b:I

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, LU3/k;->i()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g(LU3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatListener"
        }
    .end annotation

    iput-object p1, p0, LU3/k;->a:LU3/j;

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, LU3/k;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, LU3/k;->c:Z

    invoke-virtual {p0}, LU3/k;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, LU3/k;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, LU3/k;->f:LGb/b;

    iput-object v1, p0, LU3/k;->g:LGb/b$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, LU3/k;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
