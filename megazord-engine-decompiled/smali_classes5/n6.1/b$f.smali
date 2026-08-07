.class public Ln6/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/b;->W(Ln6/b$h;Ln6/b$l;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln6/b$h;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ln6/b$l;


# direct methods
.method public constructor <init>(Ln6/b$h;Ljava/lang/Runnable;Ln6/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$info",
            "val$fallback",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ln6/b$f;->b:Ln6/b$h;

    iput-object p2, p0, Ln6/b$f;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Ln6/b$f;->d:Ln6/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ln6/b$f;->b:Ln6/b$h;

    iget-object v1, v0, Ln6/b$h;->a:Ljava/lang/String;

    iget-object v2, v0, Ln6/b$h;->b:Ljava/lang/String;

    iget-object v0, v0, Ln6/b$h;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ln6/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ln6/b$j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Ln6/b$f;->b:Ln6/b$h;

    iget-boolean v2, v1, Ln6/b$h;->e:Z

    if-nez v2, :cond_0

    iget-object v0, v1, Ln6/b$h;->a:Ljava/lang/String;

    iget-object v1, v1, Ln6/b$h;->b:Ljava/lang/String;

    const-string v2, "main"

    invoke-static {v0, v1, v2}, Ln6/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ln6/b$j;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Ln6/b$j;->a:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ln6/b$f;->b:Ln6/b$h;

    iget-object v1, v1, Ln6/b$h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ln6/b;->k(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ln6/b$f$b;

    invoke-direct {v1, p0, v0}, Ln6/b$f$b;-><init>(Ln6/b$f;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Ln6/b$f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ln6/b$f$a;

    invoke-direct {v0, p0}, Ln6/b$f$a;-><init>(Ln6/b$f;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
