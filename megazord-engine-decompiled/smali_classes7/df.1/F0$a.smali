.class public final Ldf/F0$a;
.super Llf/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/F0;
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
        "Llf/t<",
        "TT;",
        "LTe/A<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final i:J = -0x33ea157c2cf0a1deL


# direct methods
.method public constructor <init>(LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/t;-><init>(LCi/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, LTe/A;->a()LTe/A;

    move-result-object v0

    invoke-virtual {p0, v0}, Llf/t;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LTe/A;

    invoke-virtual {p0, p1}, Ldf/F0$a;->f(LTe/A;)V

    return-void
.end method

.method public f(LTe/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/A<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, LTe/A;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LTe/A;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Llf/t;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llf/t;->e:J

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-static {p1}, LTe/A;->c(Ljava/lang/Object;)LTe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, LTe/A;->b(Ljava/lang/Throwable;)LTe/A;

    move-result-object p1

    invoke-virtual {p0, p1}, Llf/t;->c(Ljava/lang/Object;)V

    return-void
.end method
