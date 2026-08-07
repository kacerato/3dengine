.class public LO5/e$t;
.super LX7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field public m:Landroidx/documentfile/provider/DocumentFile;

.field public n:Z

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation
.end field

.field public p:LO5/e$t;

.field public final synthetic q:LO5/e;


# direct methods
.method public constructor <init>(LO5/e;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "file"
        }
    .end annotation

    iput-object p1, p0, LO5/e$t;->q:LO5/e;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LE7/b;

    invoke-direct {v1}, LE7/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, LO5/a;

    invoke-direct {v1}, LO5/a;-><init>()V

    :goto_0
    invoke-direct {p0, v0, v1}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LO5/e$t;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO5/e$t;->o:Ljava/util/List;

    iput-object p2, p0, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    new-instance p2, LY7/e;

    new-instance v0, LO5/e$t$a;

    invoke-direct {v0, p0, p1}, LO5/e$t$a;-><init>(LO5/e$t;LO5/e;)V

    invoke-direct {p2, v0}, LY7/e;-><init>(LY7/e$c;)V

    invoke-super {p0, p2}, LX7/i;->a(LY7/a;)LX7/i;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 3

    iget-object v0, p0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX7/i;

    check-cast v2, LO5/e$t;

    iget-boolean v2, v2, LO5/e$t;->n:Z

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 3

    iget-object v0, p0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX7/i;

    check-cast v1, LO5/e$t;

    iget-boolean v2, v1, LO5/e$t;->n:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, LO5/e$t;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, LO5/e$t;->p:LO5/e$t;

    if-eqz v0, :cond_0

    iget-object v1, p0, LO5/e$t;->q:LO5/e;

    invoke-static {v1, v0}, LO5/e;->p1(LO5/e;LO5/e$t;)V

    iget-object v0, p0, LO5/e$t;->p:LO5/e$t;

    invoke-virtual {v0}, LO5/e$t;->w()V

    :cond_0
    return-void
.end method

.method public x(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX7/i;

    check-cast v1, LO5/e$t;

    iput-boolean p1, v1, LO5/e$t;->n:Z

    invoke-virtual {v1, p1}, LO5/e$t;->x(Z)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
