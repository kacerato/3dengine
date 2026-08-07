.class public LT5/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/a;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT5/a;


# direct methods
.method public constructor <init>(LT5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT5/a$f;->a:LT5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 3

    const-string v0, "Failed to load apk first world."

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LT5/a$f;->a:LT5/a;

    invoke-static {v0}, LT5/a;->p1(LT5/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lu8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lu8/b;->h:Ljava/lang/String;

    new-instance v1, LT5/a$f$b;

    invoke-direct {v1, p0}, LT5/a$f$b;-><init>(LT5/a$f;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->H(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSuccess()V
    .locals 1

    new-instance v0, LT5/a$f$a;

    invoke-direct {v0, p0}, LT5/a$f$a;-><init>(LT5/a$f;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
