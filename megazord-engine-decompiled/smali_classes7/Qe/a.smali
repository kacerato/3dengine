.class public LQe/a;
.super LIe/a;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/method/MovementMethod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/method/MovementMethod;)V
    .locals 0
    .param p1    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, LIe/a;-><init>()V

    iput-object p1, p0, LQe/a;->a:Landroid/text/method/MovementMethod;

    return-void
.end method

.method public static l()LQe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-static {v0}, LQe/a;->m(Landroid/text/method/MovementMethod;)LQe/a;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/text/method/MovementMethod;)LQe/a;
    .locals 1
    .param p0    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LQe/a;

    invoke-direct {v0, p0}, LQe/a;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method

.method public static n()LQe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-static {v0}, LQe/a;->m(Landroid/text/method/MovementMethod;)LQe/a;

    move-result-object v0

    return-object v0
.end method

.method public static o()LQe/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LQe/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQe/a;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method


# virtual methods
.method public j(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p2

    iget-object v0, p0, LQe/a;->a:Landroid/text/method/MovementMethod;

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public k(LIe/i$b;)V
    .locals 1
    .param p1    # LIe/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, LJe/a;

    invoke-interface {p1, v0}, LIe/i$b;->b(Ljava/lang/Class;)LIe/i;

    move-result-object p1

    check-cast p1, LJe/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LJe/a;->x(Z)LJe/a;

    return-void
.end method
