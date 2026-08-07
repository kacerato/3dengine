.class public final Lgf/G$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/G$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic c:Lgf/G$a;


# direct methods
.method public constructor <init>(Lgf/G$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lgf/G$a$b;->c:Lgf/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/G$a$b;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgf/G$a$b;->c:Lgf/G$a;

    iget-object v0, v0, Lgf/G$a;->b:LTe/I;

    iget-object v1, p0, Lgf/G$a$b;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgf/G$a$b;->c:Lgf/G$a;

    iget-object v0, v0, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgf/G$a$b;->c:Lgf/G$a;

    iget-object v1, v1, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v1}, LVe/c;->dispose()V

    throw v0
.end method
