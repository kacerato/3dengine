.class public LIe/h;
.super LIe/e;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView$BufferType;

.field public final b:Lqi/d;

.field public final c:LIe/n;

.field public final d:LIe/g;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LIe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LIe/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView$BufferType;LIe/e$b;Lqi/d;LIe/n;LIe/g;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Landroid/widget/TextView$BufferType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/e$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lqi/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LIe/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView$BufferType;",
            "LIe/e$b;",
            "Lqi/d;",
            "LIe/n;",
            "LIe/g;",
            "Ljava/util/List<",
            "LIe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LIe/e;-><init>()V

    iput-object p1, p0, LIe/h;->a:Landroid/widget/TextView$BufferType;

    iput-object p2, p0, LIe/h;->f:LIe/e$b;

    iput-object p3, p0, LIe/h;->b:Lqi/d;

    iput-object p4, p0, LIe/h;->c:LIe/n;

    iput-object p5, p0, LIe/h;->d:LIe/g;

    iput-object p6, p0, LIe/h;->e:Ljava/util/List;

    iput-boolean p7, p0, LIe/h;->g:Z

    return-void
.end method

.method public static synthetic n(LIe/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LIe/h;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c()LIe/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/h;->d:LIe/g;

    return-object v0
.end method

.method public e(Ljava/lang/Class;)LIe/i;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "LIe/i;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    iget-object v0, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIe/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LIe/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LIe/h;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Class;)Z
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "LIe/i;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LIe/h;->e(Ljava/lang/Class;)LIe/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/String;)Lpi/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIe/i;

    invoke-interface {v1, p1}, LIe/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIe/h;->b:Lqi/d;

    invoke-virtual {v0, p1}, Lqi/d;->c(Ljava/lang/String;)Lpi/v;

    move-result-object p1

    return-object p1
.end method

.method public i(Lpi/v;)Landroid/text/Spanned;
    .locals 3
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIe/i;

    invoke-interface {v1, p1}, LIe/i;->g(Lpi/v;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIe/h;->c:LIe/n;

    invoke-virtual {v0}, LIe/n;->a()LIe/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpi/v;->c(Lpi/C;)V

    iget-object v1, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIe/i;

    invoke-interface {v2, p1, v0}, LIe/i;->e(Lpi/v;LIe/m;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LIe/m;->h()LIe/z;

    move-result-object p1

    invoke-virtual {p1}, LIe/z;->q()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Class;)LIe/i;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "LIe/i;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LIe/h;->e(Ljava/lang/Class;)LIe/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Requested plugin `%s` is not registered with this Markwon instance"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, LIe/h;->m(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LIe/h;->l(Landroid/widget/TextView;Landroid/text/Spanned;)V

    return-void
.end method

.method public l(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIe/i;

    invoke-interface {v1, p1, p2}, LIe/i;->j(Landroid/widget/TextView;Landroid/text/Spanned;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIe/h;->f:LIe/e$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, LIe/h;->a:Landroid/widget/TextView$BufferType;

    new-instance v2, LIe/h$a;

    invoke-direct {v2, p0, p1}, LIe/h$a;-><init>(LIe/h;Landroid/widget/TextView;)V

    invoke-interface {v0, p1, p2, v1, v2}, LIe/e$b;->a(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, LIe/h;->a:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p2, p0, LIe/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIe/i;

    invoke-interface {v0, p1}, LIe/i;->d(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public m(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LIe/h;->h(Ljava/lang/String;)Lpi/v;

    move-result-object v0

    invoke-virtual {p0, v0}, LIe/h;->i(Lpi/v;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LIe/h;->g:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method
