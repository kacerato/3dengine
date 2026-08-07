.class public LQ5/c$v0$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/c$v0$a$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ5/c$v0$a$a;


# direct methods
.method public constructor <init>(LQ5/c$v0$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LQ5/c$v0$a$a$a;->b:LQ5/c$v0$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQ5/c$v0$a$a$a;->b:LQ5/c$v0$a$a;

    iget-object v0, v0, LQ5/c$v0$a$a;->a:LQ5/c$v0$a;

    iget-object v0, v0, LQ5/c$v0$a;->c:LQ5/c$v0;

    iget-object v0, v0, LQ5/c$v0;->f:LQ5/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LQ5/l;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
