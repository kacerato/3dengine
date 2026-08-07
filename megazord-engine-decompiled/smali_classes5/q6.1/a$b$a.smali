.class public Lq6/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq6/a$b;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LU/p;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq6/a$b;


# direct methods
.method public constructor <init>(Lq6/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lq6/a$b$a;->b:Lq6/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lq6/a$b$a;->b:Lq6/a$b;

    iget-object v1, v1, Lq6/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->v1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, LB/b;->PREFER_RGB_565:LB/b;

    invoke-virtual {v0, v1}, LT/a;->A(LB/b;)LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v1}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lq6/a$b$a;->b:Lq6/a$b;

    iget-object v1, v1, Lq6/a$b;->d:LT/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    new-instance v1, Lq6/a$b$a$b;

    invoke-direct {v1, p0}, Lq6/a$b$a$b;-><init>(Lq6/a$b$a;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->o1(LT/g;)Lcom/bumptech/glide/j;

    move-result-object v0

    new-instance v1, Lq6/a$b$a$a;

    invoke-direct {v1, p0}, Lq6/a$b$a$a;-><init>(Lq6/a$b$a;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->j1(LU/p;)LU/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lq6/a$b$a;->b:Lq6/a$b;

    iget-object v0, v0, Lq6/a$b;->e:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    :goto_0
    return-void
.end method
