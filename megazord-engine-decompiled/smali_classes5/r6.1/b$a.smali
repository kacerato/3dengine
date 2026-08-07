.class public Lr6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr6/b;->A1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LX7/k<",
        "Lr6/b$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr6/b;


# direct methods
.method public constructor <init>(Lr6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lr6/b$a;->a:Lr6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(LX7/i;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    check-cast p1, Lr6/b$l;

    invoke-virtual {p0, p1, p2}, Lr6/b$a;->h(Lr6/b$l;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic c(LX7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, Lr6/b$l;

    invoke-virtual {p0, p1}, Lr6/b$a;->g(Lr6/b$l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr6/b$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {v0}, Lr6/b;->z1(Lr6/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, Lr6/b$l;

    invoke-virtual {p0, p1}, Lr6/b$a;->j(Lr6/b$l;)V

    return-void
.end method

.method public bridge synthetic f(LX7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    check-cast p1, Lr6/b$l;

    invoke-virtual {p0, p1, p2}, Lr6/b$a;->i(Lr6/b$l;Z)V

    return-void
.end method

.method public g(Lr6/b$l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/b$l;",
            ")",
            "Ljava/util/List<",
            "Lr6/b$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {v0, p1}, Lr6/b;->y1(Lr6/b;Lr6/b$l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(Lr6/b$l;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(Lr6/b$l;Z)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {p1}, Lr6/b$l;->u(Lr6/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object p1

    invoke-static {v0, p1}, Lr6/b;->r1(Lr6/b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Lr6/b$k;

    move-result-object p1

    iput-boolean p2, p1, Lr6/b$k;->a:Z

    :cond_0
    return-void
.end method

.method public j(Lr6/b$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lr6/b$l;->u(Lr6/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {p1}, Lr6/b$l;->u(Lr6/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v1

    invoke-static {v0, v1}, Lr6/b;->r1(Lr6/b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Lr6/b$k;

    move-result-object v0

    iget-boolean v0, v0, Lr6/b$k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {v0}, Lr6/b;->s1(Lr6/b;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->x(LX7/i;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr6/b$a;->a:Lr6/b;

    invoke-static {v0}, Lr6/b;->s1(Lr6/b;)LX7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LX7/l;->z(LX7/i;)V

    :cond_2
    :goto_0
    return-void
.end method
