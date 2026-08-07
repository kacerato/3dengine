.class public Lo4/a$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/a$f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lo4/a$f$a;


# direct methods
.method public constructor <init>(Lo4/a$f$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$cleared"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo4/a$f$a$a;->c:Lo4/a$f$a;

    iput-boolean p2, p0, Lo4/a$f$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo4/a$f$a$a;->c:Lo4/a$f$a;

    iget-object v0, v0, Lo4/a$f$a;->b:Lr7/g;

    invoke-virtual {v0}, Lr7/g;->p1()V

    iget-boolean v0, p0, Lo4/a$f$a$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo4/a$f$a$a;->c:Lo4/a$f$a;

    iget-object v0, v0, Lo4/a$f$a;->c:Lo4/a$f;

    iget-object v0, v0, Lo4/a$f;->a:Lo4/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->A()V

    const-string v0, "Cache"

    const-string v1, "Failed to clear the cache folder."

    invoke-static {v0, v1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
