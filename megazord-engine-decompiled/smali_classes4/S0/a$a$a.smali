.class public LS0/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS0/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Z

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LS0/a$a$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()LS0/a$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "We only support hostedDomain filter for account chip styled account picker"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LX0/A;->b(ZLjava/lang/Object;)V

    const-string v0, "Consent is only valid for account chip styled account picker"

    invoke-static {v1, v0}, LX0/A;->b(ZLjava/lang/Object;)V

    new-instance v0, LS0/a$a;

    invoke-direct {v0}, LS0/a$a;-><init>()V

    iget-object v1, p0, LS0/a$a$a;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LS0/a$a;->n(LS0/a$a;Ljava/util/ArrayList;)V

    iget-object v1, p0, LS0/a$a$a;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LS0/a$a;->o(LS0/a$a;Ljava/util/ArrayList;)V

    iget-boolean v1, p0, LS0/a$a$a;->d:Z

    invoke-static {v0, v1}, LS0/a$a;->p(LS0/a$a;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, LS0/a$a;->q(LS0/a$a;LS0/z;)V

    invoke-static {v0, v1}, LS0/a$a;->t(LS0/a$a;Ljava/lang/String;)V

    iget-object v2, p0, LS0/a$a$a;->f:Landroid/os/Bundle;

    invoke-static {v0, v2}, LS0/a$a;->u(LS0/a$a;Landroid/os/Bundle;)V

    iget-object v2, p0, LS0/a$a$a;->a:Landroid/accounts/Account;

    invoke-static {v0, v2}, LS0/a$a;->w(LS0/a$a;Landroid/accounts/Account;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, LS0/a$a;->x(LS0/a$a;Z)V

    invoke-static {v0, v2}, LS0/a$a;->y(LS0/a$a;Z)V

    invoke-static {v0, v1}, LS0/a$a;->v(LS0/a$a;Ljava/lang/String;)V

    invoke-static {v0, v2}, LS0/a$a;->z(LS0/a$a;I)V

    iget-object v1, p0, LS0/a$a$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LS0/a$a;->A(LS0/a$a;Ljava/lang/String;)V

    invoke-static {v0, v2}, LS0/a$a;->B(LS0/a$a;Z)V

    invoke-static {v0, v2}, LS0/a$a;->r(LS0/a$a;Z)V

    invoke-static {v0, v2}, LS0/a$a;->s(LS0/a$a;Z)V

    return-object v0
.end method

.method public b(Ljava/util/List;)LS0/a$a$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;)",
            "LS0/a$a$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, LS0/a$a$a;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public c(Ljava/util/List;)LS0/a$a$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "LS0/a$a$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, LS0/a$a$a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public d(Z)LS0/a$a$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, LS0/a$a$a;->d:Z

    return-object p0
.end method

.method public e(Landroid/os/Bundle;)LS0/a$a$a;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LS0/a$a$a;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method public f(Landroid/accounts/Account;)LS0/a$a$a;
    .locals 0
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LS0/a$a$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public g(Ljava/lang/String;)LS0/a$a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LS0/a$a$a;->e:Ljava/lang/String;

    return-object p0
.end method
