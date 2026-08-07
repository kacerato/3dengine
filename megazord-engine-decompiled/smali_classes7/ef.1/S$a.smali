.class public final Lef/S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/S;
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
        "LTe/v<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:LVe/c;


# direct methods
.method public constructor <init>(LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/S$a;->b:LTe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lef/S$a;->b:LTe/v;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/v;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p1, p0, Lef/S$a;->b:LTe/v;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/S$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/S$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/S$a;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lef/S$a;->c:LVe/c;

    iget-object p1, p0, Lef/S$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/S$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
