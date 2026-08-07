.class public abstract LJ/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LI/n<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LI/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/n<",
            "LI/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final b:LI/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/m<",
            "TModel;",
            "LI/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LI/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n<",
            "LI/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LJ/a;-><init>(LI/n;LI/m;)V

    return-void
.end method

.method public constructor <init>(LI/n;LI/m;)V
    .locals 0
    .param p2    # LI/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n<",
            "LI/g;",
            "Ljava/io/InputStream;",
            ">;",
            "LI/m<",
            "TModel;",
            "LI/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LJ/a;->a:LI/n;

    .line 4
    iput-object p2, p0, LJ/a;->b:LI/m;

    return-void
.end method

.method public static c(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "LB/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, LI/g;

    invoke-direct {v2, v1}, LI/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILB/h;)LI/n$a;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LB/h;",
            ")",
            "LI/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJ/a;->b:LI/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LI/m;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/g;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, LJ/a;->f(Ljava/lang/Object;IILB/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, LI/g;

    invoke-virtual {p0, p1, p2, p3, p4}, LJ/a;->e(Ljava/lang/Object;IILB/h;)LI/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LI/g;-><init>(Ljava/lang/String;LI/h;)V

    iget-object v0, p0, LJ/a;->b:LI/m;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, v1}, LI/m;->c(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, LJ/a;->d(Ljava/lang/Object;IILB/h;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, LJ/a;->a:LI/n;

    invoke-interface {v1, v0, p2, p3, p4}, LI/n;->a(Ljava/lang/Object;IILB/h;)LI/n$a;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, LI/n$a;

    iget-object p4, p2, LI/n$a;->a:LB/e;

    invoke-static {p1}, LJ/a;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, LI/n$a;->c:LC/d;

    invoke-direct {p3, p4, p1, p2}, LI/n$a;-><init>(LB/e;Ljava/util/List;LC/d;)V

    return-object p3

    :cond_5
    :goto_1
    return-object p2
.end method

.method public d(Ljava/lang/Object;IILB/h;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LB/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;IILB/h;)LI/h;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LB/h;",
            ")",
            "LI/h;"
        }
    .end annotation

    sget-object p1, LI/h;->b:LI/h;

    return-object p1
.end method

.method public abstract f(Ljava/lang/Object;IILB/h;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LB/h;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
