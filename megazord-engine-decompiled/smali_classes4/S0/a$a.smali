.class public LS0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS0/a$a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Z

.field public f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Z

.field public l:LS0/z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic A(LS0/a$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic B(LS0/a$a;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LS0/a$a;->k:Z

    return-void
.end method

.method public static bridge synthetic C(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->e:Z

    return p0
.end method

.method public static bridge synthetic D(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->n:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic a(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->o:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic b(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->b:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic c(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->h:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic d(LS0/a$a;)Z
    .locals 0

    iget-boolean p0, p0, LS0/a$a;->k:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic e(LS0/a$a;)I
    .locals 0

    iget p0, p0, LS0/a$a;->i:I

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic f(LS0/a$a;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, LS0/a$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public static bridge synthetic g(LS0/a$a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, LS0/a$a;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic h(LS0/a$a;)LS0/z;
    .locals 0

    iget-object p0, p0, LS0/a$a;->l:LS0/z;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic i(LS0/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LS0/a$a;->j:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic j(LS0/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LS0/a$a;->m:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic k(LS0/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LS0/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(LS0/a$a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LS0/a$a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic m(LS0/a$a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LS0/a$a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic n(LS0/a$a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic o(LS0/a$a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic p(LS0/a$a;Z)V
    .locals 0

    iput-boolean p1, p0, LS0/a$a;->e:Z

    return-void
.end method

.method public static bridge synthetic q(LS0/a$a;LS0/z;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LS0/a$a;->l:LS0/z;

    return-void
.end method

.method public static bridge synthetic r(LS0/a$a;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LS0/a$a;->n:Z

    return-void
.end method

.method public static bridge synthetic s(LS0/a$a;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LS0/a$a;->o:Z

    return-void
.end method

.method public static bridge synthetic t(LS0/a$a;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LS0/a$a;->j:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic u(LS0/a$a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->g:Landroid/os/Bundle;

    return-void
.end method

.method public static bridge synthetic v(LS0/a$a;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LS0/a$a;->m:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic w(LS0/a$a;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->a:Landroid/accounts/Account;

    return-void
.end method

.method public static bridge synthetic x(LS0/a$a;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LS0/a$a;->b:Z

    return-void
.end method

.method public static bridge synthetic y(LS0/a$a;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LS0/a$a;->h:Z

    return-void
.end method

.method public static bridge synthetic z(LS0/a$a;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LS0/a$a;->i:I

    return-void
.end method
