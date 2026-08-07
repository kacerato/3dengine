.class public Lq6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Y:Ljava/lang/String; = "ViewMediaPanel"


# instance fields
.field public final X:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    iput-object p1, p0, Lq6/a;->X:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic o1(Lq6/a;Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    invoke-static {p0, p1, p2}, Lq6/a;->p1(Lq6/a;Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static p1(Lq6/a;Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel",
            "anchor",
            "anchorSide"
        }
    .end annotation

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p1}, LL4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d1()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()V

    return-object p0
.end method

.method public static q1(Ljava/io/File;Landroid/view/View;LL4/a$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "anchor",
            "anchorSide"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object v0

    new-instance v1, LT/h;

    invoke-direct {v1}, LT/h;-><init>()V

    const v2, 0x7f070114

    invoke-virtual {v1, v2}, LT/a;->z0(I)LT/a;

    move-result-object v1

    check-cast v1, LT/h;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, LT/a;->u(I)LT/a;

    move-result-object v1

    check-cast v1, LT/h;

    sget-object v2, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/bumptech/glide/j;->s1(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v3, LB/b;->PREFER_RGB_565:LB/b;

    invoke-virtual {p0, v3}, LT/a;->A(LB/b;)LT/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p0, v2}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    new-instance v1, Lq6/a$c;

    invoke-direct {v1, v0, p1, p2}, Lq6/a$c;-><init>(LI7/a;Landroid/view/View;LL4/a$e;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->j1(LU/p;)LU/p;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, LI7/a;->o1()V

    :goto_0
    return-void
.end method

.method public static r1(Ljava/lang/String;Landroid/view/View;LL4/a$e;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "anchor",
            "anchorSide"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object v7

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    const v1, 0x7f070114

    invoke-virtual {v0, v1}, LT/a;->z0(I)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, LT/a;->u(I)LT/a;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LT/h;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/j;->v1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, v1}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/j;->X0(LT/a;)Lcom/bumptech/glide/j;

    move-result-object v8

    new-instance v9, Lq6/a$b;

    move-object v0, v9

    move-object v2, p0

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lq6/a$b;-><init>(Lcom/bumptech/glide/load/engine/i;Ljava/lang/String;LT/h;LI7/a;Landroid/view/View;LL4/a$e;)V

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/j;->o1(LT/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    new-instance v0, Lq6/a$a;

    invoke-direct {v0, v7, p1, p2}, Lq6/a$a;-><init>(LI7/a;Landroid/view/View;LL4/a$e;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->j1(LU/p;)LU/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v7}, LI7/a;->o1()V

    :goto_0
    return-void
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0113

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LT/h;

    invoke-direct {v1}, LT/h;-><init>()V

    const v2, 0x7f0700f0

    invoke-virtual {v1, v2}, LT/a;->z0(I)LT/a;

    move-result-object v1

    check-cast v1, LT/h;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, LT/a;->u(I)LT/a;

    move-result-object v1

    check-cast v1, LT/h;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0}, Lf8/c;->a(Ljava/lang/Object;)V

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lq6/a$d;

    invoke-direct {v2, p0}, Lq6/a$d;-><init>(Lq6/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jsibbold/zoomage/ZoomageView;

    iget-object v2, p0, Lq6/a;->X:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->setZoomable(Z)V

    return-object v0
.end method

.method public F0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F0()V

    invoke-static {p0}, Lf8/c;->f0(Ljava/lang/Object;)V

    return-void
.end method
