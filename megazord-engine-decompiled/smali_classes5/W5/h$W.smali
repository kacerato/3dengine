.class public LW5/h$W;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->d(Landroid/view/View;Landroid/content/Context;LW5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V
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
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LW5/b;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;LW5/b;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$textView",
            "val$entry",
            "val$context",
            "val$updateText"
        }
    .end annotation

    iput-object p1, p0, LW5/h$W;->b:Landroid/widget/TextView;

    iput-object p2, p0, LW5/h$W;->c:LW5/b;

    iput-object p3, p0, LW5/h$W;->d:Landroid/content/Context;

    iput-object p4, p0, LW5/h$W;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p3, LW5/h$W$a;

    invoke-direct {p3, p0}, LW5/h$W$a;-><init>(LW5/h$W;)V

    const-string p4, "Remove"

    invoke-direct {p1, p4, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p3, LW5/h$W$b;

    invoke-direct {p3, p0}, LW5/h$W$b;-><init>(LW5/h$W;)V

    const-string p4, "From Project"

    invoke-direct {p1, p4, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p3, LW5/h$W$c;

    invoke-direct {p3, p0}, LW5/h$W$c;-><init>(LW5/h$W;)V

    const-string p4, "Import from Android"

    invoke-direct {p1, p4, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p3, LW5/h$W$d;

    invoke-direct {p3, p0}, LW5/h$W$d;-><init>(LW5/h$W;)V

    const-string p4, "Show in files"

    invoke-direct {p1, p4, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, LW5/b;->o:Ljava/lang/String;

    const-string p2, ".mesh"

    invoke-static {p1, p2}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LW5/h$W$e;

    invoke-direct {p1, p0}, LW5/h$W$e;-><init>(LW5/h$W;)V

    new-instance p2, Lwd/b;

    const-string p3, "Primitives"

    invoke-direct {p2, p3, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
