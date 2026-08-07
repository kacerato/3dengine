.class public Lya/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lya/H;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/H;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/H;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
    iput-object p1, p0, Lya/l;->a:Lya/H;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lya/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object p1, p0, Lya/l;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public static b(Lya/H;)Lya/l;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    new-instance v0, Lya/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lya/l;-><init>(Lya/H;Ljava/util/List;)V

    return-object v0
.end method

.method public static g(Lya/H;Ljava/util/List;)Lya/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/H;",
            "Ljava/util/List<",
            "*>;)",
            "Lya/l;"
        }
    .end annotation

    new-instance v0, Lya/l;

    invoke-direct {v0, p0, p1}, Lya/l;-><init>(Lya/H;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lya/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lya/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Lya/H;
    .locals 1

    iget-object v0, p0, Lya/l;->a:Lya/H;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/l;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public h(Lya/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
    iput-object p1, p0, Lya/l;->a:Lya/H;

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lya/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
