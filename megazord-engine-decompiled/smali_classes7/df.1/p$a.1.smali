.class public final Ldf/p$a;
.super Luf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Luf/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:Ldf/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/p$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/p$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Luf/b;-><init>()V

    iput-object p1, p0, Ldf/p$a;->c:Ldf/p$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/p$a;->c:Ldf/p$b;

    invoke-virtual {v0}, Ldf/p$b;->a()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object p1, p0, Ldf/p$a;->c:Ldf/p$b;

    invoke-virtual {p1}, Ldf/p$b;->u()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/p$a;->c:Ldf/p$b;

    invoke-virtual {v0, p1}, Ldf/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
