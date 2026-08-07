.class public LIe/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIe/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;",
            "LIe/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)LIe/y;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "LIe/y;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LIe/l$a;->b(Ljava/lang/Class;)LIe/y;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;)LIe/y;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "LIe/y;"
        }
    .end annotation

    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LIe/y;

    return-object p1
.end method

.method public build()LIe/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/l;

    iget-object v1, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, LIe/l;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;LIe/y;)LIe/k$a;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "LIe/y;",
            ")",
            "LIe/k$a;"
        }
    .end annotation

    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIe/y;

    if-nez v0, :cond_0

    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, LIe/l$b;

    if-eqz v1, :cond_1

    check-cast v0, LIe/l$b;

    iget-object p1, v0, LIe/l$b;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, LIe/l$b;

    invoke-direct {v1, v0, p2}, LIe/l$b;-><init>(LIe/y;LIe/y;)V

    iget-object p2, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public d(Ljava/lang/Class;LIe/y;)LIe/k$a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "LIe/y;",
            ")",
            "LIe/k$a;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, LIe/l$a;->c(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Class;LIe/y;)LIe/k$a;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "LIe/y;",
            ")",
            "LIe/k$a;"
        }
    .end annotation

    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIe/y;

    if-nez v0, :cond_0

    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, LIe/l$b;

    if-eqz v1, :cond_1

    check-cast v0, LIe/l$b;

    iget-object p1, v0, LIe/l$b;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, LIe/l$b;

    invoke-direct {v1, p2, v0}, LIe/l$b;-><init>(LIe/y;LIe/y;)V

    iget-object p2, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public f(Ljava/lang/Class;LIe/y;)LIe/k$a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "LIe/y;",
            ")",
            "LIe/k$a;"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIe/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
