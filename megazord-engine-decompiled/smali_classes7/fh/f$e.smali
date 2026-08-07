.class public Lfh/f$e;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f;->q(ILlh/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Llh/c;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Lfh/f;


# direct methods
.method public varargs constructor <init>(Lfh/f;Ljava/lang/String;[Ljava/lang/Object;ILlh/c;IZ)V
    .locals 0

    iput-object p1, p0, Lfh/f$e;->g:Lfh/f;

    iput p4, p0, Lfh/f$e;->c:I

    iput-object p5, p0, Lfh/f$e;->d:Llh/c;

    iput p6, p0, Lfh/f$e;->e:I

    iput-boolean p7, p0, Lfh/f$e;->f:Z

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lfh/f$e;->g:Lfh/f;

    iget-object v0, v0, Lfh/f;->k:Lfh/k;

    iget v1, p0, Lfh/f$e;->c:I

    iget-object v2, p0, Lfh/f$e;->d:Llh/c;

    iget v3, p0, Lfh/f$e;->e:I

    iget-boolean v4, p0, Lfh/f$e;->f:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lfh/k;->c(ILlh/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfh/f$e;->g:Lfh/f;

    iget-object v1, v1, Lfh/f;->s:Lfh/i;

    iget v2, p0, Lfh/f$e;->c:I

    sget-object v3, Lfh/a;->CANCEL:Lfh/a;

    invoke-virtual {v1, v2, v3}, Lfh/i;->o(ILfh/a;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfh/f$e;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lfh/f$e;->g:Lfh/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lfh/f$e;->g:Lfh/f;

    iget-object v1, v1, Lfh/f;->u:Ljava/util/Set;

    iget v2, p0, Lfh/f$e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
