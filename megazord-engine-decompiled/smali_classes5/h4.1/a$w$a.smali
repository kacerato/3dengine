.class public Lh4/a$w$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/a$w;
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
.field public final synthetic b:Lh4/a$w;


# direct methods
.method public constructor <init>(Lh4/a$w;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh4/a$w$a;->b:Lh4/a$w;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$a;

    invoke-direct {v0, p0}, Lh4/a$w$a$a;-><init>(Lh4/a$w$a;)V

    const-string v1, "Image"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$k;

    invoke-direct {v0, p0}, Lh4/a$w$a$k;-><init>(Lh4/a$w$a;)V

    const-string v1, "WebView"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$l;

    invoke-direct {v0, p0}, Lh4/a$w$a$l;-><init>(Lh4/a$w$a;)V

    const-string v1, "Rotate image"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$m;

    invoke-direct {v0, p0}, Lh4/a$w$a$m;-><init>(Lh4/a$w$a;)V

    const-string v1, "Sprite renderer"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$n;

    invoke-direct {v0, p0}, Lh4/a$w$a$n;-><init>(Lh4/a$w$a;)V

    const-string v1, "Shape"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$o;

    invoke-direct {v0, p0}, Lh4/a$w$a$o;-><init>(Lh4/a$w$a;)V

    const-string v1, "Text"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$p;

    invoke-direct {v0, p0}, Lh4/a$w$a$p;-><init>(Lh4/a$w$a;)V

    const-string v1, "Button"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$q;

    invoke-direct {v0, p0}, Lh4/a$w$a$q;-><init>(Lh4/a$w$a;)V

    const-string v1, "Check box"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$r;

    invoke-direct {v0, p0}, Lh4/a$w$a$r;-><init>(Lh4/a$w$a;)V

    const-string v1, "Radio group"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$b;

    invoke-direct {v0, p0}, Lh4/a$w$a$b;-><init>(Lh4/a$w$a;)V

    const-string v1, "Hover Button"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$c;

    invoke-direct {v0, p0}, Lh4/a$w$a$c;-><init>(Lh4/a$w$a;)V

    const-string v1, "Dynamic Joystick"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$d;

    invoke-direct {v0, p0}, Lh4/a$w$a$d;-><init>(Lh4/a$w$a;)V

    const-string v1, "Joystick"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$e;

    invoke-direct {v0, p0}, Lh4/a$w$a$e;-><init>(Lh4/a$w$a;)V

    const-string v1, "Driving wheel"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$f;

    invoke-direct {v0, p0}, Lh4/a$w$a$f;-><init>(Lh4/a$w$a;)V

    const-string v1, "SlideArea"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$g;

    invoke-direct {v0, p0}, Lh4/a$w$a$g;-><init>(Lh4/a$w$a;)V

    const-string v1, "Pinch detector"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$h;

    invoke-direct {v0, p0}, Lh4/a$w$a$h;-><init>(Lh4/a$w$a;)V

    const-string v1, "InputText"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$i;

    invoke-direct {v0, p0}, Lh4/a$w$a$i;-><init>(Lh4/a$w$a;)V

    const-string v1, "Progress bar"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lh4/a$w$a$j;

    invoke-direct {v0, p0}, Lh4/a$w$a$j;-><init>(Lh4/a$w$a;)V

    const-string v1, "Slide bar"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object v0, Lwd/b$b;->Tittle:Lwd/b$b;

    const-string v1, "More coming soon..."

    invoke-direct {p1, v0, v1}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
