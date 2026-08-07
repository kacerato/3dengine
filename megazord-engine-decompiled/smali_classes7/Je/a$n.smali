.class public LJe/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJe/a;->z(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lpi/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

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

    check-cast p2, Lpi/p;

    invoke-virtual {p0, p1, p2}, LJe/a$n;->b(LIe/m;Lpi/p;)V

    return-void
.end method

.method public b(LIe/m;Lpi/p;)V
    .locals 6
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LIe/m;->B()LIe/g;

    move-result-object v0

    invoke-virtual {v0}, LIe/g;->f()LIe/k;

    move-result-object v0

    const-class v1, Lpi/p;

    invoke-interface {v0, v1}, LIe/k;->a(Ljava/lang/Class;)LIe/y;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    return-void

    :cond_0
    invoke-interface {p1}, LIe/m;->length()I

    move-result v1

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    invoke-interface {p1}, LIe/m;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, LIe/m;->h()LIe/z;

    move-result-object v2

    const v3, 0xfffc

    invoke-virtual {v2, v3}, LIe/z;->a(C)LIe/z;

    :cond_1
    invoke-interface {p1}, LIe/m;->B()LIe/g;

    move-result-object v2

    invoke-virtual {p2}, Lpi/v;->h()Lpi/v;

    move-result-object v3

    instance-of v3, v3, Lpi/r;

    invoke-virtual {v2}, LIe/g;->c()LOe/a;

    move-result-object v4

    invoke-virtual {p2}, Lpi/p;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, LOe/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, LIe/m;->q()LIe/v;

    move-result-object v4

    sget-object v5, LNe/g;->a:LIe/s;

    invoke-virtual {v5, v4, p2}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    sget-object p2, LNe/g;->b:LIe/s;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    sget-object p2, LNe/g;->c:LIe/s;

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v3}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v4}, LIe/y;->a(LIe/g;LIe/v;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v1, p2}, LIe/m;->c(ILjava/lang/Object;)V

    return-void
.end method
