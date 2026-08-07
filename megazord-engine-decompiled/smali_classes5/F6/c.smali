.class public LF6/c;
.super LF6/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SEARCH:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070215

    invoke-direct {p0, v1, v0}, LF6/b;-><init>(ILjava/lang/String;)V

    return-void
.end method
