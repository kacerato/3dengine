.class public final Lgf/p0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lnf/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$k;->b:LTe/B;

    return-void
.end method


# virtual methods
.method public a()Lnf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$k;->b:LTe/B;

    invoke-virtual {v0}, LTe/B;->F4()Lnf/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lgf/p0$k;->a()Lnf/a;

    move-result-object v0

    return-object v0
.end method
