.class public final synthetic La1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:LX0/H;


# direct methods
.method public synthetic constructor <init>(LX0/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/n;->a:LX0/H;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, La1/q;

    check-cast p2, LQ1/l;

    sget v0, La1/p;->n:I

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, La1/j;

    iget-object v0, p0, La1/n;->a:LX0/H;

    invoke-virtual {p1, v0}, La1/j;->L1(LX0/H;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
