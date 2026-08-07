.class public Lw4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Shortcuts"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, LW5/b;

    new-instance v1, Lw4/a$a;

    invoke-direct {v1, p0}, Lw4/a$a;-><init>(Lw4/a;)V

    sget-object v2, LW5/b$a;->SLString:LW5/b$a;

    const-string v3, "Save project"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lw4/a$b;

    invoke-direct {v1, p0}, Lw4/a$b;-><init>(Lw4/a;)V

    const-string v3, "Maximize panel"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lw4/a$c;

    invoke-direct {v0, p0}, Lw4/a$c;-><init>(Lw4/a;)V

    const-string v1, "Focus camera"

    invoke-static {v1, v0}, LZ5/c;->k(Ljava/lang/String;LZ5/d;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lw4/a$d;

    invoke-direct {v0, p0}, Lw4/a$d;-><init>(Lw4/a;)V

    const-string v1, "Position axis"

    invoke-static {v1, v0}, LZ5/c;->k(Ljava/lang/String;LZ5/d;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lw4/a$e;

    invoke-direct {v0, p0}, Lw4/a$e;-><init>(Lw4/a;)V

    const-string v1, "Rotation axis"

    invoke-static {v1, v0}, LZ5/c;->k(Ljava/lang/String;LZ5/d;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lw4/a$f;

    invoke-direct {v0, p0}, Lw4/a$f;-><init>(Lw4/a;)V

    const-string v1, "Scale axis"

    invoke-static {v1, v0}, LZ5/c;->k(Ljava/lang/String;LZ5/d;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
