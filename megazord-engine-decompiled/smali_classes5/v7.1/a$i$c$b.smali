.class public Lv7/a$i$c$b;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c;
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
.field public final synthetic b:Lv7/a$i$c;


# direct methods
.method public constructor <init>(Lv7/a$i$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$b;->b:Lv7/a$i$c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    const-string v0, "WORLD SETTINGS"

    invoke-direct {p1, v0}, Lwd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$c;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$c;-><init>(Lv7/a$i$c$b;)V

    const v1, 0x7f07021f

    const-string v2, "Physics"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$d;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$d;-><init>(Lv7/a$i$c$b;)V

    const-string v3, "More settings"

    invoke-direct {p1, v1, v3, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    const-string v0, "PROJECT SETTINGS"

    invoke-direct {p1, v0}, Lwd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$e;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$e;-><init>(Lv7/a$i$c$b;)V

    const-string v4, "Graphics"

    invoke-direct {p1, v1, v4, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$f;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$f;-><init>(Lv7/a$i$c$b;)V

    const-string v5, "Decals"

    invoke-direct {p1, v1, v5, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$g;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$g;-><init>(Lv7/a$i$c$b;)V

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$h;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$h;-><init>(Lv7/a$i$c$b;)V

    invoke-direct {p1, v1, v3, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    const-string v0, "EDITOR SETTINGS"

    invoke-direct {p1, v0}, Lwd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$i;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$i;-><init>(Lv7/a$i$c$b;)V

    invoke-direct {p1, v1, v4, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$j;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$j;-><init>(Lv7/a$i$c$b;)V

    const-string v2, "3D Editor"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$k;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$k;-><init>(Lv7/a$i$c$b;)V

    const-string v2, "Behaviours"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$a;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$a;-><init>(Lv7/a$i$c$b;)V

    const-string v2, "Theme"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$b$b;

    invoke-direct {v0, p0}, Lv7/a$i$c$b$b;-><init>(Lv7/a$i$c$b;)V

    invoke-direct {p1, v1, v3, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
