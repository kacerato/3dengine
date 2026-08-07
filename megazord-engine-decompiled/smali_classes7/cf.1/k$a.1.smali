.class public final Lcf/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:LTe/f;

.field public final c:LTe/J;

.field public d:LVe/c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(LTe/f;LTe/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/k$a;->b:LTe/f;

    iput-object p2, p0, Lcf/k$a;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcf/k$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcf/k$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcf/k$a;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf/k$a;->e:Z

    iget-object v0, p0, Lcf/k$a;->c:LTe/J;

    invoke-virtual {v0, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/k$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcf/k$a;->d:LVe/c;

    iget-object p1, p0, Lcf/k$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcf/k$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcf/k$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcf/k$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/k$a;->d:LVe/c;

    return-void
.end method
