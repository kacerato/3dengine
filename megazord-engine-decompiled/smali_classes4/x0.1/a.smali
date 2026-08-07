.class public final synthetic Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lx0/c;

.field public final synthetic c:Lp0/r;

.field public final synthetic d:Ll0/j;

.field public final synthetic e:Lp0/j;


# direct methods
.method public synthetic constructor <init>(Lx0/c;Lp0/r;Ll0/j;Lp0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/a;->b:Lx0/c;

    iput-object p2, p0, Lx0/a;->c:Lp0/r;

    iput-object p3, p0, Lx0/a;->d:Ll0/j;

    iput-object p4, p0, Lx0/a;->e:Lp0/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lx0/a;->b:Lx0/c;

    iget-object v1, p0, Lx0/a;->c:Lp0/r;

    iget-object v2, p0, Lx0/a;->d:Ll0/j;

    iget-object v3, p0, Lx0/a;->e:Lp0/j;

    invoke-static {v0, v1, v2, v3}, Lx0/c;->c(Lx0/c;Lp0/r;Ll0/j;Lp0/j;)V

    return-void
.end method
