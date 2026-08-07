.class public LQ5/j$W$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$W$a;->b(Lr7/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LQ5/j$W$a;


# direct methods
.method public constructor <init>(LQ5/j$W$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loadingBarPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$W$a$a;->c:LQ5/j$W$a;

    iput-object p2, p0, LQ5/j$W$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LQ5/j$W$a$a;->c:LQ5/j$W$a;

    iget-object v1, v1, LQ5/j$W$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmd/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0}, LBd/a;->g(Ljava/io/File;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, LBd/a;->g(Ljava/io/File;)Z

    :cond_0
    new-instance v0, LQ5/j$W$a$a$a;

    invoke-direct {v0, p0}, LQ5/j$W$a$a$a;-><init>(LQ5/j$W$a$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
