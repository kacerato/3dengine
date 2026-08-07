.class public final synthetic Lxd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lxd/j;

.field public final synthetic c:Lokhttp3/z;

.field public final synthetic d:Lokhttp3/C;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lxd/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd/i;->b:Lxd/j;

    iput-object p2, p0, Lxd/i;->c:Lokhttp3/z;

    iput-object p3, p0, Lxd/i;->d:Lokhttp3/C;

    iput-object p4, p0, Lxd/i;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lxd/i;->b:Lxd/j;

    iget-object v1, p0, Lxd/i;->c:Lokhttp3/z;

    iget-object v2, p0, Lxd/i;->d:Lokhttp3/C;

    iget-object v3, p0, Lxd/i;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lxd/j;->c(Lxd/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
