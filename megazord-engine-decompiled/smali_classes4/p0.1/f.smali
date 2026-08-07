.class public final Lp0/f;
.super Lp0/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/f$b;
    }
.end annotation


# instance fields
.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;

.field public e:Ljavax/inject/Provider;

.field public f:Ljavax/inject/Provider;

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lz0/N;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/g;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lx0/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/s;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/w;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lp0/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lp0/x;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lp0/f;->f(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lp0/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp0/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static e()Lp0/x$a;
    .locals 2

    new-instance v0, Lp0/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp0/f$b;-><init>(Lp0/f$a;)V

    return-object v0
.end method


# virtual methods
.method public c()Lz0/d;
    .locals 1

    iget-object v0, p0, Lp0/f;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/d;

    return-object v0
.end method

.method public d()Lp0/w;
    .locals 1

    iget-object v0, p0, Lp0/f;->n:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/w;

    return-object v0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lp0/l;->a()Lp0/l;

    move-result-object v0

    invoke-static {v0}, Ls0/f;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lp0/f;->b:Ljavax/inject/Provider;

    invoke-static {p1}, Ls0/j;->a(Ljava/lang/Object;)Ls0/g;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->c:Ljavax/inject/Provider;

    invoke-static {}, LB0/e;->a()LB0/e;

    move-result-object v0

    invoke-static {}, LB0/f;->a()LB0/f;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lq0/k;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lq0/k;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->d:Ljavax/inject/Provider;

    iget-object v0, p0, Lp0/f;->c:Ljavax/inject/Provider;

    invoke-static {v0, p1}, Lq0/m;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lq0/m;

    move-result-object p1

    invoke-static {p1}, Ls0/f;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->e:Ljavax/inject/Provider;

    iget-object p1, p0, Lp0/f;->c:Ljavax/inject/Provider;

    invoke-static {}, Lz0/g;->a()Lz0/g;

    move-result-object v0

    invoke-static {}, Lz0/i;->a()Lz0/i;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lz0/W;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lz0/W;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->f:Ljavax/inject/Provider;

    iget-object p1, p0, Lp0/f;->c:Ljavax/inject/Provider;

    invoke-static {p1}, Lz0/h;->a(Ljavax/inject/Provider;)Lz0/h;

    move-result-object p1

    invoke-static {p1}, Ls0/f;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->g:Ljavax/inject/Provider;

    invoke-static {}, LB0/e;->a()LB0/e;

    move-result-object p1

    invoke-static {}, LB0/f;->a()LB0/f;

    move-result-object v0

    invoke-static {}, Lz0/j;->a()Lz0/j;

    move-result-object v1

    iget-object v2, p0, Lp0/f;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lp0/f;->g:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2, v3}, Lz0/O;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lz0/O;

    move-result-object p1

    invoke-static {p1}, Ls0/f;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->h:Ljavax/inject/Provider;

    invoke-static {}, LB0/e;->a()LB0/e;

    move-result-object p1

    invoke-static {p1}, Lx0/g;->b(Ljavax/inject/Provider;)Lx0/g;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->i:Ljavax/inject/Provider;

    iget-object v0, p0, Lp0/f;->c:Ljavax/inject/Provider;

    iget-object v1, p0, Lp0/f;->h:Ljavax/inject/Provider;

    invoke-static {}, LB0/f;->a()LB0/f;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lx0/i;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lx0/i;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->j:Ljavax/inject/Provider;

    iget-object v0, p0, Lp0/f;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lp0/f;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lp0/f;->h:Ljavax/inject/Provider;

    invoke-static {v0, v1, p1, v2, v2}, Lx0/d;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lx0/d;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->k:Ljavax/inject/Provider;

    iget-object v0, p0, Lp0/f;->c:Ljavax/inject/Provider;

    iget-object v1, p0, Lp0/f;->e:Ljavax/inject/Provider;

    iget-object v5, p0, Lp0/f;->h:Ljavax/inject/Provider;

    iget-object v3, p0, Lp0/f;->j:Ljavax/inject/Provider;

    iget-object v4, p0, Lp0/f;->b:Ljavax/inject/Provider;

    invoke-static {}, LB0/e;->a()LB0/e;

    move-result-object v6

    invoke-static {}, LB0/f;->a()LB0/f;

    move-result-object v7

    iget-object v8, p0, Lp0/f;->h:Ljavax/inject/Provider;

    move-object v2, v5

    invoke-static/range {v0 .. v8}, Ly0/t;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ly0/t;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->l:Ljavax/inject/Provider;

    iget-object p1, p0, Lp0/f;->b:Ljavax/inject/Provider;

    iget-object v0, p0, Lp0/f;->h:Ljavax/inject/Provider;

    iget-object v1, p0, Lp0/f;->j:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v0}, Ly0/x;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ly0/x;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->m:Ljavax/inject/Provider;

    invoke-static {}, LB0/e;->a()LB0/e;

    move-result-object p1

    invoke-static {}, LB0/f;->a()LB0/f;

    move-result-object v0

    iget-object v1, p0, Lp0/f;->k:Ljavax/inject/Provider;

    iget-object v2, p0, Lp0/f;->l:Ljavax/inject/Provider;

    iget-object v3, p0, Lp0/f;->m:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2, v3}, Lp0/y;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lp0/y;

    move-result-object p1

    invoke-static {p1}, Ls0/f;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lp0/f;->n:Ljavax/inject/Provider;

    return-void
.end method
