.class public Lg6/j;
.super Lf6/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf6/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf6/b;->h:Z

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    invoke-super {p0}, Lf6/b;->k()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REPLACING_FILES:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf6/b;->o(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lf6/b;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lf6/b;->c:Lc6/a;

    iget-object v0, v0, Lc6/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf6/b;->h:Z

    invoke-virtual {p0}, Lf6/b;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf6/b;->h:Z

    new-instance v0, Lg6/j$a;

    invoke-direct {v0, p0}, Lg6/j$a;-><init>(Lg6/j;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
