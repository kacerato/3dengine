.class public Lg6/e;
.super Lf6/b;
.source "SourceFile"


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
    .locals 2

    invoke-super {p0}, Lf6/b;->k()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DONE:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf6/b;->o(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lf6/b;->n(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lf6/b;->m(F)V

    invoke-virtual {p0}, Lf6/b;->b()V

    new-instance v0, Lg6/e$a;

    invoke-direct {v0, p0}, Lg6/e$a;-><init>(Lg6/e;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lf8/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
