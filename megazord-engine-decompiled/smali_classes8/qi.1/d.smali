.class public Lqi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi/d$c;,
        Lqi/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lri/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsi/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lqi/c;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqi/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqi/d$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lqi/d$b;->a(Lqi/d$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lqi/d$b;->b(Lqi/d$b;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lki/h;->k(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lqi/d;->a:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lqi/d$b;->c(Lqi/d$b;)Lqi/c;

    move-result-object v0

    iput-object v0, p0, Lqi/d;->c:Lqi/c;

    .line 5
    invoke-static {p1}, Lqi/d$b;->d(Lqi/d$b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lqi/d;->d:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lqi/d$b;->e(Lqi/d$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lqi/d;->b:Ljava/util/List;

    .line 7
    new-instance v1, Lki/m;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lki/m;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 9
    invoke-interface {v0, v1}, Lqi/c;->a(Lqi/b;)Lqi/a;

    return-void
.end method

.method public synthetic constructor <init>(Lqi/d$b;Lqi/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqi/d;-><init>(Lqi/d$b;)V

    return-void
.end method

.method public static a()Lqi/d$b;
    .locals 1

    new-instance v0, Lqi/d$b;

    invoke-direct {v0}, Lqi/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lki/h;
    .locals 4

    new-instance v0, Lki/h;

    iget-object v1, p0, Lqi/d;->a:Ljava/util/List;

    iget-object v2, p0, Lqi/d;->c:Lqi/c;

    iget-object v3, p0, Lqi/d;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lki/h;-><init>(Ljava/util/List;Lqi/c;Ljava/util/List;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lpi/v;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lqi/d;->b()Lki/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lki/h;->u(Ljava/lang/String;)Lpi/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqi/d;->e(Lpi/v;)Lpi/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/io/Reader;)Lpi/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lqi/d;->b()Lki/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lki/h;->t(Ljava/io/Reader;)Lpi/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqi/d;->e(Lpi/v;)Lpi/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lpi/v;)Lpi/v;
    .locals 2

    iget-object v0, p0, Lqi/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqi/e;

    invoke-interface {v1, p1}, Lqi/e;->a(Lpi/v;)Lpi/v;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
