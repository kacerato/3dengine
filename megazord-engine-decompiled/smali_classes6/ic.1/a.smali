.class public Lic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:LNb/b;

.field public static b:Z

.field public static final c:Lic/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/b;

    invoke-direct {v0}, Lic/b;-><init>()V

    sput-object v0, Lic/a;->c:Lic/b;

    new-instance v0, Lic/a$a;

    invoke-direct {v0}, Lic/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g(LP8/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LNb/b;
    .locals 1

    sget-object v0, Lic/a;->a:LNb/b;

    return-object v0
.end method

.method public static synthetic b()Lic/b;
    .locals 1

    sget-object v0, Lic/a;->c:Lic/b;

    return-object v0
.end method

.method public static c()LNb/b;
    .locals 1

    sget-object v0, Lic/a;->a:LNb/b;

    return-object v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lic/a;->b:Z

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameSettings"
        }
    .end annotation

    sget-boolean v0, Lic/a;->b:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lic/a;->b:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object p0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->j()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lic/a;->a:LNb/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LNb/b;->v()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, LNb/b;

    invoke-direct {v2, v1, v1}, LNb/b;-><init>(II)V

    sput-object v2, Lic/a;->a:LNb/b;

    new-instance v1, Lic/a$b;

    invoke-direct {v1}, Lic/a$b;-><init>()V

    invoke-virtual {v2, v1}, LNb/b;->j(LTb/h;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->s()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->r(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lic/a;->a:LNb/b;

    invoke-virtual {v2, v0, v1}, LNb/b;->F(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lic/a;->a:LNb/b;

    invoke-virtual {p0}, LNb/b;->l()V

    sget-object p0, Lic/a;->c:Lic/b;

    sget-object v0, Lic/a;->a:LNb/b;

    invoke-virtual {p0, v0}, Lic/b;->b(LNb/a;)V

    invoke-static {p0}, Lva/g;->g(Lva/b;)V

    :cond_3
    return-void
.end method
