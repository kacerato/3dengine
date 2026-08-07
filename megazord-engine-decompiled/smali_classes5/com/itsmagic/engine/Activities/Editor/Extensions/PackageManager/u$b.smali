.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;
.super LX7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-direct {p0}, LX7/a;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->r1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;LX7/i;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)Ljava/util/List;

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

    move-object v0, p1

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->v()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->z(LX7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->x(LX7/i;)V

    :goto_0
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

    instance-of v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->v()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object p1

    iput-boolean p2, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->a:Z

    :cond_0
    return-void
.end method
