.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Lx0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lq0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lz0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "LA0/a;",
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lq0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "LA0/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/d;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Lx0/d;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lx0/d;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Lx0/d;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Lx0/d;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lx0/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lq0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "LA0/a;",
            ">;)",
            "Lx0/d;"
        }
    .end annotation

    new-instance v6, Lx0/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lx0/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lq0/e;Ly0/y;Lz0/d;LA0/a;)Lx0/c;
    .locals 7

    new-instance v6, Lx0/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lx0/c;-><init>(Ljava/util/concurrent/Executor;Lq0/e;Ly0/y;Lz0/d;LA0/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lx0/c;
    .locals 5

    iget-object v0, p0, Lx0/d;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lx0/d;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/e;

    iget-object v2, p0, Lx0/d;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/y;

    iget-object v3, p0, Lx0/d;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/d;

    iget-object v4, p0, Lx0/d;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LA0/a;

    invoke-static {v0, v1, v2, v3, v4}, Lx0/d;->c(Ljava/util/concurrent/Executor;Lq0/e;Ly0/y;Lz0/d;LA0/a;)Lx0/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx0/d;->b()Lx0/c;

    move-result-object v0

    return-object v0
.end method
