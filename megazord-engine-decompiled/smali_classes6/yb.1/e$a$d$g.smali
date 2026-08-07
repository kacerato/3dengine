.class public Lyb/e$a$d$g;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d;
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
.field public final synthetic b:Lyb/e$a$d;


# direct methods
.method public constructor <init>(Lyb/e$a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g;->b:Lyb/e$a$d;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$a;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$a;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change shader"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$b;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$b;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change blending mode"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$c;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$c;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change UV to world"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$d;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$d;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change UV to vertex"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$e;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$e;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Enable double sided"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$f;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$f;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Disable double sided"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$g;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$g;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change custom roughness value"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$h;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$h;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change custom metallic value"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$d$g$i;

    invoke-direct {v0, p0}, Lyb/e$a$d$g$i;-><init>(Lyb/e$a$d$g;)V

    const-string v1, "Change wind effect value"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
