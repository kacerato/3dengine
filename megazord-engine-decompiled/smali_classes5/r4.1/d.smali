.class public Lr4/d;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UI"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    new-instance v1, LW5/b;

    new-instance v2, Lr4/d$a;

    invoke-direct {v2, p0}, Lr4/d$a;-><init>(Lr4/d;)V

    const-string v3, "Interface scale"

    sget-object v4, LW5/b$a;->SLFloat:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    const-string v2, "You need to reopen the editor to apply UI scaling"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, LW5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lr4/d$b;

    invoke-direct {v2, p0, p1}, Lr4/d$b;-><init>(Lr4/d;Landroid/content/Context;)V

    const-string p1, "Restart editor"

    sget-object v3, LW5/b$a;->Button:LW5/b$a;

    invoke-direct {v1, v2, p1, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
