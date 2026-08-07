.class public LJe/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->J(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LJe/a;


# direct methods
.method public constructor <init>(LJe/a;)V
    .locals 0

    iput-object p1, p0, LJe/a$g;->a:LJe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LIe/m;Lpi/v;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lpi/A;

    invoke-virtual {p0, p1, p2}, LJe/a$g;->b(LIe/m;Lpi/A;)V

    return-void
.end method

.method public b(LIe/m;Lpi/A;)V
    .locals 3
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/A;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lpi/A;->p()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, LIe/m;->h()LIe/z;

    move-result-object v0

    invoke-virtual {v0, p2}, LIe/z;->f(Ljava/lang/String;)LIe/z;

    iget-object v0, p0, LJe/a$g;->a:LJe/a;

    invoke-static {v0}, LJe/a;->l(LJe/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, LJe/a$g;->a:LJe/a;

    invoke-static {v1}, LJe/a;->l(LJe/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJe/a$p;

    invoke-interface {v2, p1, p2, v0}, LJe/a$p;->a(LIe/m;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
