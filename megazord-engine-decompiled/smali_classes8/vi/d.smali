.class public Lvi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lti/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi/d$c;,
        Lvi/d$d;,
        Lvi/d$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvi/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvi/d$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lvi/d$b;->a(Lvi/d$b;)Z

    move-result v0

    iput-boolean v0, p0, Lvi/d;->a:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lvi/d$b;->b(Lvi/d$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lvi/d;->b:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lvi/d$b;->b(Lvi/d$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p1, Lvi/d$a;

    invoke-direct {p1, p0}, Lvi/d$a;-><init>(Lvi/d;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lvi/d$b;Lvi/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvi/d;-><init>(Lvi/d$b;)V

    return-void
.end method

.method public static synthetic c(Lvi/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvi/d;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lvi/d;)Z
    .locals 0

    iget-boolean p0, p0, Lvi/d;->a:Z

    return p0
.end method

.method public static e()Lvi/d$b;
    .locals 1

    new-instance v0, Lvi/d$b;

    invoke-direct {v0}, Lvi/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lpi/v;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lvi/d;->b(Lpi/v;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lpi/v;Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lvi/d$c;

    new-instance v1, Lvi/e;

    invoke-direct {v1, p2}, Lvi/e;-><init>(Ljava/lang/Appendable;)V

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p2}, Lvi/d$c;-><init>(Lvi/d;Lvi/e;Lvi/d$a;)V

    invoke-virtual {v0, p1}, Lvi/d$c;->a(Lpi/v;)V

    return-void
.end method
