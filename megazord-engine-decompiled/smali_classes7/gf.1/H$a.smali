.class public final Lgf/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/H$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LYe/h;

.field public final c:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public final synthetic e:Lgf/H;


# direct methods
.method public constructor <init>(Lgf/H;LYe/h;LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYe/h;",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/H$a;->e:Lgf/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/H$a;->b:LYe/h;

    iput-object p3, p0, Lgf/H$a;->c:LTe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/H$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/H$a;->d:Z

    iget-object v0, p0, Lgf/H$a;->e:Lgf/H;

    iget-object v0, v0, Lgf/H;->b:LTe/G;

    new-instance v1, Lgf/H$a$a;

    invoke-direct {v1, p0}, Lgf/H$a$a;-><init>(Lgf/H$a;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/H$a;->b:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->b(LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lgf/H$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/H$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/H$a;->d:Z

    iget-object v0, p0, Lgf/H$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
