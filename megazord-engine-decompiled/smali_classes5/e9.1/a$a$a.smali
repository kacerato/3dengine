.class public Le9/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le9/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Le9/a$a;


# direct methods
.method public constructor <init>(Le9/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le9/a$a$a;->c:Le9/a$a;

    iput-object p2, p0, Le9/a$a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le9/a$a$a;->c:Le9/a$a;

    iget-object v0, v0, Le9/a$a;->d:Le9/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le9/a;->a(Le9/a;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Le9/a$a$a;->c:Le9/a$a;

    iget-object v0, v0, Le9/a$a;->b:Le9/a$b;

    iget-object v1, p0, Le9/a$a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le9/a$b;->onEngine(Ljava/lang/Object;)V

    return-void
.end method
