.class public Lkf/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:LTe/f;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;LTe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf/q$d;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lkf/q$d;->b:LTe/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkf/q$d;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkf/q$d;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkf/q$d;->b:LTe/f;

    invoke-interface {v1}, LTe/f;->a()V

    throw v0
.end method
