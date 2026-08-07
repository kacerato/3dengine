.class public Lyb/e$a$d$g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$g;


# direct methods
.method public constructor <init>(Lyb/e$a$d$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g$f;->a:Lyb/e$a$d$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lxc/a;->values()[Lxc/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lyb/e$a$d$g$f;->a:Lyb/e$a$d$g;

    new-instance v6, Lwd/b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lyb/e$a$d$g$f$a;

    invoke-direct {v7, p0}, Lyb/e$a$d$g$f$a;-><init>(Lyb/e$a$d$g$f;)V

    invoke-direct {v6, v4, v7}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, LL4/a$e;->Right:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method
