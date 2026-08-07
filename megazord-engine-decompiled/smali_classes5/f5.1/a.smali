.class public Lf5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

.field public Z:Landroid/widget/LinearLayout;

.field public final a0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b0:Landroid/view/View;

.field public c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e0:Landroid/view/View;

.field public f0:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    invoke-static {p1}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf5/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lf5/a;->c0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Z)V

    iput-object p1, p0, Lf5/a;->X:Ljava/lang/String;

    return-void
.end method

.method public static I1(Landroid/view/View;LL4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    const/16 v0, 0x172

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    new-instance v2, Lf5/a;

    invoke-direct {v2, p2}, Lf5/a;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, p1, v0, v1}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    const/16 v0, 0x172

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    new-instance v2, Lf5/a;

    invoke-direct {v2, p0}, Lf5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, LL4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic o1(Lf5/a;)V
    .locals 0

    invoke-virtual {p0}, Lf5/a;->H1()V

    return-void
.end method

.method public static synthetic p1(Lf5/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf5/a;->w1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q1(Lf5/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    .locals 0

    iget-object p0, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    return-object p0
.end method

.method public static synthetic r1(Lf5/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf5/a;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s1(Lf5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lf5/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic t1(Lf5/a;)V
    .locals 0

    invoke-virtual {p0}, Lf5/a;->G1()V

    return-void
.end method

.method public static synthetic u1(Lf5/a;)V
    .locals 0

    invoke-virtual {p0}, Lf5/a;->L1()V

    return-void
.end method

.method public static synthetic v1(Lf5/a;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lf5/a;->B1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A1()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Pixel"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Linear"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, LW5/b;

    new-instance v2, Lf5/a$g;

    invoke-direct {v2, p0}, Lf5/a$g;-><init>(Lf5/a;)V

    invoke-virtual {p0}, Lf5/a;->B1()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LW5/b$a;->SLDropdown:LW5/b$a;

    const-string v6, "Filter"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LW5/b;-><init>(LX5/h;Ljava/lang/String;Ljava/util/List;LW5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public B0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf5/a;->b0:Landroid/view/View;

    invoke-virtual {p0}, Lf5/a;->F1()V

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lf5/a;->y1()V

    goto :goto_0

    :cond_0
    const-string v1, "Invalid cubemap"

    invoke-static {v1}, Lf8/c;->u0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :goto_0
    return-object v0
.end method

.method public final B1()Ljava/lang/String;
    .locals 2

    sget-object v0, Lf5/a$l;->b:[I

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "Linear"

    return-object v0

    :cond_1
    const-string v0, "Pixel"

    return-object v0
.end method

.method public final C1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$h;

    invoke-direct {v2, p0}, Lf5/a$h;-><init>(Lf5/a;)V

    const-string v3, "Mipmaps"

    sget-object v4, LW5/b$a;->SLBoolean:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$i;

    invoke-direct {v2, p0}, Lf5/a$i;-><init>(Lf5/a;)V

    const-string v3, "Mipmap levels"

    sget-object v4, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final D1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->e()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;->PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    if-ne v1, v2, :cond_0

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$t;

    invoke-direct {v2, p0}, Lf5/a$t;-><init>(Lf5/a;)V

    sget-object v3, LW5/b$a;->Texture:LW5/b$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Panorama texture"

    invoke-direct {v1, v2, v5, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->e()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;->SIX_FACES:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    if-ne v1, v2, :cond_1

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$a;

    invoke-direct {v2, p0}, Lf5/a$a;-><init>(Lf5/a;)V

    sget-object v3, LW5/b$a;->Texture:LW5/b$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    const-string v5, "positive X"

    invoke-direct {v1, v2, v5, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$b;

    invoke-direct {v2, p0}, Lf5/a$b;-><init>(Lf5/a;)V

    const-string v4, "negative X"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$c;

    invoke-direct {v2, p0}, Lf5/a$c;-><init>(Lf5/a;)V

    const-string v4, "positive Y"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$d;

    invoke-direct {v2, p0}, Lf5/a$d;-><init>(Lf5/a;)V

    const-string v4, "negative Y"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$e;

    invoke-direct {v2, p0}, Lf5/a$e;-><init>(Lf5/a;)V

    const-string v4, "positive Z"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$f;

    invoke-direct {v2, p0}, Lf5/a$f;-><init>(Lf5/a;)V

    const-string v4, "negative Z"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final E1()Ljava/lang/String;
    .locals 2

    sget-object v0, Lf5/a$l;->c:[I

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "MirrorRepeat"

    return-object v0

    :cond_1
    const-string v0, "Repeat"

    return-object v0

    :cond_2
    const-string v0, "Clamp"

    return-object v0
.end method

.method public final F1()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LOb/e;->f(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    iput-object v0, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;-><init>()V

    iput-object v0, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final G1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    invoke-virtual {p0}, Lf5/a;->L1()V

    return-void
.end method

.method public final H1()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-static {v0, v1}, LOb/e;->l(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;)V

    return-void
.end method

.method public K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLV5/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "content",
            "clearViews",
            "entriesListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Z",
            "LV5/b;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LW5/b;

    iget-object v0, v3, LW5/b;->n:LW5/b$a;

    sget-object v1, LW5/b$a;->Vector:LW5/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v3, v1, v2}, LW5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v1, LW5/b$a;->Component:LW5/b$a;

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lf5/a$j;

    invoke-direct {v6, p0, p4, p1, p2}, Lf5/a$j;-><init>(Lf5/a;LV5/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LW5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;LW5/n;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LW5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final L1()V
    .locals 9

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOURCE_MODE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->e()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    move-result-object v2

    new-instance v3, Lf5/a$o;

    invoke-direct {v3, p0}, Lf5/a$o;-><init>(Lf5/a;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    invoke-static {v1, v4, v2, v3}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    invoke-virtual {p0}, Lf5/a;->D1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "x"

    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    new-instance v1, LW5/b;

    new-instance v4, Lf5/a$p;

    invoke-direct {v4, p0}, Lf5/a$p;-><init>(Lf5/a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v7, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v6, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v6

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, LW5/b$a;->SLDropdown:LW5/b$a;

    const-string v8, "Max resolution"

    move-object v2, v1

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, LW5/b;-><init>(LX5/h;Ljava/lang/String;Ljava/util/List;LW5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$q;

    invoke-direct {v2, p0}, Lf5/a$q;-><init>(Lf5/a;)V

    const-string v3, "Gamma correction"

    sget-object v4, LW5/b$a;->SLBoolean:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    new-instance v1, LW5/b;

    new-instance v2, Lf5/a$r;

    invoke-direct {v2, p0}, Lf5/a$r;-><init>(Lf5/a;)V

    const-string v3, "Quality"

    sget-object v4, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    invoke-virtual {p0}, Lf5/a;->A1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    invoke-virtual {p0}, Lf5/a;->C1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lf5/a;->c0:Ljava/util/List;

    iget-object v1, p0, Lf5/a;->Z:Landroid/widget/LinearLayout;

    new-instance v2, Lf5/a$s;

    invoke-direct {v2, p0}, Lf5/a$s;-><init>(Lf5/a;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Lf5/a;->K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLV5/b;)V

    return-void
.end method

.method public final M1()V
    .locals 4

    iget-object v0, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf5/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lf5/a;->z1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lf5/a;->z1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final N1()V
    .locals 3

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->y()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, LT/a;->u(I)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    iget-object v0, p0, Lf5/a;->b0:Landroid/view/View;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-static {v2}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, Lf5/a;

    iget-object v1, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, Lf5/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public l1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l1()V

    iget-object v0, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf5/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lf5/a;->e0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf5/a;->x1(Landroid/view/View;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final w1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lf5/a;->e0:Landroid/view/View;

    iget-object p1, p0, Lf5/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x1(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lf5/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lf5/a;->f0:Landroid/view/View;

    :cond_0
    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    invoke-static {p1, v0}, LI7/a;->s1(Landroid/view/View;LL4/a$e;)LI7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf5/a$m;

    invoke-direct {v1, p0, p1}, Lf5/a$m;-><init>(Lf5/a;LI7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public final y1()V
    .locals 3

    iget-object v0, p0, Lf5/a;->b0:Landroid/view/View;

    const v1, 0x7f09051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-static {v2}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lf5/a;->M1()V

    const v1, 0x7f090411

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lf5/a;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lf5/a;->L1()V

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf5/a;->f0:Landroid/view/View;

    new-instance v1, Lf5/a$k;

    invoke-direct {v1, p0}, Lf5/a$k;-><init>(Lf5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final z1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "org",
            "active"
        }
    .end annotation

    new-instance p1, LT/h;

    invoke-direct {p1}, LT/h;-><init>()V

    invoke-virtual {p1}, LT/a;->y()LT/a;

    move-result-object p1

    check-cast p1, LT/h;

    const v0, 0x7f07026e

    invoke-virtual {p1, v0}, LT/a;->u(I)LT/a;

    move-result-object p1

    check-cast p1, LT/h;

    iget-object v0, p0, Lf5/a;->b0:Landroid/view/View;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090278

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf5/a;->X:Ljava/lang/String;

    invoke-static {v1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "thumb.png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v3, Lf5/a$n;

    invoke-direct {v3, p0, p2}, Lf5/a$n;-><init>(Lf5/a;Landroid/widget/ImageView;)V

    invoke-static {v0, v1, p1, v2, v3}, Lod/e;->j(Ljava/lang/String;Landroid/content/Context;LT/h;Lcom/bumptech/glide/load/engine/i;Lod/e$k;)V

    :cond_0
    return-void
.end method
