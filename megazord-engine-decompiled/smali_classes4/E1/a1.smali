.class public final synthetic LE1/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/j;


# direct methods
.method public constructor <init>(LE1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/a1;->a:LE1/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LE1/a1;->a:LE1/j;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {v0, p1, p2}, LE1/j;->t0(LB1/A;LQ1/l;)V

    return-void
.end method
