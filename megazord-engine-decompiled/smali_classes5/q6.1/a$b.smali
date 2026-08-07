.class public Lq6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq6/a;->r1(Ljava/lang/String;Landroid/view/View;LL4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LT/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/load/engine/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LT/h;

.field public final synthetic e:LI7/a;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:LL4/a$e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/i;Ljava/lang/String;LT/h;LI7/a;Landroid/view/View;LL4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$strategy",
            "val$url",
            "val$options",
            "val$loadingBar",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lq6/a$b;->b:Lcom/bumptech/glide/load/engine/i;

    iput-object p2, p0, Lq6/a$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lq6/a$b;->d:LT/h;

    iput-object p4, p0, Lq6/a$b;->e:LI7/a;

    iput-object p5, p0, Lq6/a$b;->f:Landroid/view/View;

    iput-object p6, p0, Lq6/a$b;->g:LL4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;LU/p;LB/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "LU/p<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "LB/a;",
            "Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LU/p;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "model",
            "target",
            "isFirstResource"
        }
    .end annotation

    iget-object p1, p0, Lq6/a$b;->b:Lcom/bumptech/glide/load/engine/i;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-eq p1, p2, :cond_0

    new-instance p1, Lq6/a$b$a;

    invoke-direct {p1, p0}, Lq6/a$b$a;-><init>(Lq6/a$b;)V

    invoke-static {p1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Ops! something went wrong."

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object p1, p0, Lq6/a$b;->e:LI7/a;

    invoke-virtual {p1}, LI7/a;->o1()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;LU/p;LB/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lq6/a$b;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;LU/p;LB/a;Z)Z

    move-result p1

    return p1
.end method
