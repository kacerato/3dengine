.class public Lui/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/e;
.implements Lui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lui/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lui/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmi/a;

.field public final synthetic d:Lui/g;


# direct methods
.method public constructor <init>(Lui/g;Lui/h;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lui/g$d;->d:Lui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lmi/a;

    invoke-direct {v0}, Lmi/a;-><init>()V

    iput-object v0, p0, Lui/g$d;->c:Lmi/a;

    .line 4
    iput-object p2, p0, Lui/g$d;->a:Lui/h;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Lui/g;->e(Lui/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lui/g$d;->b:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lui/g;->e(Lui/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/c;

    .line 7
    iget-object v1, p0, Lui/g$d;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Lui/c;->a(Lui/b;)Lui/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lui/g;->f(Lui/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 9
    invoke-static {p1}, Lui/g;->f(Lui/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/f;

    .line 10
    invoke-interface {v0, p0}, Lui/f;->a(Lui/e;)Lti/a;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lui/g$d;->c:Lmi/a;

    invoke-virtual {v1, v0}, Lmi/a;->a(Lti/a;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lui/g;Lui/h;Lui/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lui/g$d;-><init>(Lui/g;Lui/h;)V

    return-void
.end method


# virtual methods
.method public a(Lpi/v;)V
    .locals 1

    iget-object v0, p0, Lui/g$d;->c:Lmi/a;

    invoke-virtual {v0, p1}, Lmi/a;->b(Lpi/v;)V

    return-void
.end method

.method public b()Lui/h;
    .locals 1

    iget-object v0, p0, Lui/g$d;->a:Lui/h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lui/g$d;->d:Lui/g;

    invoke-static {v0}, Lui/g;->g(Lui/g;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lui/g$d;->d:Lui/g;

    invoke-static {v0}, Lui/g;->d(Lui/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lui/g$d;->d:Lui/g;

    invoke-static {v0}, Lui/g;->c(Lui/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Loi/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public f(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v0}, Lui/g$d;->g(Lpi/v;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final g(Lpi/v;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lui/g$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui/a;

    invoke-interface {v1, p1, p2, p3}, Lui/a;->a(Lpi/v;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method
