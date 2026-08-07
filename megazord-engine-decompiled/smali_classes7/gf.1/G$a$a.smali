.class public final Lgf/G$a$a;
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
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lgf/G$a;


# direct methods
.method public constructor <init>(Lgf/G$a;)V
    .locals 0

    iput-object p1, p0, Lgf/G$a$a;->b:Lgf/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgf/G$a$a;->b:Lgf/G$a;

    iget-object v0, v0, Lgf/G$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgf/G$a$a;->b:Lgf/G$a;

    iget-object v0, v0, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgf/G$a$a;->b:Lgf/G$a;

    iget-object v1, v1, Lgf/G$a;->e:LTe/J$c;

    invoke-interface {v1}, LVe/c;->dispose()V

    throw v0
.end method
