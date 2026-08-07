.class public Lh4/a$w;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parent"
        }
    .end annotation

    iput-object p1, p0, Lh4/a$w;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a;

    invoke-direct {v0, p0}, Lh4/a$w$a;-><init>(Lh4/a$w;)V

    const-string v1, "Widgets"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$b;

    invoke-direct {v0, p0}, Lh4/a$w$b;-><init>(Lh4/a$w;)V

    const-string v1, "Scroll view"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$c;

    invoke-direct {v0, p0}, Lh4/a$w$c;-><init>(Lh4/a$w;)V

    const-string v1, "Layouts"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$d;

    invoke-direct {v0, p0}, Lh4/a$w$d;-><init>(Lh4/a$w;)V

    const-string v1, "Controller"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$e;

    invoke-direct {v0, p0}, Lh4/a$w$e;-><init>(Lh4/a$w;)V

    const-string v1, "3D UI"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object v0, Lwd/b$b;->Tittle:Lwd/b$b;

    const-string v1, "More coming soon..."

    invoke-direct {p1, v0, v1}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
