.class public LM8/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/b$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:LM8/b$j;


# direct methods
.method public constructor <init>(LM8/b$j;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$outApk"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM8/b$j$a;->c:LM8/b$j;

    iput-object p2, p0, LM8/b$j$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Finish"

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b$j$a;->c:LM8/b$j;

    iget-object v0, v0, LM8/b$j;->b:LM8/b;

    invoke-static {v0}, LM8/b;->v(LM8/b;)LM8/b$u;

    move-result-object v0

    iget-object v1, p0, LM8/b$j$a;->b:Ljava/io/File;

    invoke-interface {v0, v1}, LM8/b$u;->b(Ljava/io/File;)V

    return-void
.end method
