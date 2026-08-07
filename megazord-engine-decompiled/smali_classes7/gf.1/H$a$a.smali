.class public final Lgf/H$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/H$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lgf/H$a;


# direct methods
.method public constructor <init>(Lgf/H$a;)V
    .locals 0

    iput-object p1, p0, Lgf/H$a$a;->b:Lgf/H$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/H$a$a;->b:Lgf/H$a;

    iget-object v0, v0, Lgf/H$a;->c:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/H$a$a;->b:Lgf/H$a;

    iget-object v0, v0, Lgf/H$a;->b:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->b(LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/H$a$a;->b:Lgf/H$a;

    iget-object v0, v0, Lgf/H$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/H$a$a;->b:Lgf/H$a;

    iget-object v0, v0, Lgf/H$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
