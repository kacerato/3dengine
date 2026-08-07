.class public abstract LD6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LD6/a;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0700dc

    .line 2
    iput v0, p0, LD6/d;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, LD6/d;->b:I

    return-void
.end method

.method public static synthetic a(LD6/d;)LD6/a;
    .locals 0

    iget-object p0, p0, LD6/d;->a:LD6/a;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, LD6/d;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LD6/d;->a:LD6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD6/a;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LD6/d;->a:LD6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD6/a;->d()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, LD6/d;->a:LD6/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(LD6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    new-instance v0, LD6/d$a;

    invoke-direct {v0, p0, p1}, LD6/d$a;-><init>(LD6/d;LD6/b;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LD6/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LD6/d$b;

    invoke-direct {v0, p0, p1}, LD6/d$b;-><init>(LD6/d;Ljava/util/List;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    new-instance v0, LD6/d$c;

    invoke-direct {v0, p0}, LD6/d$c;-><init>(LD6/d;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract k()V
.end method

.method public final l(LD6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    iput-object p1, p0, LD6/d;->a:LD6/a;

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LD6/d;->a:LD6/a;

    return-void
.end method
