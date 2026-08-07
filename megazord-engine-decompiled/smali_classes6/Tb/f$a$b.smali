.class public LTb/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTb/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTb/f$a;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:LTb/f$a;


# direct methods
.method public constructor <init>(LTb/f$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalWaitItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTb/f$a$b;->b:LTb/f$a;

    iput-object p2, p0, LTb/f$a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-static {}, LTb/f;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v1

    invoke-virtual {v1, p1}, Lye/O;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v0

    invoke-virtual {v0}, Loe/H;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v0

    invoke-virtual {v0}, Lye/O;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-static {}, LTb/f;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, LTb/f;->g()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, LTb/f$a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lye/O;->Db(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object p1

    invoke-virtual {p1}, Loe/H;->size()I

    move-result p1

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    :goto_0
    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object p1

    invoke-virtual {p1}, Loe/H;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object p1

    new-instance v2, LTb/f$a$b$a;

    invoke-direct {v2, p0}, LTb/f$a$b$a;-><init>(LTb/f$a$b;)V

    invoke-virtual {p1, v2}, Lye/O;->c0(Lze/S;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
