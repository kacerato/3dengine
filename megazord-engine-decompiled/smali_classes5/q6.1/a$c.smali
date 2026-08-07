.class public Lq6/a$c;
.super LU/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq6/a;->q1(Ljava/io/File;Landroid/view/View;LL4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LU/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:LI7/a;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:LL4/a$e;


# direct methods
.method public constructor <init>(LI7/a;Landroid/view/View;LL4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$loadingBar",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    iput-object p1, p0, Lq6/a$c;->e:LI7/a;

    iput-object p2, p0, Lq6/a$c;->f:Landroid/view/View;

    iput-object p3, p0, Lq6/a$c;->g:LL4/a$e;

    invoke-direct {p0}, LU/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;LV/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lq6/a$c;->d(Landroid/graphics/Bitmap;LV/f;)V

    return-void
.end method

.method public d(Landroid/graphics/Bitmap;LV/f;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "LV/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lq6/a$c;->e:LI7/a;

    invoke-virtual {p2}, LI7/a;->o1()V

    new-instance p2, Lq6/a;

    invoke-direct {p2, p1}, Lq6/a;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lq6/a$c;->f:Landroid/view/View;

    iget-object v0, p0, Lq6/a$c;->g:LL4/a$e;

    invoke-static {p2, p1, v0}, Lq6/a;->o1(Lq6/a;Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholder"
        }
    .end annotation

    return-void
.end method
