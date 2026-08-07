.class public Ln6/b$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ln6/b$e;


# direct methods
.method public constructor <init>(Ln6/b$e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ln6/b$e$a;->c:Ln6/b$e;

    iput-object p2, p0, Ln6/b$e$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln6/b$e$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln6/b$e$a;->c:Ln6/b$e;

    iget-object v0, v0, Ln6/b$e;->c:Ln6/b$l;

    const-string v1, "Invalid zip file"

    invoke-interface {v0, v1}, Ln6/b$l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln6/b$e$a;->c:Ln6/b$e;

    iget-object v1, v1, Ln6/b$e;->c:Ln6/b$l;

    invoke-interface {v1, v0}, Ln6/b$l;->onSuccess(Ljava/util/List;)V

    :goto_0
    return-void
.end method
