.class public final Lef/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/v<",
        "Ljava/lang/Object;",
        ">;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public d:LVe/c;


# direct methods
.method public constructor <init>(LTe/N;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/h$a;->b:LTe/N;

    iput-object p2, p0, Lef/h$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/h$a;->d:LVe/c;

    iget-object v0, p0, Lef/h$a;->b:LTe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/h$a;->d:LVe/c;

    iget-object v0, p0, Lef/h$a;->b:LTe/N;

    iget-object v1, p0, Lef/h$a;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, LZe/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/h$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/h$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/h$a;->d:LVe/c;

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/h$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lef/h$a;->d:LVe/c;

    iget-object p1, p0, Lef/h$a;->b:LTe/N;

    invoke-interface {p1, p0}, LTe/N;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/h$a;->d:LVe/c;

    iget-object v0, p0, Lef/h$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
