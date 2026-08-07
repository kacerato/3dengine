.class public final Ls0/l$b;
.super Ls0/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls0/a$a<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ls0/a$a;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILs0/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls0/l$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljavax/inject/Provider;)Ls0/a$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ls0/l$b;->d(Ljava/lang/Object;Ljavax/inject/Provider;)Ls0/l$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljavax/inject/Provider;)Ls0/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Ls0/l$b;->e(Ljavax/inject/Provider;)Ls0/l$b;

    move-result-object p1

    return-object p1
.end method

.method public c()Ls0/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls0/l<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ls0/l;

    iget-object v1, p0, Ls0/a$a;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls0/l;-><init>(Ljava/util/Map;Ls0/l$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljavax/inject/Provider;)Ls0/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/inject/Provider<",
            "TV;>;)",
            "Ls0/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ls0/a$a;->a(Ljava/lang/Object;Ljavax/inject/Provider;)Ls0/a$a;

    return-object p0
.end method

.method public e(Ljavax/inject/Provider;)Ls0/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Ls0/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Ls0/a$a;->b(Ljavax/inject/Provider;)Ls0/a$a;

    return-object p0
.end method
