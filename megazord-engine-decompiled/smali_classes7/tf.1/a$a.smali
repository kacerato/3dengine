.class public final Ltf/a$a;
.super Lbf/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltf/a;
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
        "Lbf/l<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = 0x4e215678802bc8d0L


# instance fields
.field public final k:Ltf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;Ltf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "Ltf/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/l;-><init>(LTe/I;)V

    iput-object p2, p0, Ltf/a$a;->k:Ltf/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lbf/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/l;->c:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lbf/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf/a$a;->k:Ltf/a;

    invoke-virtual {v0, p0}, Ltf/a;->u8(Ltf/a$a;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lbf/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbf/l;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
