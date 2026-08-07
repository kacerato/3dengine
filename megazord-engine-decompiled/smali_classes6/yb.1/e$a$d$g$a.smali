.class public Lyb/e$a$d$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$g;


# direct methods
.method public constructor <init>(Lyb/e$a$d$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g$a;->a:Lyb/e$a$d$g;

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
            "view"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$d$g$a;->a:Lyb/e$a$d$g;

    iget-object v0, v0, Lyb/e$a$d$g;->b:Lyb/e$a$d;

    iget-object v0, v0, Lyb/e$a$d;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->d:Landroid/content/Context;

    new-instance v1, Lyb/e$a$d$g$a$a;

    invoke-direct {v1, p0}, Lyb/e$a$d$g$a$a;-><init>(Lyb/e$a$d$g$a;)V

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->c(Landroid/content/Context;Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V

    return-void
.end method
