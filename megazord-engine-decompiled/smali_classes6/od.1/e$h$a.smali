.class public Lod/e$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lod/e$h;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LU/p;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lod/e$h;


# direct methods
.method public constructor <init>(Lod/e$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lod/e$h$a;->b:Lod/e$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lod/e$h$a;->b:Lod/e$h;

    iget-object v0, v0, Lod/e$h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, Lod/e$h$a;->b:Lod/e$h;

    iget-object v1, v1, Lod/e$h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, LB/b;->PREFER_RGB_565:LB/b;

    invoke-virtual {v0, v1}, LT/a;->A(LB/b;)LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v1}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lod/e$h$a;->b:Lod/e$h;

    iget-object v1, v1, Lod/e$h;->d:LT/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lod/e$h$a;->b:Lod/e$h;

    iget-object v1, v1, Lod/e$h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->m1(Landroid/widget/ImageView;)LU/r;

    return-void
.end method
