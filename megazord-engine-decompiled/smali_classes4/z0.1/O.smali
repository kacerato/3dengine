.class public final Lz0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Lz0/N;",
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
            "Lz0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lz0/V;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
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
            "Lz0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/V;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/O;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Lz0/O;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lz0/O;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Lz0/O;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Lz0/O;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lz0/O;
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
            "Lz0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/V;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lz0/O;"
        }
    .end annotation

    new-instance v6, Lz0/O;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lz0/O;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static c(LB0/a;LB0/a;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;)Lz0/N;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB0/a;",
            "LB0/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lz0/N;"
        }
    .end annotation

    new-instance v6, Lz0/N;

    move-object v3, p2

    check-cast v3, Lz0/e;

    move-object v4, p3

    check-cast v4, Lz0/V;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lz0/N;-><init>(LB0/a;LB0/a;Lz0/e;Lz0/V;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public b()Lz0/N;
    .locals 5

    iget-object v0, p0, Lz0/O;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    iget-object v1, p0, Lz0/O;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB0/a;

    iget-object v2, p0, Lz0/O;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lz0/O;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lz0/O;->e:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lz0/O;->c(LB0/a;LB0/a;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;)Lz0/N;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz0/O;->b()Lz0/N;

    move-result-object v0

    return-object v0
.end method
