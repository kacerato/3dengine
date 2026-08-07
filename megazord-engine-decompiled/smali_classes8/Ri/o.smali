.class public final synthetic LRi/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LRi/p;

.field public final synthetic c:LSi/c;

.field public final synthetic d:LRi/t;

.field public final synthetic e:[F

.field public final synthetic f:[F

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(LRi/p;LSi/c;LRi/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/o;->b:LRi/p;

    iput-object p2, p0, LRi/o;->c:LSi/c;

    iput-object p3, p0, LRi/o;->d:LRi/t;

    iput-object p4, p0, LRi/o;->e:[F

    iput-object p5, p0, LRi/o;->f:[F

    iput p6, p0, LRi/o;->g:I

    iput p7, p0, LRi/o;->h:I

    iput-object p8, p0, LRi/o;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p9, p0, LRi/o;->j:I

    iput p10, p0, LRi/o;->k:I

    iput-object p11, p0, LRi/o;->l:Ljava/util/List;

    iput-object p12, p0, LRi/o;->m:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, LRi/o;->b:LRi/p;

    iget-object v1, p0, LRi/o;->c:LSi/c;

    iget-object v2, p0, LRi/o;->d:LRi/t;

    iget-object v3, p0, LRi/o;->e:[F

    iget-object v4, p0, LRi/o;->f:[F

    iget v5, p0, LRi/o;->g:I

    iget v6, p0, LRi/o;->h:I

    iget-object v7, p0, LRi/o;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v8, p0, LRi/o;->j:I

    iget v9, p0, LRi/o;->k:I

    iget-object v10, p0, LRi/o;->l:Ljava/util/List;

    iget-object v11, p0, LRi/o;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v11}, LRi/p;->a(LRi/p;LSi/c;LRi/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
