.class public final Lp0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll0/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp0/r;

.field public final b:Ljava/lang/String;

.field public final c:Ll0/c;

.field public final d:Ll0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/g<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Lp0/v;


# direct methods
.method public constructor <init>(Lp0/r;Ljava/lang/String;Ll0/c;Ll0/g;Lp0/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp0/r;",
            "Ljava/lang/String;",
            "Ll0/c;",
            "Ll0/g<",
            "TT;[B>;",
            "Lp0/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/u;->a:Lp0/r;

    iput-object p2, p0, Lp0/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lp0/u;->c:Ll0/c;

    iput-object p4, p0, Lp0/u;->d:Ll0/g;

    iput-object p5, p0, Lp0/u;->e:Lp0/v;

    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lp0/u;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ll0/d;Ll0/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/d<",
            "TT;>;",
            "Ll0/j;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lp0/u;->e:Lp0/v;

    invoke-static {}, Lp0/q;->a()Lp0/q$a;

    move-result-object v1

    iget-object v2, p0, Lp0/u;->a:Lp0/r;

    invoke-virtual {v1, v2}, Lp0/q$a;->f(Lp0/r;)Lp0/q$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lp0/q$a;->c(Ll0/d;)Lp0/q$a;

    move-result-object p1

    iget-object v1, p0, Lp0/u;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lp0/q$a;->g(Ljava/lang/String;)Lp0/q$a;

    move-result-object p1

    iget-object v1, p0, Lp0/u;->d:Ll0/g;

    invoke-virtual {p1, v1}, Lp0/q$a;->e(Ll0/g;)Lp0/q$a;

    move-result-object p1

    iget-object v1, p0, Lp0/u;->c:Ll0/c;

    invoke-virtual {p1, v1}, Lp0/q$a;->b(Ll0/c;)Lp0/q$a;

    move-result-object p1

    invoke-virtual {p1}, Lp0/q$a;->a()Lp0/q;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lp0/v;->a(Lp0/q;Ll0/j;)V

    return-void
.end method

.method public b(Ll0/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/d<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lp0/t;

    invoke-direct {v0}, Lp0/t;-><init>()V

    invoke-virtual {p0, p1, v0}, Lp0/u;->a(Ll0/d;Ll0/j;)V

    return-void
.end method

.method public d()Lp0/r;
    .locals 1

    iget-object v0, p0, Lp0/u;->a:Lp0/r;

    return-object v0
.end method
