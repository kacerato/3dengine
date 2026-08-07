.class public final Ly0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Ly0/w;",
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
            "Lz0/d;",
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
            "LA0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "LA0/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/x;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Ly0/x;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Ly0/x;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Ly0/x;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ly0/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lz0/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ly0/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "LA0/a;",
            ">;)",
            "Ly0/x;"
        }
    .end annotation

    new-instance v0, Ly0/x;

    invoke-direct {v0, p0, p1, p2, p3}, Ly0/x;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lz0/d;Ly0/y;LA0/a;)Ly0/w;
    .locals 1

    new-instance v0, Ly0/w;

    invoke-direct {v0, p0, p1, p2, p3}, Ly0/w;-><init>(Ljava/util/concurrent/Executor;Lz0/d;Ly0/y;LA0/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ly0/w;
    .locals 4

    iget-object v0, p0, Ly0/x;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ly0/x;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/d;

    iget-object v2, p0, Ly0/x;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/y;

    iget-object v3, p0, Ly0/x;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA0/a;

    invoke-static {v0, v1, v2, v3}, Ly0/x;->c(Ljava/util/concurrent/Executor;Lz0/d;Ly0/y;LA0/a;)Ly0/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly0/x;->b()Ly0/w;

    move-result-object v0

    return-object v0
.end method
