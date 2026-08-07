.class public LO5/e$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO5/e$i;


# direct methods
.method public constructor <init>(LO5/e$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO5/e$i$a;->b:LO5/e$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LO5/e$i$a;->b:LO5/e$i;

    iget-object v0, v0, LO5/e$i;->b:LO5/e;

    invoke-static {v0}, LO5/e;->r1(LO5/e;)LX7/l;

    move-result-object v0

    invoke-virtual {v0}, LX7/l;->v()V

    iget-object v0, p0, LO5/e$i$a;->b:LO5/e$i;

    iget-object v0, v0, LO5/e$i;->b:LO5/e;

    invoke-static {v0}, LO5/e;->E1(LO5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, LO5/e$i$a;->b:LO5/e$i;

    iget-object v1, v1, LO5/e$i;->b:LO5/e;

    invoke-static {v1}, LO5/e;->F1(LO5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, LO5/e$i$a;->b:LO5/e$i;

    iget-object v0, v0, LO5/e$i;->b:LO5/e;

    invoke-static {v0}, LO5/e;->G1(LO5/e;)V

    iget-object v0, p0, LO5/e$i$a;->b:LO5/e$i;

    iget-object v0, v0, LO5/e$i;->b:LO5/e;

    invoke-static {v0}, LO5/e;->E1(LO5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
