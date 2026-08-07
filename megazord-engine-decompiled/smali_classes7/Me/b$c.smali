.class public LMe/b$c;
.super Lpi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LIe/e;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMe/b$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMe/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(LIe/e;)V
    .locals 0
    .param p1    # LIe/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lpi/a;-><init>()V

    iput-object p1, p0, LMe/b$c;->a:LIe/e;

    return-void
.end method

.method public static N(Lii/c$a;)LMe/b$a;
    .locals 1
    .param p0    # Lii/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lii/c$a;->RIGHT:Lii/c$a;

    if-ne v0, p0, :cond_0

    sget-object p0, LMe/b$a;->RIGHT:LMe/b$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lii/c$a;->CENTER:Lii/c$a;

    if-ne v0, p0, :cond_1

    sget-object p0, LMe/b$a;->CENTER:LMe/b$a;

    goto :goto_0

    :cond_1
    sget-object p0, LMe/b$a;->LEFT:LMe/b$a;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public O()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LMe/b$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LMe/b$c;->b:Ljava/util/List;

    return-object v0
.end method

.method public e(Lpi/g;)V
    .locals 4

    instance-of v0, p1, Lii/c;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    check-cast p1, Lii/c;

    iget-object v0, p0, LMe/b$c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LMe/b$c;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, LMe/b$c;->c:Ljava/util/List;

    new-instance v1, LMe/b$b;

    invoke-virtual {p1}, Lii/c;->p()Lii/c$a;

    move-result-object v2

    invoke-static {v2}, LMe/b$c;->N(Lii/c$a;)LMe/b$a;

    move-result-object v2

    iget-object v3, p0, LMe/b$c;->a:LIe/e;

    invoke-virtual {v3, p1}, LIe/e;->i(Lpi/v;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LMe/b$b;-><init>(LMe/b$a;Landroid/text/Spanned;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lii/c;->q()Z

    move-result p1

    iput-boolean p1, p0, LMe/b$c;->d:Z

    return-void

    :cond_1
    instance-of v0, p1, Lii/d;

    if-nez v0, :cond_3

    instance-of v0, p1, Lii/e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lpi/a;->f(Lpi/v;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lpi/a;->f(Lpi/v;)V

    iget-object p1, p0, LMe/b$c;->c:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, LMe/b$c;->b:Ljava/util/List;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LMe/b$c;->b:Ljava/util/List;

    :cond_4
    iget-object p1, p0, LMe/b$c;->b:Ljava/util/List;

    new-instance v0, LMe/b$d;

    iget-boolean v1, p0, LMe/b$c;->d:Z

    iget-object v2, p0, LMe/b$c;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, LMe/b$d;-><init>(ZLjava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, LMe/b$c;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, LMe/b$c;->d:Z

    return-void
.end method
