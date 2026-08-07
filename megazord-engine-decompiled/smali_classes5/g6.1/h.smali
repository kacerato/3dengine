.class public Lg6/h;
.super Lf6/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf6/b;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    invoke-super {p0}, Lf6/b;->k()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lf6/b;->o(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHECKING_JAVA_FILES:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf6/b;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg6/h;->q()V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lf6/b;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionCode:I

    const/16 v1, 0x2cd

    if-ge v0, v1, :cond_0

    new-instance v0, Lg6/h$a;

    invoke-direct {v0, p0}, Lg6/h$a;-><init>(Lg6/h;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf6/b;->h:Z

    invoke-virtual {p0}, Lf6/b;->b()V

    :goto_0
    return-void
.end method
