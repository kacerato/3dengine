.class public LO6/b$c$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$c$a$a$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LO6/b$c$a$a$a$a;


# direct methods
.method public constructor <init>(LO6/b$c$a$a$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$5",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO6/b$c$a$a$a$a$a;->c:LO6/b$c$a$a$a$a;

    iput-object p2, p0, LO6/b$c$a$a$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LO6/b$c$a$a$a$a$a;->c:LO6/b$c$a$a$a$a;

    iget-object v1, v1, LO6/b$c$a$a$a$a;->a:LO6/b$c$a$a$a;

    iget-object v1, v1, LO6/b$c$a$a$a;->a:LO6/b$c$a$a;

    iget-object v1, v1, LO6/b$c$a$a;->a:LO6/b$c$a;

    iget-object v1, v1, LO6/b$c$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LBd/a;->g(Ljava/io/File;)Z

    new-instance v0, LO6/b$c$a$a$a$a$a$a;

    invoke-direct {v0, p0}, LO6/b$c$a$a$a$a$a$a;-><init>(LO6/b$c$a$a$a$a$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
