.class public LW5/h$W$e;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW5/h$W;
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
.field public final synthetic b:LW5/h$W;


# direct methods
.method public constructor <init>(LW5/h$W;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW5/h$W$e;->b:LW5/h$W;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$d;

    invoke-direct {v0, p0}, LW5/h$W$e$d;-><init>(LW5/h$W$e;)V

    const-string v1, "Cube Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$e;

    invoke-direct {v0, p0}, LW5/h$W$e$e;-><init>(LW5/h$W$e;)V

    const-string v1, "Sphere Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$f;

    invoke-direct {v0, p0}, LW5/h$W$e$f;-><init>(LW5/h$W$e;)V

    const-string v1, "Sphere LowPoly Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$g;

    invoke-direct {v0, p0}, LW5/h$W$e$g;-><init>(LW5/h$W$e;)V

    const-string v1, "Cone Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$h;

    invoke-direct {v0, p0}, LW5/h$W$e$h;-><init>(LW5/h$W$e;)V

    const-string v1, "Cylinder Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$i;

    invoke-direct {v0, p0}, LW5/h$W$e$i;-><init>(LW5/h$W$e;)V

    const-string v1, "Circle Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$j;

    invoke-direct {v0, p0}, LW5/h$W$e$j;-><init>(LW5/h$W$e;)V

    const-string v1, "Torus Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$k;

    invoke-direct {v0, p0}, LW5/h$W$e$k;-><init>(LW5/h$W$e;)V

    const-string v1, "Square Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$l;

    invoke-direct {v0, p0}, LW5/h$W$e$l;-><init>(LW5/h$W$e;)V

    const-string v1, "Square90 Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$a;

    invoke-direct {v0, p0}, LW5/h$W$e$a;-><init>(LW5/h$W$e;)V

    const-string v1, "Capsule Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$b;

    invoke-direct {v0, p0}, LW5/h$W$e$b;-><init>(LW5/h$W$e;)V

    const-string v1, "HalfCapsule Primitive"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LW5/h$W$e$c;

    invoke-direct {v0, p0}, LW5/h$W$e$c;-><init>(LW5/h$W$e;)V

    const-string v1, "Render target"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
