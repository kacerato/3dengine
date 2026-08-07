.class public final Lef/E$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/E$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lef/E$a;


# direct methods
.method public constructor <init>(Lef/E$a;)V
    .locals 0

    iput-object p1, p0, Lef/E$a$a;->b:Lef/E$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/E$a$a;->b:Lef/E$a;

    iget-object v0, v0, Lef/E$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/E$a$a;->b:Lef/E$a;

    iget-object v0, v0, Lef/E$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/E$a$a;->b:Lef/E$a;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/E$a$a;->b:Lef/E$a;

    iget-object v0, v0, Lef/E$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
