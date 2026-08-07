.class public final Lp0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Lp0/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lx0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lx0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/s;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/w;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/y;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Lp0/y;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lp0/y;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Lp0/y;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Lp0/y;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lp0/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lx0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/s;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/w;",
            ">;)",
            "Lp0/y;"
        }
    .end annotation

    new-instance v6, Lp0/y;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lp0/y;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static c(LB0/a;LB0/a;Lx0/e;Ly0/s;Ly0/w;)Lp0/w;
    .locals 7

    new-instance v6, Lp0/w;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lp0/w;-><init>(LB0/a;LB0/a;Lx0/e;Ly0/s;Ly0/w;)V

    return-object v6
.end method


# virtual methods
.method public b()Lp0/w;
    .locals 5

    iget-object v0, p0, Lp0/y;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    iget-object v1, p0, Lp0/y;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB0/a;

    iget-object v2, p0, Lp0/y;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx0/e;

    iget-object v3, p0, Lp0/y;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/s;

    iget-object v4, p0, Lp0/y;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/w;

    invoke-static {v0, v1, v2, v3, v4}, Lp0/y;->c(LB0/a;LB0/a;Lx0/e;Ly0/s;Ly0/w;)Lp0/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp0/y;->b()Lp0/w;

    move-result-object v0

    return-object v0
.end method
