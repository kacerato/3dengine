.class public Lp7/b$d;
.super LX7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp7/b;


# direct methods
.method public constructor <init>(Lp7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp7/b$d;->a:Lp7/b;

    invoke-direct {p0}, LX7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->u1(Lp7/b;)LX7/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->u1(Lp7/b;)LX7/l;

    move-result-object v0

    invoke-virtual {v0}, LX7/l;->o()LX7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->u1(Lp7/b;)LX7/l;

    move-result-object v0

    invoke-virtual {v0}, LX7/l;->o()LX7/i;

    move-result-object v0

    instance-of v0, v0, Lp7/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->u1(Lp7/b;)LX7/l;

    move-result-object v0

    invoke-virtual {v0}, LX7/l;->o()LX7/i;

    move-result-object v0

    check-cast v0, Lp7/a;

    invoke-virtual {v0}, Lp7/a;->u()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v1}, Lp7/b;->p1(Lp7/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->v1(Lp7/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->p1(Lp7/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->v1(Lp7/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(LX7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0, p1}, Lp7/b;->r1(Lp7/b;LX7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0}, Lp7/b;->s1(Lp7/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, Lp7/a;

    if-eqz v0, :cond_0

    check-cast p1, Lp7/a;

    invoke-virtual {p1}, Lp7/a;->u()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    iget-object v0, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {v0, p1}, Lp7/b;->q1(Lp7/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p0, Lp7/b$d;->a:Lp7/b;

    invoke-static {p1}, Lp7/b;->t1(Lp7/b;)V

    :cond_0
    return-void
.end method

.method public f(LX7/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    instance-of v0, p1, Lp7/a;

    if-eqz v0, :cond_0

    check-cast p1, Lp7/a;

    invoke-virtual {p1}, Lp7/a;->u()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    :cond_0
    return-void
.end method
