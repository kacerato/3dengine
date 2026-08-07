.class public final Lgf/p1$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/p1;
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
        "Ljava/util/ArrayDeque<",
        "TT;>;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = 0x6479cc5265c56d72L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:LVe/c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(LTe/I;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lgf/p1$a;->b:LTe/I;

    iput p2, p0, Lgf/p1$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/p1$a;->b:LTe/I;

    :goto_0
    iget-boolean v1, p0, Lgf/p1$a;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lgf/p1$a;->e:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, LTe/I;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0, v1}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/p1$a;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/p1$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/p1$a;->e:Z

    iget-object v0, p0, Lgf/p1$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/p1$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/p1$a;->d:LVe/c;

    iget-object p1, p0, Lgf/p1$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lgf/p1$a;->c:I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/p1$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
