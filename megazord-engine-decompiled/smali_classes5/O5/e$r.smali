.class public LO5/e$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e;->U1(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:LO5/e;


# direct methods
.method public constructor <init>(LO5/e;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$files",
            "val$r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO5/e$r;->d:LO5/e;

    iput-object p2, p0, LO5/e$r;->b:Ljava/util/List;

    iput-object p3, p0, LO5/e$r;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v0}, LO5/e;->w1(LO5/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v0}, LO5/e;->w1(LO5/e;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LO5/e$r;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v0}, LO5/e;->x1(LO5/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v2}, LO5/e;->w1(LO5/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, LO5/d;

    invoke-direct {v2}, LO5/d;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, LO5/d;

    invoke-direct {v2}, LO5/d;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    iget-object v4, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v4, v3}, LO5/e;->y1(LO5/e;Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, LO5/e$t;

    iget-object v5, p0, LO5/e$r;->d:LO5/e;

    invoke-direct {v4, v5, v3}, LO5/e$t;-><init>(LO5/e;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    invoke-virtual {v4, v5}, LX7/i;->r(Z)V

    iput v0, v4, LX7/i;->c:I

    iget-object v5, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v5, v4, v3}, LO5/e;->z1(LO5/e;LO5/e$t;Landroidx/documentfile/provider/DocumentFile;)V

    iget-object v3, p0, LO5/e$r;->d:LO5/e;

    invoke-static {v3}, LO5/e;->x1(LO5/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, LO5/e$r;->d:LO5/e;

    iget-object v1, p0, LO5/e$r;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T0(Ljava/lang/Runnable;)V

    return-void
.end method
