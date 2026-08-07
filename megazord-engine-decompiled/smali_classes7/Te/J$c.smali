.class public abstract LTe/J$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTe/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTe/J$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation
.end method

.method public e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 17
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p6

    new-instance v14, LYe/h;

    invoke-direct {v14}, LYe/h;-><init>()V

    new-instance v15, LYe/h;

    invoke-direct {v15, v14}, LYe/h;-><init>(LVe/c;)V

    invoke-static/range {p1 .. p1}, Lqf/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0}, LTe/J$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long v2, v5, v0

    new-instance v7, LTe/J$c$a;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v16, v14

    move-object v14, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v9}, LTe/J$c$a;-><init>(LTe/J$c;JLjava/lang/Runnable;JLYe/h;J)V

    invoke-virtual {v10, v14, v11, v12, v13}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v0

    sget-object v1, LYe/e;->INSTANCE:LYe/e;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    return-object v15
.end method
