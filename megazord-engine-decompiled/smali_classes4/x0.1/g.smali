.class public final Lx0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Ly0/g;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/g;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(LB0/a;)Ly0/g;
    .locals 1

    invoke-static {p0}, Lx0/f;->a(LB0/a;)Ly0/g;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ls0/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly0/g;

    return-object p0
.end method

.method public static b(Ljavax/inject/Provider;)Lx0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "LB0/a;",
            ">;)",
            "Lx0/g;"
        }
    .end annotation

    new-instance v0, Lx0/g;

    invoke-direct {v0, p0}, Lx0/g;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public c()Ly0/g;
    .locals 1

    iget-object v0, p0, Lx0/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    invoke-static {v0}, Lx0/g;->a(LB0/a;)Ly0/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx0/g;->c()Ly0/g;

    move-result-object v0

    return-object v0
.end method
