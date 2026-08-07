.class public Lye/q$c;
.super Lye/q$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/q$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lye/q<",
        "TK;TV;>.g<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lye/q;


# direct methods
.method public constructor <init>(Lye/q;)V
    .locals 1

    iput-object p1, p0, Lye/q$c;->c:Lye/q;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lye/q$g;-><init>(Lye/q;Lye/q$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lye/q$c;->e(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lye/q$c;->g(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/q$c;->c:Lye/q;

    invoke-virtual {p0, p1}, Lye/q$c;->f(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lye/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lye/q$c;->c:Lye/q;

    invoke-static {v1}, Lye/q;->Ve(Lye/q;)LGe/a;

    move-result-object v1

    invoke-interface {v1, v0, p1}, LGe/a;->vd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lye/q$c;->f(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lye/q$c;->c:Lye/q;

    invoke-static {v1, v0}, Lye/q;->Te(Lye/q;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lye/q$c;->h(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lye/q$c;->c:Lye/q;

    iget-object v2, v1, Lye/q;->s:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v1}, Lye/q;->Ue(Lye/q;)LGe/a;

    move-result-object v1

    iget-object v2, p0, Lye/q$c;->c:Lye/q;

    iget-object v2, v2, Lye/q;->s:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, p1, v2}, LGe/a;->vd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lye/q$c;->c:Lye/q;

    invoke-virtual {p1, v0}, Lye/q;->ue(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lye/q$c$a;

    iget-object v1, p0, Lye/q$c;->c:Lye/q;

    invoke-direct {v0, p0, v1}, Lye/q$c$a;-><init>(Lye/q$c;Lye/q;)V

    return-object v0
.end method
