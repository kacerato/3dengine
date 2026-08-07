.class public final synthetic LE1/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/j;

.field public final b:LQ1/a;

.field public final c:LB1/C;


# direct methods
.method public constructor <init>(LE1/j;LQ1/a;LB1/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/H;->a:LE1/j;

    iput-object p2, p0, LE1/H;->b:LQ1/a;

    iput-object p3, p0, LE1/H;->c:LB1/C;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LE1/H;->a:LE1/j;

    iget-object v1, p0, LE1/H;->b:LQ1/a;

    iget-object v2, p0, LE1/H;->c:LB1/C;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {v0, v1, v2, p1, p2}, LE1/j;->s0(LQ1/a;LB1/C;LB1/A;LQ1/l;)V

    return-void
.end method
