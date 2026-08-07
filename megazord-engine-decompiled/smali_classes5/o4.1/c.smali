.class public Lo4/c;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Language"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->s()Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v8, LW5/b;

    new-instance v3, Lo4/c$a;

    invoke-direct {v3, p0, v1, p1}, Lo4/c$a;-><init>(Lo4/c;Ljava/util/List;Landroid/content/Context;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->p()Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, LW5/b$a;->SLDropdown:LW5/b$a;

    const-string v7, "Language"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LW5/b;-><init>(LX5/h;Ljava/lang/String;Ljava/util/List;LW5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lo4/c$b;

    invoke-direct {v1, p0}, Lo4/c$b;-><init>(Lo4/c;)V

    sget-object v2, LW5/b$a;->SLBoolean:LW5/b$a;

    const-string v3, "translate component names"

    invoke-direct {p1, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lo4/c$c;

    invoke-direct {v1, p0}, Lo4/c$c;-><init>(Lo4/c;)V

    const-string v3, "translate NoCode"

    invoke-direct {p1, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    const-string v1, "Import languages to data/ITsMagic/Languages"

    const/16 v2, 0xc

    invoke-direct {p1, v1, v2}, LW5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
