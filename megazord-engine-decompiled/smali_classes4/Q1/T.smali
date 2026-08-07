.class public final synthetic LQ1/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/e;


# instance fields
.field public final synthetic a:LD1/a;

.field public final synthetic b:LQ1/l;

.field public final synthetic c:LQ1/v;


# direct methods
.method public synthetic constructor <init>(LD1/a;LQ1/l;LQ1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/T;->a:LD1/a;

    iput-object p2, p0, LQ1/T;->b:LQ1/l;

    iput-object p3, p0, LQ1/T;->c:LQ1/v;

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)V
    .locals 2

    iget-object v0, p0, LQ1/T;->a:LD1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, LQ1/T;->b:LQ1/l;

    invoke-virtual {p1}, LQ1/k;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LQ1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, LQ1/k;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, LQ1/T;->c:LQ1/v;

    invoke-virtual {p1}, LQ1/v;->c()V

    return-void

    :cond_1
    invoke-virtual {p1}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
