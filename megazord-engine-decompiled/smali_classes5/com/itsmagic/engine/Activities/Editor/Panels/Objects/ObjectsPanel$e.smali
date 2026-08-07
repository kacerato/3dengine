.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lwd/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V

    const-string v2, "New group"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V

    const-string v2, "Refresh"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z

    move-result v3

    const-string v4, " "

    const-string v5, "X"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Enable/Disable toggle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->w1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Vision toggle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Touch toggle"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V

    invoke-direct {v0, p1, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
