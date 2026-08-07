.class public La6/a$g;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a;->I(Landroid/view/View;)V
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
.field public final synthetic b:La6/a;


# direct methods
.method public constructor <init>(La6/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La6/a$g;->b:La6/a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lwd/b;

    new-instance v1, La6/a$g$a;

    invoke-direct {v1, p0}, La6/a$g$a;-><init>(La6/a$g;)V

    const-string v2, "Use texture"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0}, La6/a$k;->d()Z

    move-result v0

    const-string v1, "Use color"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lwd/b;

    new-instance v3, La6/a$g$b;

    invoke-direct {v3, p0}, La6/a$g$b;-><init>(La6/a$g;)V

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lwd/b;

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0}, La6/a$k;->g()Z

    move-result v0

    const-string v1, "Use number"

    if-eqz v0, :cond_1

    new-instance v0, Lwd/b;

    new-instance v3, La6/a$g$c;

    invoke-direct {v3, p0}, La6/a$g$c;-><init>(La6/a$g;)V

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lwd/b;

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p1}, La6/a;->v(La6/a;)Z

    move-result v0

    const-string v1, "Use noise"

    if-eqz v0, :cond_2

    new-instance v0, Lwd/b;

    new-instance v3, La6/a$g$d;

    invoke-direct {v3, p0}, La6/a$g$d;-><init>(La6/a$g;)V

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lwd/b;

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, La6/a$g$e;

    invoke-direct {v1, p0}, La6/a$g$e;-><init>(La6/a$g;)V

    const-string v3, "Import texture"

    invoke-direct {v0, v3, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p1

    invoke-interface {p1}, La6/a$k;->get()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remove texture"

    const-string v1, "Open texture settings"

    const-string v3, "Show texture in files"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lwd/b;

    new-instance v2, La6/a$g$f;

    invoke-direct {v2, p0}, La6/a$g$f;-><init>(La6/a$g;)V

    invoke-direct {p1, v3, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v2, La6/a$g$g;

    invoke-direct {v2, p0}, La6/a$g$g;-><init>(La6/a$g;)V

    invoke-direct {p1, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, La6/a$g$h;

    invoke-direct {v1, p0}, La6/a$g$h;-><init>(La6/a$g;)V

    invoke-direct {p1, v0, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance p1, Lwd/b;

    invoke-direct {p1, v3, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1, v0, v2}, Lwd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
