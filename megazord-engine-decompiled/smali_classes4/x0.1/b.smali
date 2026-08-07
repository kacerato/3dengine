.class public final synthetic Lx0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Lx0/c;

.field public final synthetic b:Lp0/r;

.field public final synthetic c:Lp0/j;


# direct methods
.method public synthetic constructor <init>(Lx0/c;Lp0/r;Lp0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/b;->a:Lx0/c;

    iput-object p2, p0, Lx0/b;->b:Lp0/r;

    iput-object p3, p0, Lx0/b;->c:Lp0/j;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx0/b;->a:Lx0/c;

    iget-object v1, p0, Lx0/b;->b:Lp0/r;

    iget-object v2, p0, Lx0/b;->c:Lp0/j;

    invoke-static {v0, v1, v2}, Lx0/c;->b(Lx0/c;Lp0/r;Lp0/j;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
