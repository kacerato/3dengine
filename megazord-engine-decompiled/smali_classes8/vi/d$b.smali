.class public Lvi/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvi/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi/d$b;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi/d$b;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lvi/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lvi/d$b;->a:Z

    return p0
.end method

.method public static synthetic b(Lvi/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvi/d$b;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c()Lvi/d;
    .locals 2

    new-instance v0, Lvi/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvi/d;-><init>(Lvi/d$b;Lvi/d$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/Iterable;)Lvi/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhi/a;",
            ">;)",
            "Lvi/d$b;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi/a;

    instance-of v1, v0, Lvi/d$d;

    if-eqz v1, :cond_0

    check-cast v0, Lvi/d$d;

    invoke-interface {v0, p0}, Lvi/d$d;->a(Lvi/d$b;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public e(Lvi/c;)Lvi/d$b;
    .locals 1

    iget-object v0, p0, Lvi/d$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Z)Lvi/d$b;
    .locals 0

    iput-boolean p1, p0, Lvi/d$b;->a:Z

    return-object p0
.end method
