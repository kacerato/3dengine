.class public LL9/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LL9/c;


# direct methods
.method public constructor <init>(LL9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL9/c$a;->b:LL9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0}, LL9/c;->r(LL9/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0}, LL9/c;->t(LL9/c;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0, v2, v3}, LL9/c;->w(LL9/c;J)J

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0}, LL9/c;->x(LL9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0, v1}, LL9/c;->s(LL9/c;Z)Z

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-virtual {v0}, LL9/c;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-virtual {v0}, LL9/c;->q()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0, v2, v3}, LL9/c;->w(LL9/c;J)J

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LL9/c;->y(LL9/c;J)J

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, LL9/c$a$a;

    invoke-direct {v2, p0}, LL9/c$a$a;-><init>(LL9/c$a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0}, LL9/c;->x(LL9/c;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LL9/c$a;->b:LL9/c;

    invoke-static {v0, v1}, LL9/c;->u(LL9/c;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
