.class public Lx7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx7/a;->f(Lx7/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx7/e;

.field public final synthetic c:Lx7/a;


# direct methods
.method public constructor <init>(Lx7/a;Lx7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx7/a$b;->c:Lx7/a;

    iput-object p2, p0, Lx7/a$b;->b:Lx7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lx7/a$b;->b:Lx7/e;

    iget-object v1, v0, Lx7/e;->f:Lx7/c;

    iget-object v2, p0, Lx7/a$b;->c:Lx7/a;

    iget-object v2, v2, Lx7/a;->b:Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Lx7/c;->a(Landroid/content/Context;Lx7/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx7/a$b;->c:Lx7/a;

    iget-object v1, p0, Lx7/a$b;->b:Lx7/e;

    invoke-virtual {v0, v1}, Lx7/a;->f(Lx7/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
