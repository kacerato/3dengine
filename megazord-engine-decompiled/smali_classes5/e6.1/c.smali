.class public Le6/c;
.super Ld6/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld6/b;-><init>()V

    return-void
.end method

.method public static synthetic m(Le6/c;Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Le6/c;->n(Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    invoke-super {p0}, Ld6/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOADING_EDITOR:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld6/b;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHECKING_ASSETS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld6/b;->j(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo8/b;->f:LU8/a;

    iget-object v2, v2, LU8/a;->a:LV8/a;

    invoke-virtual {v2}, LV8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gallery/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "manifest.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "outdated"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lbd/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Le6/c$a;

    invoke-direct {v3, p0, v0, v2}, Le6/c$a;-><init>(Le6/c;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Le6/c$b;

    invoke-direct {v0, p0, v1, v2}, Le6/c$b;-><init>(Le6/c;Ljava/io/File;Ljava/io/File;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lf8/c;->l(FLjava/lang/Runnable;)V

    invoke-virtual {p0}, Ld6/b;->b()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lbd/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Le6/c$c;

    invoke-direct {v3, p0, v0, v2}, Le6/c$c;-><init>(Le6/c;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;)V

    :goto_0
    return-void
.end method

.method public final n(Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "destinationFolder",
            "manifestContent",
            "blockUserWhenFail",
            "outdatedFile"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOADING_REQUIRED_ASSETS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld6/b;->j(Ljava/lang/String;)V

    invoke-static {p1}, LBd/a;->g(Ljava/io/File;)Z

    new-instance v0, Le6/c$d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Le6/c$d;-><init>(Le6/c;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V

    return-void
.end method
