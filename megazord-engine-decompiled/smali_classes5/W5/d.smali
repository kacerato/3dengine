.class public LW5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW5/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public c:LW5/d$a;

.field public d:LW5/a;

.field public e:Ljava/lang/String;

.field public f:LX5/a;

.field public g:Z


# direct methods
.method public constructor <init>(LW5/d$a;LW5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "insComponent"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LW5/d;->g:Z

    .line 14
    iput-object p1, p0, LW5/d;->c:LW5/d$a;

    .line 15
    iput-object p2, p0, LW5/d;->d:LW5/a;

    return-void
.end method

.method public constructor <init>(LX5/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonEntryCallback",
            "buttonTittle"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, LW5/d;->g:Z

    .line 18
    iput-object p1, p0, LW5/d;->f:LX5/a;

    .line 19
    iput-object p2, p0, LW5/d;->e:Ljava/lang/String;

    .line 20
    sget-object p1, LW5/d$a;->Button:LW5/d$a;

    iput-object p1, p0, LW5/d;->c:LW5/d$a;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW5/d$a;LW5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "type",
            "insComponent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LW5/d;->g:Z

    .line 3
    iput-object p1, p0, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 4
    iput-object p2, p0, LW5/d;->c:LW5/d$a;

    .line 5
    iput-object p3, p0, LW5/d;->d:LW5/a;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW5/d$a;LW5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "type",
            "insComponent",
            "component"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LW5/d;->g:Z

    .line 8
    iput-object p1, p0, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 9
    iput-object p2, p0, LW5/d;->c:LW5/d$a;

    .line 10
    iput-object p3, p0, LW5/d;->d:LW5/a;

    .line 11
    iput-object p4, p0, LW5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, LW5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iput-object v0, p0, LW5/d;->c:LW5/d$a;

    iget-object v1, p0, LW5/d;->d:LW5/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LW5/a;->a()V

    :cond_0
    iput-object v0, p0, LW5/d;->d:LW5/a;

    iput-object v0, p0, LW5/d;->e:Ljava/lang/String;

    iput-object v0, p0, LW5/d;->f:LX5/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, LW5/d;->g:Z

    return-void
.end method
