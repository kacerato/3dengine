.class public final Lgf/p0$a;
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
    name = "a"
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

.field public final c:I


# direct methods
.method public constructor <init>(LTe/B;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$a;->b:LTe/B;

    iput p2, p0, Lgf/p0$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lnf/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$a;->b:LTe/B;

    iget v1, p0, Lgf/p0$a;->c:I

    invoke-virtual {v0, v1}, LTe/B;->G4(I)Lnf/a;

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

    invoke-virtual {p0}, Lgf/p0$a;->a()Lnf/a;

    move-result-object v0

    return-object v0
.end method
