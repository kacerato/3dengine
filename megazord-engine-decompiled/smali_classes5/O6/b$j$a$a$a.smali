.class public LO6/b$j$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$j$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO6/b$j$a$a;


# direct methods
.method public constructor <init>(LO6/b$j$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    iget-object v0, v0, LO6/b$j$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    new-instance v0, LP6/c;

    iget-object v1, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    iget-object v1, v1, LO6/b$j$a$a;->c:LO6/b$j$a;

    iget-object v1, v1, LO6/b$j$a;->a:LO6/b$j;

    iget-object v1, v1, LO6/b$j;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, LP6/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    iget-object v1, v1, LO6/b$j$a$a;->c:LO6/b$j$a;

    iget-object v1, v1, LO6/b$j$a;->a:LO6/b$j;

    iget-object v1, v1, LO6/b$j;->e:LO6/b;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, LO6/b;->q1(LO6/b;LP6/c;Z)V

    iget-object v0, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    iget-object v0, v0, LO6/b$j$a$a;->c:LO6/b$j$a;

    iget-object v0, v0, LO6/b$j$a;->a:LO6/b$j;

    iget-object v0, v0, LO6/b$j;->e:LO6/b;

    invoke-static {v0}, LO6/b;->r1(LO6/b;)Lz7/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO6/b$j$a$a$a;->b:LO6/b$j$a$a;

    iget-object v0, v0, LO6/b$j$a$a;->c:LO6/b$j$a;

    iget-object v0, v0, LO6/b$j$a;->a:LO6/b$j;

    iget-object v0, v0, LO6/b$j;->e:LO6/b;

    invoke-static {v0}, LO6/b;->r1(LO6/b;)Lz7/d;

    move-result-object v0

    invoke-virtual {v0}, Lz7/d;->K()V

    :cond_0
    const-string v0, "Project duplicated"

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    return-void
.end method
