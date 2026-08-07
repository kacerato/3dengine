.class public LU5/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LU5/a$c;->refresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LU5/a$c;


# direct methods
.method public constructor <init>(LU5/a$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LU5/a$c$a;->c:LU5/a$c;

    iput p2, p0, LU5/a$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LU5/a$c$a;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, LU5/a$c$a;->c:LU5/a$c;

    iget-object v0, v0, LU5/a$c;->a:LU5/a;

    sget-object v1, Lo8/b;->i:Ls8/a;

    iget-object v1, v1, Ls8/a;->a:Ls8/b;

    iget-object v1, v1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, LU5/a;->z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU5/a$c$a;->c:LU5/a$c;

    iget-object v0, v0, LU5/a$c;->a:LU5/a;

    invoke-static {v0}, LU5/a;->p1(LU5/a;)LV5/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LU5/a$c$a;->c:LU5/a$c;

    iget-object v0, v0, LU5/a$c;->a:LU5/a;

    invoke-static {v0}, LU5/a;->p1(LU5/a;)LV5/a;

    move-result-object v0

    iget v1, p0, LU5/a$c$a;->b:I

    invoke-virtual {v0, v1}, LV5/a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
