.class public final Lq0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Lq0/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "LB0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/k;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Lq0/k;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lq0/k;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lq0/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;)",
            "Lq0/k;"
        }
    .end annotation

    new-instance v0, Lq0/k;

    invoke-direct {v0, p0, p1, p2}, Lq0/k;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;LB0/a;LB0/a;)Lq0/j;
    .locals 1

    new-instance v0, Lq0/j;

    invoke-direct {v0, p0, p1, p2}, Lq0/j;-><init>(Landroid/content/Context;LB0/a;LB0/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lq0/j;
    .locals 3

    iget-object v0, p0, Lq0/k;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lq0/k;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB0/a;

    iget-object v2, p0, Lq0/k;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB0/a;

    invoke-static {v0, v1, v2}, Lq0/k;->c(Landroid/content/Context;LB0/a;LB0/a;)Lq0/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq0/k;->b()Lq0/j;

    move-result-object v0

    return-object v0
.end method
