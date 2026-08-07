.class public LU5/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU5/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LU5/a$d;


# direct methods
.method public constructor <init>(LU5/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LU5/a$d$a;->a:LU5/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object p1, Lo8/b;->i:Ls8/a;

    iget-object v0, p1, Ls8/a;->a:Ls8/b;

    invoke-virtual {v0}, Ls8/b;->b()Ls8/b$a;

    move-result-object v0

    sget-object v1, Ls8/b$a;->Empty:Ls8/b$a;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, LU5/a$d$a;->a:LU5/a$d;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU5/a$d$a;->a:LU5/a$d;

    iget-object v0, v0, LU5/a$d;->b:LU5/a;

    iget-object p1, p1, Ls8/a;->a:Ls8/b;

    iget-object p1, p1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, LU5/a;->z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method
