.class public Lfh/f$f;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f;->u(ILfh/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lfh/a;

.field public final synthetic e:Lfh/f;


# direct methods
.method public varargs constructor <init>(Lfh/f;Ljava/lang/String;[Ljava/lang/Object;ILfh/a;)V
    .locals 0

    iput-object p1, p0, Lfh/f$f;->e:Lfh/f;

    iput p4, p0, Lfh/f$f;->c:I

    iput-object p5, p0, Lfh/f$f;->d:Lfh/a;

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    iget-object v0, p0, Lfh/f$f;->e:Lfh/f;

    iget-object v0, v0, Lfh/f;->k:Lfh/k;

    iget v1, p0, Lfh/f$f;->c:I

    iget-object v2, p0, Lfh/f$f;->d:Lfh/a;

    invoke-interface {v0, v1, v2}, Lfh/k;->a(ILfh/a;)V

    iget-object v0, p0, Lfh/f$f;->e:Lfh/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfh/f$f;->e:Lfh/f;

    iget-object v1, v1, Lfh/f;->u:Ljava/util/Set;

    iget v2, p0, Lfh/f$f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
