.class public La6/a;
.super LW5/b;
.source "SourceFile"

# interfaces
.implements LX5/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/a$k;,
        La6/a$j;
    }
.end annotation


# instance fields
.field public S:I

.field public T:I

.field public U:I

.field public final V:La6/a$k;

.field public W:Landroid/widget/LinearLayout;

.field public X:Landroid/widget/ImageView;

.field public Y:Landroid/widget/ImageView;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

.field public a0:Z

.field public final b0:Landroid/content/Context;

.field public final c0:Ljava/lang/String;

.field public d0:Z

.field public e0:I


# direct methods
.method public constructor <init>(Ljava/lang/String;La6/a$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "teListener"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f0c00d1

    invoke-direct {p0, v0, v1, v0}, LW5/b;-><init>(LX5/e;ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, La6/a;->S:I

    const/4 v1, 0x1

    iput v1, p0, La6/a;->T:I

    const/4 v1, 0x2

    iput v1, p0, La6/a;->U:I

    iput-boolean v0, p0, La6/a;->a0:Z

    iput-boolean v0, p0, La6/a;->d0:Z

    iput v0, p0, La6/a;->e0:I

    iput-object p0, p0, LW5/b;->g:LX5/e;

    iput-object p2, p0, La6/a;->V:La6/a$k;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, La6/a;->b0:Landroid/content/Context;

    iput-object p1, p0, La6/a;->c0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o(La6/a;)Z
    .locals 0

    iget-boolean p0, p0, La6/a;->a0:Z

    return p0
.end method

.method public static synthetic p(La6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, La6/a;->a0:Z

    return p1
.end method

.method public static synthetic q(La6/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, La6/a;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(La6/a;)La6/a$k;
    .locals 0

    iget-object p0, p0, La6/a;->V:La6/a$k;

    return-object p0
.end method

.method public static synthetic s(La6/a;)I
    .locals 0

    iget p0, p0, La6/a;->e0:I

    return p0
.end method

.method public static synthetic t(La6/a;)V
    .locals 0

    invoke-virtual {p0}, La6/a;->z()V

    return-void
.end method

.method public static synthetic u(La6/a;)V
    .locals 0

    invoke-virtual {p0}, La6/a;->F()V

    return-void
.end method

.method public static synthetic v(La6/a;)Z
    .locals 0

    iget-boolean p0, p0, La6/a;->d0:Z

    return p0
.end method

.method public static synthetic w(La6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La6/a;->c0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(La6/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, La6/a;->b0:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic y(La6/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, La6/a;->Y:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final A()La6/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La6/a;->d0:Z

    return-object p0
.end method

.method public final B(Landroid/view/ViewGroup;)La6/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-static {}, Lf8/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, La6/a;->b0:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p0}, La6/a;->onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V

    return-object p0
.end method

.method public final C(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LW5/b;

    new-instance v1, La6/a$a;

    invoke-direct {v1, p0}, La6/a$a;-><init>(La6/a;)V

    const v2, 0x7f0c00d1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/e;ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, La6/a;->a0:Z

    return v0
.end method

.method public E()V
    .locals 9

    iget-boolean v0, p0, La6/a;->a0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    const v1, 0x7f070247

    iget-object v2, p0, La6/a;->b0:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lod/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    const v1, 0x7f070246

    iget-object v2, p0, La6/a;->b0:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lod/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, La6/a;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, La6/a;->a0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La6/a;->W:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, La6/a;->V:La6/a$k;

    iget-object v2, p0, La6/a;->W:Landroid/widget/LinearLayout;

    invoke-interface {v0, v2, p0}, La6/a$k;->f(Landroid/widget/LinearLayout;La6/a;)Ljava/util/List;

    move-result-object v0

    iget-boolean v2, p0, La6/a;->d0:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, La6/a;->V:La6/a$k;

    iget-object v3, p0, La6/a;->c0:Ljava/lang/String;

    invoke-interface {v2, v3}, La6/a$k;->i(Ljava/lang/String;)Lqc/O1;

    move-result-object v2

    iget-object v3, v2, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    if-eqz v3, :cond_1

    new-instance v4, LW5/b;

    new-instance v5, LW5/a;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOISE:LUc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v5, v6, v7, v8}, LW5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v4, v5}, LW5/b;-><init>(LW5/a;)V

    iget-object v5, v4, LW5/b;->Q:LW5/a;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LUc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v6

    iput v6, v5, LW5/a;->p:I

    iget-object v5, v4, LW5/b;->Q:LW5/a;

    iget-object v5, v5, LW5/a;->o:Ljava/util/List;

    new-instance v6, La6/a$h;

    invoke-direct {v6, p0, v2}, La6/a$h;-><init>(La6/a;Lqc/O1;)V

    invoke-static {v3, v6}, Lh7/b;->f(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Lh7/b$z;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, La6/a;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, La6/a;->H(Ljava/util/List;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La6/a;->W:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final F()V
    .locals 8

    iget-object v0, p0, La6/a;->V:La6/a$k;

    invoke-interface {v0}, La6/a$k;->getInstance()LJAVARuntime/Texture;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v3, v1, LMb/g;

    if-eqz v3, :cond_0

    check-cast v1, LMb/g;

    invoke-virtual {v1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v3, ".ivo"

    invoke-static {v1, v3}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    const v3, 0x7f070255

    invoke-static {v1, v3}, Lod/e;->U(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".texture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, La6/a;->b0:Landroid/content/Context;

    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const v5, 0x7f070114

    if-eqz v4, :cond_2

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, La6/a;->b0:Landroid/content/Context;

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La6/a;->b0:Landroid/content/Context;

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v3, v4, v5, v6}, Lod/e;->S(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, La6/a;->Y:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, La6/a;->b0:Landroid/content/Context;

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, La6/a;->b0:Landroid/content/Context;

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v1, v4, v5, v6}, Lod/e;->S(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    :goto_1
    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, p0, La6/a;->S:I

    iput v1, p0, La6/a;->e0:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, La6/a;->V:La6/a$k;

    invoke-interface {v3}, La6/a$k;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, La6/a;->V:La6/a$k;

    invoke-interface {v3}, La6/a$k;->h()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    iget-object v3, p0, La6/a;->V:La6/a$k;

    invoke-interface {v3}, La6/a$k;->h()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, p0, La6/a;->T:I

    iput v1, p0, La6/a;->e0:I

    goto :goto_2

    :cond_4
    iget-object v3, p0, La6/a;->V:La6/a$k;

    invoke-interface {v3}, La6/a$k;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, La6/a;->Y:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, La6/a;->U:I

    iput v1, p0, La6/a;->e0:I

    goto :goto_2

    :cond_5
    iget-object v3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La6/a;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget v1, p0, La6/a;->e0:I

    iget v3, p0, La6/a;->S:I

    if-ne v1, v3, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, La6/a;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    return-void
.end method

.method public final G(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    iput-boolean p1, p0, La6/a;->a0:Z

    iget-object p1, p0, La6/a;->X:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La6/a;->E()V

    :cond_0
    return-void
.end method

.method public final H(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LW5/b;

    iget-object v0, v3, LW5/b;->n:LW5/b$a;

    sget-object v1, LW5/b$a;->Vector:LW5/b$a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lf8/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v3, v1, v2}, LW5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v1, LW5/b$a;->Component:LW5/b$a;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lf8/c;->B()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v5

    new-instance v6, La6/a$i;

    invoke-direct {v6, p0}, La6/a$i;-><init>(La6/a;)V

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LW5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;LW5/n;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf8/c;->B()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LW5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, La6/a$g;

    invoke-direct {v0, p0}, La6/a$g;-><init>(La6/a;)V

    iget-object v1, p0, La6/a;->V:La6/a$k;

    invoke-interface {v1, p0}, La6/a$k;->l(La6/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public final onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "unused"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    const p3, 0x7f0901da

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, La6/a;->W:Landroid/widget/LinearLayout;

    const p3, 0x7f09052f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, La6/a;->c0:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09035d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, La6/a;->X:Landroid/widget/ImageView;

    new-instance v0, La6/a$b;

    invoke-direct {v0, p0}, La6/a$b;-><init>(La6/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090362

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, La6/a$c;

    invoke-direct {v0, p0}, La6/a$c;-><init>(La6/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090147

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, La6/a;->Y:Landroid/widget/ImageView;

    const p3, 0x7f090432

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    iput-object p3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lgd/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusBottomRight(F)V

    iget-object p3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-static {v0}, Lgd/b;->k0(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusTopRight(F)V

    iget-object p3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    iget-object v0, p0, La6/a;->V:La6/a$k;

    invoke-interface {v0}, La6/a$k;->getFloatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setValue(F)V

    iget-object p3, p0, La6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    new-instance v0, La6/a$d;

    invoke-direct {v0, p0}, La6/a$d;-><init>(La6/a;)V

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setOnValueChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;)V

    invoke-virtual {p0}, La6/a;->F()V

    iget-object p3, p0, La6/a;->Y:Landroid/widget/ImageView;

    new-instance v0, La6/a$e;

    invoke-direct {v0, p0, p1, p2}, La6/a$e;-><init>(La6/a;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La6/a;->Y:Landroid/widget/ImageView;

    new-instance p2, La6/a$f;

    invoke-direct {p2, p0}, La6/a$f;-><init>(La6/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, La6/a;->E()V

    return-void
.end method

.method public final z()V
    .locals 2

    iget-boolean v0, p0, La6/a;->d0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La6/a;->V:La6/a$k;

    iget-object v1, p0, La6/a;->c0:Ljava/lang/String;

    invoke-interface {v0, v1}, La6/a$k;->i(Ljava/lang/String;)Lqc/O1;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, p0, La6/a;->V:La6/a$k;

    iget-object v1, p0, La6/a;->c0:Ljava/lang/String;

    invoke-interface {v0, v1}, La6/a$k;->i(Ljava/lang/String;)Lqc/O1;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lqc/O1;->a:Z

    iget-object v0, p0, La6/a;->V:La6/a$k;

    invoke-interface {v0}, La6/a$k;->k()V

    :cond_0
    return-void
.end method
