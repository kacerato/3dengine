.class public final LK2/q;
.super LK2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:LK2/s;


# direct methods
.method public constructor <init>(LK2/s;)V
    .locals 0

    iput-object p1, p0, LK2/q;->c:LK2/s;

    invoke-direct {p0}, LK2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LK2/q;->c:LK2/s;

    iget-object v0, v0, LK2/s;->c:LK2/t;

    invoke-static {v0}, LK2/t;->o(LK2/t;)V

    iget-object v0, p0, LK2/q;->c:LK2/s;

    iget-object v0, v0, LK2/s;->c:LK2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LK2/t;->k(LK2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, LK2/q;->c:LK2/s;

    iget-object v0, v0, LK2/s;->c:LK2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LK2/t;->j(LK2/t;Z)V

    return-void
.end method
