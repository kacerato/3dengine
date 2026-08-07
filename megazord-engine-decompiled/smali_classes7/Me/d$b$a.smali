.class public LMe/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMe/d$b;->h(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lii/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LMe/d$b;


# direct methods
.method public constructor <init>(LMe/d$b;)V
    .locals 0

    iput-object p1, p0, LMe/d$b$a;->a:LMe/d$b;

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

    check-cast p2, Lii/c;

    invoke-virtual {p0, p1, p2}, LMe/d$b$a;->b(LIe/m;Lii/c;)V

    return-void
.end method

.method public b(LIe/m;Lii/c;)V
    .locals 4
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lii/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    iget-object v1, p0, LMe/d$b$a;->a:LMe/d$b;

    invoke-static {v1}, LMe/d$b;->a(LMe/d$b;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, LMe/d$b$a;->a:LMe/d$b;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, LMe/d$b;->b(LMe/d$b;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v1, p0, LMe/d$b$a;->a:LMe/d$b;

    invoke-static {v1}, LMe/d$b;->a(LMe/d$b;)Ljava/util/List;

    move-result-object v1

    new-instance v2, LMe/e$e;

    invoke-virtual {p2}, Lii/c;->p()Lii/c$a;

    move-result-object v3

    invoke-static {v3}, LMe/d$b;->c(Lii/c$a;)I

    move-result v3

    invoke-interface {p1}, LIe/m;->h()LIe/z;

    move-result-object p1

    invoke-virtual {p1, v0}, LIe/z;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v3, p1}, LMe/e$e;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LMe/d$b$a;->a:LMe/d$b;

    invoke-virtual {p2}, Lii/c;->q()Z

    move-result p2

    invoke-static {p1, p2}, LMe/d$b;->d(LMe/d$b;Z)Z

    return-void
.end method
