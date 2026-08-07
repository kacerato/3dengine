.class public final Lcf/M$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/M$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcf/M$a;


# direct methods
.method public constructor <init>(Lcf/M$a;)V
    .locals 0

    iput-object p1, p0, Lcf/M$a$a;->b:Lcf/M$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcf/M$a$a;->b:Lcf/M$a;

    iget-object v0, v0, Lcf/M$a;->c:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/M$a$a;->b:Lcf/M$a;

    iget-object v0, v0, Lcf/M$a;->d:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/M$a$a;->b:Lcf/M$a;

    iget-object v0, v0, Lcf/M$a;->c:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->b(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcf/M$a$a;->b:Lcf/M$a;

    iget-object v0, v0, Lcf/M$a;->c:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/M$a$a;->b:Lcf/M$a;

    iget-object v0, v0, Lcf/M$a;->d:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
