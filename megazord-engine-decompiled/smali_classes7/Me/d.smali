.class public LMe/d;
.super LIe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/d$b;,
        LMe/d$c;
    }
.end annotation


# instance fields
.field public final a:LMe/h;

.field public final b:LMe/d$b;


# direct methods
.method public constructor <init>(LMe/h;)V
    .locals 1
    .param p1    # LMe/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, LIe/a;-><init>()V

    iput-object p1, p0, LMe/d;->a:LMe/h;

    new-instance v0, LMe/d$b;

    invoke-direct {v0, p1}, LMe/d$b;-><init>(LMe/h;)V

    iput-object v0, p0, LMe/d;->b:LMe/d$b;

    return-void
.end method

.method public static l(LMe/d$c;)LMe/d;
    .locals 1
    .param p0    # LMe/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/h$a;

    invoke-direct {v0}, LMe/h$a;-><init>()V

    invoke-interface {p0, v0}, LMe/d$c;->a(LMe/h$a;)V

    new-instance p0, LMe/d;

    invoke-virtual {v0}, LMe/h$a;->g()LMe/h;

    move-result-object v0

    invoke-direct {p0, v0}, LMe/d;-><init>(LMe/h;)V

    return-object p0
.end method

.method public static m(LMe/h;)LMe/d;
    .locals 1
    .param p0    # LMe/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/d;

    invoke-direct {v0, p0}, LMe/d;-><init>(LMe/h;)V

    return-object v0
.end method

.method public static n(Landroid/content/Context;)LMe/d;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/d;

    invoke-static {p0}, LMe/h;->g(Landroid/content/Context;)LMe/h;

    move-result-object p0

    invoke-direct {v0, p0}, LMe/d;-><init>(LMe/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Lqi/d$b;)V
    .locals 1
    .param p1    # Lqi/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lii/f;->d()Lhi/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqi/d$b;->j(Ljava/lang/Iterable;)Lqi/d$b;

    return-void
.end method

.method public b(LIe/m$b;)V
    .locals 1
    .param p1    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LMe/d;->b:LMe/d$b;

    invoke-virtual {v0, p1}, LMe/d$b;->h(LIe/m$b;)V

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LMe/f;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public g(Lpi/v;)V
    .locals 0
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LMe/d;->b:LMe/d$b;

    invoke-virtual {p1}, LMe/d$b;->g()V

    return-void
.end method

.method public j(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LMe/f;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public o()LMe/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LMe/d;->a:LMe/h;

    return-object v0
.end method
