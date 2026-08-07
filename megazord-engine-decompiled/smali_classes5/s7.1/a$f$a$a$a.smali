.class public Ls7/a$f$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$f$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls7/b;

.field public final synthetic b:Ls7/a$f$a$a;


# direct methods
.method public constructor <init>(Ls7/a$f$a$a;Ls7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$f$a$a$a;->b:Ls7/a$f$a$a;

    iput-object p2, p0, Ls7/a$f$a$a$a;->a:Ls7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LB4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iget-object p1, p0, Ls7/a$f$a$a$a;->b:Ls7/a$f$a$a;

    iget-object p1, p1, Ls7/a$f$a$a;->d:Ls7/a$f$a;

    iget-object p1, p1, Ls7/a$f$a;->a:Ls7/a$f;

    iget-object p1, p1, Ls7/a$f;->b:Ls7/a;

    iget-object v0, p0, Ls7/a$f$a$a$a;->a:Ls7/b;

    invoke-virtual {p1, v0}, Ls7/a;->w1(Ls7/b;)V

    return-void
.end method

.method public b(LB4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    invoke-interface {p1}, LB4/d;->a()V

    iget-object v0, p0, Ls7/a$f$a$a$a;->b:Ls7/a$f$a$a;

    iget-object v0, v0, Ls7/a$f$a$a;->d:Ls7/a$f$a;

    iget-object v0, v0, Ls7/a$f$a;->a:Ls7/a$f;

    iget-object v0, v0, Ls7/a$f;->b:Ls7/a;

    invoke-static {v0}, Ls7/a;->u1(Ls7/a;)Lw7/a;

    move-result-object v0

    iget-object v1, p0, Ls7/a$f$a$a$a;->a:Ls7/b;

    invoke-virtual {v0, v1}, Lw7/a;->r(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LB4/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public c(LB4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    new-instance v0, Ls7/a$f$a$a$a$a;

    invoke-direct {v0, p0, p1}, Ls7/a$f$a$a$a$a;-><init>(Ls7/a$f$a$a$a;LB4/d;)V

    invoke-interface {p1, v0}, LB4/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
