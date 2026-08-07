.class public final synthetic Lq1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lq1/c;

.field public final synthetic b:Lr1/h;


# direct methods
.method public synthetic constructor <init>(Lq1/c;Lr1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/q;->a:Lq1/c;

    iput-object p2, p0, Lq1/q;->b:Lr1/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lq1/q;->a:Lq1/c;

    iget-object v1, p0, Lq1/q;->b:Lr1/h;

    check-cast p1, LA1/W;

    check-cast p2, LQ1/l;

    new-instance v2, Lq1/w;

    invoke-direct {v2, v0, p2}, Lq1/w;-><init>(Lq1/c;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LA1/Z;

    invoke-virtual {p1, v2, v1}, LA1/Z;->L1(LA1/Y;Lr1/h;)V

    return-void
.end method
