.class public final Lcf/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:LTe/f;

.field public c:LVe/c;


# direct methods
.method public constructor <init>(LTe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/j$a;->b:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/j$a;->c:LVe/c;

    iget-object v0, p0, Lcf/j$a;->b:LTe/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcf/j$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcf/j$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcf/j$a;->b:LTe/f;

    iget-object v0, p0, Lcf/j$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/j$a;->c:LVe/c;

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/j$a;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcf/j$a;->c:LVe/c;

    iget-object p1, p0, Lcf/j$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/j$a;->c:LVe/c;

    iget-object v0, p0, Lcf/j$a;->b:LTe/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcf/j$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
