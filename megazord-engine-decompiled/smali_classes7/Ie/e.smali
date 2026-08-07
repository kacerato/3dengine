.class public abstract LIe/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIe/e$a;,
        LIe/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)LIe/e$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/f;

    invoke-direct {v0, p0}, LIe/f;-><init>(Landroid/content/Context;)V

    invoke-static {}, LJe/a;->s()LJe/a;

    move-result-object p0

    invoke-virtual {v0, p0}, LIe/f;->c(LIe/i;)LIe/e$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)LIe/e$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/f;

    invoke-direct {v0, p0}, LIe/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)LIe/e;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LIe/e;->a(Landroid/content/Context;)LIe/e$a;

    move-result-object p0

    invoke-static {}, LJe/a;->s()LJe/a;

    move-result-object v0

    invoke-interface {p0, v0}, LIe/e$a;->c(LIe/i;)LIe/e$a;

    move-result-object p0

    invoke-interface {p0}, LIe/e$a;->build()LIe/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()LIe/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Ljava/lang/Class;)LIe/i;
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
.end method

.method public abstract f()Ljava/util/List;
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
.end method

.method public abstract g(Ljava/lang/Class;)Z
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
.end method

.method public abstract h(Ljava/lang/String;)Lpi/v;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i(Lpi/v;)Landroid/text/Spanned;
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract j(Ljava/lang/Class;)LIe/i;
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
.end method

.method public abstract k(Landroid/widget/TextView;Ljava/lang/String;)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract l(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract m(Ljava/lang/String;)Landroid/text/Spanned;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
