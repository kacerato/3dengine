.class public Lg6/a;
.super Lf6/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf6/b;-><init>()V

    return-void
.end method

.method public static synthetic q(Lg6/a;Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg6/a;->r(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    invoke-super {p0}, Lf6/b;->k()V

    sget-object v0, Lc6/d;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILDING_TABLES:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf6/b;->o(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lf6/b;->n(Ljava/lang/String;)V

    new-instance v0, Lg6/a$a;

    invoke-direct {v0, p0}, Lg6/a$a;-><init>(Lg6/a;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lf6/b;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "JAVARuntime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "_EDITOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lg6/a;->r(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lf6/b;->n(Ljava/lang/String;)V

    iget-object v3, p0, Lf6/b;->c:Lc6/a;

    invoke-virtual {v3, v2, v1}, Lc6/a;->c(Ljava/lang/String;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
