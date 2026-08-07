.class public final Ldf/w$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/w$g;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldf/w$g;->b:LCi/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public i(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Ldf/w$g;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/w$g;->d:Z

    iget-object p1, p0, Ldf/w$g;->b:LCi/c;

    iget-object p2, p0, Ldf/w$g;->c:Ljava/lang/Object;

    invoke-interface {p1, p2}, LCi/c;->g(Ljava/lang/Object;)V

    invoke-interface {p1}, LCi/c;->a()V

    :cond_0
    return-void
.end method
