.class public final Ls0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lr0/e<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final synthetic b:Z


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/q;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "TT;>;)",
            "Ljavax/inject/Provider<",
            "Lr0/e<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ls0/q;

    invoke-static {p0}, Ls0/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    invoke-direct {v0, p0}, Ls0/q;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public b()Lr0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ls0/q;->a:Ljavax/inject/Provider;

    invoke-static {v0}, Ls0/f;->a(Ljavax/inject/Provider;)Lr0/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ls0/q;->b()Lr0/e;

    move-result-object v0

    return-object v0
.end method
