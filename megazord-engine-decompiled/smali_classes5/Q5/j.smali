.class public LQ5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ5/j$m0;
    }
.end annotation


# static fields
.field public static a:Ljava/io/File;

.field public static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;IILCd/b;Ljava/lang/String;ZLQ5/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "context",
            "pixelX",
            "pixelY",
            "o",
            "inProjectDirectory",
            "destructiveActions",
            "callbacks"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p4

    iget-object v1, v3, LCd/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move v8, p2

    move v9, p3

    move/from16 v10, p6

    invoke-static/range {v1 .. v10}, LQ5/j;->g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static {p2, p3, v0, p1}, Lq7/a;->B1(IILjava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;LCd/b;Ljava/lang/String;ZLQ5/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "context",
            "view",
            "o",
            "inProjectDirectory",
            "destructiveActions",
            "callbacks"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p3

    iget-object v1, v3, LCd/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object/from16 v5, p6

    move-object v7, p2

    move/from16 v10, p5

    invoke-static/range {v1 .. v10}, LQ5/j;->g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;

    move-result-object v0

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    move-object v2, p2

    invoke-static {p2, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, LQ5/j;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, LQ5/j;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LQ5/j;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "inProjectDirectory"
        }
    .end annotation

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".meta/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;->a:Z

    iput-boolean v1, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;->b:Z

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/h;->n(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;)Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    aget-object v3, p1, v2

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "thumb.png"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "thumb_manifest.json"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mesh"

    invoke-static {v6, v7}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v8, ".mwf"

    const-string v9, "_wf"

    if-eqz v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v4, v6}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".config"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method public static g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "context",
            "o",
            "inProjectDirectory",
            "callbacks",
            "folderPath",
            "originalView",
            "pixelX",
            "pixelY",
            "destructiveActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "LCd/b;",
            "Ljava/lang/String;",
            "LQ5/b;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "IIZ)",
            "Ljava/util/List<",
            "Lwd/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Lwd/b;

    sget-object v8, Lwd/b$b;->Tittle:Lwd/b$b;

    invoke-virtual/range {p2 .. p2}, LCd/b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    invoke-direct {v7}, Lwd/b;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Directory:LCd/b$a;

    const v9, 0x7f0700f3

    if-eq v7, v8, :cond_0

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPEN:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$j0;

    invoke-direct {v10, v3}, LQ5/j$j0;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Model3D:LCd/b$a;

    const v10, 0x7f070215

    const v11, 0x7f0700b5

    const v12, 0x7f070270

    if-ne v7, v8, :cond_1

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY_TO_WORLD:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, LQ5/j$k0;

    invoke-direct {v13, v3, v1}, LQ5/j$k0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v12, v8, v13}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLEAR_IMPORTED_DATA:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, LQ5/j$l0;

    invoke-direct {v13, v3, v1, v4}, LQ5/j$l0;-><init>(Ljava/lang/String;Landroid/content/Context;LQ5/b;)V

    invoke-direct {v7, v11, v8, v13}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILD_COLLISION_VTX:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, LQ5/j$a;

    invoke-direct {v13, v3, v1}, LQ5/j$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const v14, 0x7f0700d6

    invoke-direct {v7, v14, v8, v13}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXTRACT_ANIMATION:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, LQ5/j$b;

    invoke-direct {v13, v3, v1}, LQ5/j$b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const v14, 0x7f07025f

    invoke-direct {v7, v14, v8, v13}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE_UNUSED_FILES:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, LQ5/j$c;

    invoke-direct {v13, v1, v3}, LQ5/j$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v7, v10, v8, v13}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Object:LCd/b$a;

    if-eq v7, v8, :cond_2

    sget-object v13, LCd/b$a;->Mesh:LCd/b$a;

    if-eq v7, v13, :cond_2

    sget-object v13, LCd/b$a;->Sound:LCd/b$a;

    if-eq v7, v13, :cond_2

    sget-object v13, LCd/b$a;->ImportedAudio:LCd/b$a;

    if-ne v7, v13, :cond_3

    :cond_2
    new-instance v7, Lwd/b;

    sget-object v13, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY_TO_WORLD:LUc/b;

    invoke-static {v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, LQ5/j$d;

    invoke-direct {v14, v2, v3}, LQ5/j$d;-><init>(LCd/b;Ljava/lang/String;)V

    invoke-direct {v7, v12, v13, v14}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v13, LCd/b$a;->Sound:LCd/b$a;

    const-string v14, "/"

    if-eq v7, v13, :cond_4

    sget-object v13, LCd/b$a;->VideoSound:LCd/b$a;

    if-eq v7, v13, :cond_4

    sget-object v13, LCd/b$a;->ImportedAudio:LCd/b$a;

    if-ne v7, v13, :cond_6

    :cond_4
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v13, Lwd/b;

    sget-object v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EDIT:LUc/b;

    invoke-static {v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v15

    new-instance v10, LQ5/j$e;

    move-object/from16 v11, p6

    invoke-direct {v10, v11, v7}, LQ5/j$e;-><init>(Landroid/view/View;Ljava/io/File;)V

    invoke-direct {v13, v9, v15, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v7, Lwd/b;

    sget-object v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_PREFAB:LUc/b;

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, LQ5/j$f;

    invoke-direct {v11, v3, v1}, LQ5/j$f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v12, v10, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    if-ne v7, v8, :cond_7

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_POOL:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$g;

    invoke-direct {v10, v2, v3}, LQ5/j$g;-><init>(LCd/b;Ljava/lang/String;)V

    const v11, 0x7f070267

    invoke-direct {v7, v11, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_CURVE_OF:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$h;

    invoke-direct {v10, v2, v3}, LQ5/j$h;-><init>(LCd/b;Ljava/lang/String;)V

    const v11, 0x7f070269

    invoke-direct {v7, v11, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Plugin:LCd/b$a;

    if-ne v7, v8, :cond_8

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INSTALL_PLUGIN:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$i;

    invoke-direct {v10, v1, v2}, LQ5/j$i;-><init>(Landroid/content/Context;LCd/b;)V

    invoke-direct {v7, v8, v10}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Zip:LCd/b$a;

    const v10, 0x7f070129

    if-ne v7, v8, :cond_9

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXTRACT_HERE:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$j;

    invoke-direct {v11, v3}, LQ5/j$j;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v10, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXTRACT_TO_FOLDER:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$l;

    invoke-direct {v11, v3}, LQ5/j$l;-><init>(Ljava/lang/String;)V

    const v13, 0x7f07013c

    invoke-direct {v7, v13, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Texture:LCd/b$a;

    if-ne v7, v8, :cond_a

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EDIT:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$m;

    invoke-direct {v11, v3, v1}, LQ5/j$m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$n;

    invoke-direct {v11, v3, v1, v0}, LQ5/j$n;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-direct {v7, v8, v11}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GENERATE_NORMAL_MAP:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$o;

    invoke-direct {v11, v3}, LQ5/j$o;-><init>(Ljava/lang/String;)V

    const v13, 0x7f0701b7

    invoke-direct {v7, v13, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GENERATE_CUBEMAP:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$p;

    invoke-direct {v11, v1, v3, v4}, LQ5/j$p;-><init>(Landroid/content/Context;Ljava/lang/String;LQ5/b;)V

    const v13, 0x7f0700de

    invoke-direct {v7, v13, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Cubemap:LCd/b$a;

    if-ne v7, v8, :cond_b

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EDIT:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$q;

    invoke-direct {v11, v3, v1}, LQ5/j$q;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->UIStyle:LCd/b$a;

    if-ne v7, v8, :cond_c

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EDIT:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$r;

    invoke-direct {v11, v3, v1}, LQ5/j$r;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Java:LCd/b$a;

    const v9, 0x7f070070

    if-eq v7, v8, :cond_d

    sget-object v8, LCd/b$a;->Material:LCd/b$a;

    if-eq v7, v8, :cond_d

    sget-object v8, LCd/b$a;->Lua:LCd/b$a;

    if-ne v7, v8, :cond_e

    :cond_d
    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$s;

    invoke-direct {v11, v2, v3, v0, v1}, LQ5/j$s;-><init>(LCd/b;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->PostProcessingShader:LCd/b$a;

    if-ne v7, v8, :cond_f

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$t;

    invoke-direct {v11, v3}, LQ5/j$t;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->UIPostProcessingShader:LCd/b$a;

    if-ne v7, v8, :cond_10

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$u;

    invoke-direct {v11, v3}, LQ5/j$u;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->VFXShader:LCd/b$a;

    if-ne v7, v8, :cond_11

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$x;

    invoke-direct {v11, v3}, LQ5/j$x;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->SkyboxShader:LCd/b$a;

    if-ne v7, v8, :cond_12

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$y;

    invoke-direct {v11, v3}, LQ5/j$y;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->AmbientLightShader:LCd/b$a;

    if-ne v7, v8, :cond_13

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$z;

    invoke-direct {v11, v3}, LQ5/j$z;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->VulkanGraph:LCd/b$a;

    if-ne v7, v8, :cond_14

    new-instance v7, Lwd/b;

    new-instance v8, LQ5/j$A;

    invoke-direct {v8, v3}, LQ5/j$A;-><init>(Ljava/lang/String;)V

    const-string v11, "Attach as post processing"

    invoke-direct {v7, v9, v11, v8}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    new-instance v8, LQ5/j$B;

    invoke-direct {v8, v3}, LQ5/j$B;-><init>(Ljava/lang/String;)V

    const-string v11, "Attach as UI post processing"

    invoke-direct {v7, v9, v11, v8}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->NoCodeGraph:LCd/b$a;

    if-ne v7, v8, :cond_15

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH_SELECTED:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, LQ5/j$C;

    invoke-direct {v11, v3}, LQ5/j$C;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v8, v11}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Mesh:LCd/b$a;

    if-ne v7, v8, :cond_16

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTACH:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$D;

    invoke-direct {v9, v3, v1}, LQ5/j$D;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v7, v8, v9}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    invoke-direct {v7}, Lwd/b;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVERT_FACE_ORIENTATION:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$E;

    invoke-direct {v9, v3}, LQ5/j$E;-><init>(Ljava/lang/String;)V

    const v11, 0x7f070252

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVERT_NORMALS:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$F;

    invoke-direct {v9, v3}, LQ5/j$F;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RECALCULATE_NORMALS:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$G;

    invoke-direct {v9, v3}, LQ5/j$G;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONVERT_TO_OBJ:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$H;

    invoke-direct {v9, v3}, LQ5/j$H;-><init>(Ljava/lang/String;)V

    const v11, 0x7f0701c5

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILD_CONVEX_HULL:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$I;

    invoke-direct {v9, v3}, LQ5/j$I;-><init>(Ljava/lang/String;)V

    const v11, 0x7f0700d7

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILD_DECIMATE:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$J;

    invoke-direct {v9, v3}, LQ5/j$J;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Video:LCd/b$a;

    if-ne v7, v8, :cond_19

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY_TO_WORLD:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".meta/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_18

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v11, v8

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_18

    aget-object v15, v8, v13

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, ".go"

    invoke-static {v15, v9}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_17

    goto :goto_1

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    :cond_18
    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v8, Lwd/b;

    new-instance v9, LQ5/j$K;

    invoke-direct {v9, v3, v1}, LQ5/j$K;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v8, v12, v7, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLEAR_IMPORTED_DATA:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LQ5/j$L;

    invoke-direct {v9, v3, v1, v4}, LQ5/j$L;-><init>(Ljava/lang/String;Landroid/content/Context;LQ5/b;)V

    const v11, 0x7f0700b5

    invoke-direct {v7, v11, v8, v9}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v7, v2, LCd/b;->c:LCd/b$a;

    sget-object v8, LCd/b$a;->Directory:LCd/b$a;

    const-string v9, "//"

    const-string v11, ""

    const v13, 0x7f0701ef

    const v15, 0x7f070096

    if-ne v7, v8, :cond_20

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NEW:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$M;

    invoke-direct {v10, v1, v5, v4}, LQ5/j$M;-><init>(Landroid/content/Context;Ljava/lang/String;LQ5/b;)V

    const v12, 0x7f070059

    invoke-direct {v7, v12, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p9, :cond_1a

    new-instance v7, Lwd/b;

    invoke-direct {v7}, Lwd/b;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$N;

    invoke-direct {v10, v1, v2, v4, v3}, LQ5/j$N;-><init>(Landroid/content/Context;LCd/b;LQ5/b;Ljava/lang/String;)V

    invoke-direct {v7, v15, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENAME:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$O;

    invoke-direct {v10, v1, v2, v4}, LQ5/j$O;-><init>(Landroid/content/Context;LCd/b;LQ5/b;)V

    invoke-direct {v7, v13, v8, v10}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v7, Lwd/b;

    invoke-direct {v7}, Lwd/b;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BATCH:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$P;

    invoke-direct {v10, v3}, LQ5/j$P;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v10}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lwd/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXPORT:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, LQ5/j$Q;

    invoke-direct {v10, v0, v5, v1, v4}, LQ5/j$Q;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;LQ5/b;)V

    invoke-direct {v7, v8, v10}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT_FILES:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, LQ5/j$S;

    invoke-direct {v7, v5, v1}, LQ5/j$S;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v4, v7}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_SHARE_GROUP:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LQ5/j$T;

    invoke-direct {v5, v1, v2}, LQ5/j$T;-><init>(Landroid/content/Context;LCd/b;)V

    const v2, 0x7f07021b

    invoke-direct {v0, v2, v4, v5}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v2, Lwd/b$b;->Folder:Lwd/b$b;

    invoke-direct {v0, v2, v11}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    invoke-static {}, LH8/d;->n()I

    move-result v3

    if-ge v1, v3, :cond_1f

    invoke-static {v1}, LH8/d;->m(I)LQ5/g;

    move-result-object v3

    invoke-virtual {v3, v2}, LQ5/g;->a(Ljava/io/File;)Lwd/b;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v4, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwd/b;

    iget-object v7, v5, Lwd/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_1b

    iget-object v8, v3, Lwd/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v5, Lwd/b;->a:Lwd/b$b;

    iget-object v8, v3, Lwd/b;->a:Lwd/b$b;

    if-ne v7, v8, :cond_1b

    iget-object v3, v3, Lwd/b;->c:Ljava/util/List;

    invoke-virtual {v5, v3}, Lwd/b;->c(Ljava/util/List;)V

    goto :goto_4

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1c
    iget-object v4, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1d
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget-object v0, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz v0, :cond_28

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_20
    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, LCd/b;->c:LCd/b$a;

    sget-object v5, LCd/b$a;->Animation:LCd/b$a;

    if-ne v0, v5, :cond_21

    new-instance v0, Lwd/b;

    new-instance v5, LQ5/j$U;

    invoke-direct {v5, v2, v1, v4}, LQ5/j$U;-><init>(LCd/b;Landroid/content/Context;LQ5/b;)V

    const-string v7, "Create new mask file"

    invoke-direct {v0, v7, v5}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENAME:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$V;

    invoke-direct {v7, v1, v2, v4}, LQ5/j$V;-><init>(Landroid/content/Context;LCd/b;LQ5/b;)V

    invoke-direct {v0, v13, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$W;

    invoke-direct {v7, v1, v2, v4, v3}, LQ5/j$W;-><init>(Landroid/content/Context;LCd/b;LQ5/b;Ljava/lang/String;)V

    invoke-direct {v0, v15, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DUPLICATE:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$X;

    invoke-direct {v7, v1, v2}, LQ5/j$X;-><init>(Landroid/content/Context;LCd/b;)V

    const v8, 0x7f0701d1

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MOVE:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$Y;

    invoke-direct {v7, v1, v2}, LQ5/j$Y;-><init>(Landroid/content/Context;LCd/b;)V

    const v8, 0x7f0701a0

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$Z;

    invoke-direct {v7, v1, v2}, LQ5/j$Z;-><init>(Landroid/content/Context;LCd/b;)V

    const v8, 0x7f0700d9

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FIND_USAGES:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$a0;

    invoke-direct {v7, v2}, LQ5/j$a0;-><init>(LCd/b;)V

    const v8, 0x7f070215

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPEN_WITH:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$b0;

    invoke-direct {v7, v1, v2, v4}, LQ5/j$b0;-><init>(Landroid/content/Context;LCd/b;LQ5/b;)V

    const v8, 0x7f0701c7

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_SHARE_GROUP:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$e0;

    invoke-direct {v7, v1, v2}, LQ5/j$e0;-><init>(Landroid/content/Context;LCd/b;)V

    const v8, 0x7f07021b

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc9/a;->k()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->h()Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;->enableVCS:Z

    if-eqz v0, :cond_22

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VCS:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$f0;

    invoke-direct {v7, v1, v2}, LQ5/j$f0;-><init>(Landroid/content/Context;LCd/b;)V

    const v8, 0x7f070251

    invoke-direct {v0, v8, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXPLORE_META_FILES:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LQ5/j$g0;

    invoke-direct {v7, v1, v2, v4}, LQ5/j$g0;-><init>(Landroid/content/Context;LCd/b;LQ5/b;)V

    invoke-direct {v0, v10, v5, v7}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v4, Lwd/b$b;->Folder:Lwd/b$b;

    invoke-direct {v0, v4, v11}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5
    invoke-static {}, LH8/d;->l()I

    move-result v3

    if-ge v1, v3, :cond_27

    invoke-static {v1}, LH8/d;->k(I)LQ5/h;

    move-result-object v3

    iget-object v5, v2, LCd/b;->a:Ljava/lang/String;

    invoke-static {v5}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, LQ5/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3, v4}, LQ5/h;->b(Ljava/io/File;)Lwd/b;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz v5, :cond_25

    const/4 v5, 0x0

    :goto_6
    iget-object v7, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_24

    iget-object v7, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwd/b;

    iget-object v8, v7, Lwd/b;->b:Ljava/lang/String;

    if-eqz v8, :cond_23

    iget-object v9, v3, Lwd/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v8, v7, Lwd/b;->a:Lwd/b$b;

    iget-object v9, v3, Lwd/b;->a:Lwd/b$b;

    if-ne v8, v9, :cond_23

    iget-object v3, v3, Lwd/b;->c:Ljava/util/List;

    invoke-virtual {v7, v3}, Lwd/b;->c(Ljava/util/List;)V

    goto :goto_7

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_24
    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_25
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_27
    iget-object v0, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz v0, :cond_28

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_28
    :goto_8
    return-object v6
.end method

.method public static h()Lrd/d;
    .locals 1

    new-instance v0, LQ5/j$i0;

    invoke-direct {v0}, LQ5/j$i0;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static j(Landroid/view/View;LCd/b;Landroid/app/Activity;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "pfile",
            "activity"
        }
    .end annotation

    iget-object v0, p1, LCd/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, LCd/b;->c:LCd/b$a;

    sget-object v3, LCd/b$a;->World:LCd/b$a;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    sget-object v3, LCd/b$a;->Area:LCd/b$a;

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf8/c;->u0(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, LCd/b;->c:LCd/b$a;

    sget-object v3, LCd/b$a;->Texture:LCd/b$a;

    if-ne v1, v3, :cond_3

    iget-object p2, p1, LCd/b;->a:Ljava/lang/String;

    const-string v0, ".nse"

    invoke-static {p2, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, LL4/a$e;->Right:LL4/a$e;

    iget-object p1, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lh7/a;->F1(Landroid/view/View;LL4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    goto :goto_0

    :cond_2
    sget-object p2, LL4/a$e;->Right:LL4/a$e;

    iget-object p1, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lh7/c;->a2(Landroid/view/View;LL4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :goto_0
    return v4

    :cond_3
    sget-object v3, LCd/b$a;->Cubemap:LCd/b$a;

    if-ne v1, v3, :cond_4

    sget-object p2, LL4/a$e;->Right:LL4/a$e;

    iget-object p1, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lf5/a;->I1(Landroid/view/View;LL4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return v4

    :cond_4
    sget-object v3, LCd/b$a;->UIStyle:LCd/b$a;

    if-ne v1, v3, :cond_5

    sget-object p2, LL4/a$e;->Right:LL4/a$e;

    iget-object p1, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Li7/a;->H1(Landroid/view/View;LL4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return v4

    :cond_5
    sget-object v3, LCd/b$a;->VulkanGraph:LCd/b$a;

    if-ne v1, v3, :cond_6

    iget-object p0, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance p2, LH4/e;

    invoke-direct {p2, p0}, LH4/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    return v4

    :cond_6
    sget-object v3, LCd/b$a;->NoCodeGraph:LCd/b$a;

    if-ne v1, v3, :cond_7

    iget-object p0, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance p2, LH4/d;

    invoke-direct {p2, p0}, LH4/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    return v4

    :cond_7
    sget-object p1, LCd/b$a;->Video:LCd/b$a;

    const-string v3, ".go"

    const-string v5, ".meta/"

    const/4 v6, 0x0

    if-ne v1, p1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v6

    :goto_1
    if-ge v6, p1, :cond_9

    :try_start_1
    aget-object v2, p0, v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, LQ5/j$v;

    invoke-direct {v5}, LQ5/j$v;-><init>()V

    invoke-static {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    :cond_9
    move v6, v1

    :catch_1
    :cond_a
    if-nez v6, :cond_b

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object p0

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, LQ5/j$w;

    invoke-direct {v1, p2, v0, p0}, LQ5/j$w;-><init>(Landroid/app/Activity;Ljava/lang/String;LI7/a;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_b
    return v4

    :cond_c
    sget-object p1, LCd/b$a;->Model3D:LCd/b$a;

    if-ne v1, p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v6

    :goto_2
    if-ge v6, v1, :cond_e

    :try_start_3
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmd/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LQ5/j$R;

    invoke-direct {v8}, LQ5/j$R;-><init>()V

    invoke-static {v7, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v4

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_2
    :cond_e
    move v6, v5

    :catch_3
    :cond_f
    if-nez v6, :cond_10

    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lnh/c;->d(Landroid/view/View;Ljava/io/File;Z)V

    :cond_10
    return v4

    :cond_11
    sget-object p1, LCd/b$a;->Object:LCd/b$a;

    if-ne v1, p1, :cond_12

    new-instance p0, LQ5/j$c0;

    invoke-direct {p0}, LQ5/j$c0;-><init>()V

    invoke-static {v0, v4, p0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    return v4

    :cond_12
    sget-object p1, LCd/b$a;->Mesh:LCd/b$a;

    if-ne v1, p1, :cond_13

    invoke-static {v0, v4}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lec/k;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_13
    sget-object p1, LCd/b$a;->Sound:LCd/b$a;

    if-eq v1, p1, :cond_15

    sget-object p1, LCd/b$a;->VideoSound:LCd/b$a;

    if-eq v1, p1, :cond_15

    sget-object p1, LCd/b$a;->ImportedAudio:LCd/b$a;

    if-ne v1, p1, :cond_14

    goto :goto_3

    :cond_14
    return v6

    :cond_15
    :goto_3
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_16

    return v6

    :cond_16
    new-instance p2, LQ5/j$d0;

    invoke-direct {p2, p1}, LQ5/j$d0;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$c;)V

    return v4

    :cond_17
    sget-object p0, Lo8/b;->h:Lt8/f;

    new-instance v0, LQ5/j$k;

    invoke-direct {v0, p1, p2}, LQ5/j$k;-><init>(LCd/b;Landroid/app/Activity;)V

    invoke-virtual {p0, p2, v0}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return v4
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folder",
            "name"
        }
    .end annotation

    new-instance v0, LQ5/j$h0;

    invoke-direct {v0, p0, p1}, LQ5/j$h0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "inProjectPath"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LCd/b;

    invoke-static {p1}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LCd/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v0, v1}, LQ5/j;->j(Landroid/view/View;LCd/b;Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    new-instance v0, LH4/c;

    invoke-direct {v0, p1}, LH4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    :cond_0
    return-void
.end method
