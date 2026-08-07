.class public Lyb/e$a$d$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$d$g$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$g$a;


# direct methods
.method public constructor <init>(Lyb/e$a$d$g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g$a$a;->a:Lyb/e$a$d$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$d$g$a$a;->a:Lyb/e$a$d$g$a;

    iget-object v0, v0, Lyb/e$a$d$g$a;->a:Lyb/e$a$d$g;

    iget-object v0, v0, Lyb/e$a$d$g;->b:Lyb/e$a$d;

    iget-object v0, v0, Lyb/e$a$d;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, p1}, Lyb/e;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    return-void
.end method
