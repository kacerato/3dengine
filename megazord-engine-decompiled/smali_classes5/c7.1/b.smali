.class public final Lc7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc7/k;

.field public final b:Lc7/m;

.field public final c:Lc7/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc7/k;

    invoke-direct {v0}, Lc7/k;-><init>()V

    iput-object v0, p0, Lc7/b;->a:Lc7/k;

    new-instance v0, Lc7/m;

    invoke-direct {v0}, Lc7/m;-><init>()V

    iput-object v0, p0, Lc7/b;->b:Lc7/m;

    new-instance v0, Lc7/l;

    invoke-direct {v0}, Lc7/l;-><init>()V

    iput-object v0, p0, Lc7/b;->c:Lc7/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "lineNumber",
            "loadedClassList",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lv8/r;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc7/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc7/b;->a:Lc7/k;

    invoke-virtual {v0, p1, p2}, Lc7/k;->c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lc7/b;->b:Lc7/m;

    invoke-virtual {p2, p3, p4}, Lc7/m;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lc7/b;->c:Lc7/l;

    invoke-virtual {p2}, Lc7/l;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lc7/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "isStatic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/List<",
            "Lc7/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc7/b;->b:Lc7/m;

    invoke-virtual {v0, p1, p2}, Lc7/m;->d(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
