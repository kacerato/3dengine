.class public Le6/b;
.super Ld6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/b$b;
    }
.end annotation


# instance fields
.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld6/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le6/b;->f:I

    iput v0, p0, Le6/b;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Ld6/b;->a()V

    new-instance v0, Le6/b$a;

    invoke-direct {v0, p0}, Le6/b$a;-><init>(Le6/b;)V

    invoke-static {v0}, LFc/f;->d(LFc/f$c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld6/b;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Ld6/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COMPILING_SHADERS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld6/b;->j(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {p0, v0}, Ld6/b;->k(Ljava/lang/String;)V

    return-void
.end method
