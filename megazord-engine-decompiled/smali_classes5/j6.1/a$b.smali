.class public Lj6/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/a;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj6/a;


# direct methods
.method public constructor <init>(Lj6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj6/a$b;->b:Lj6/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lf8/c;->z()LP0/b;

    move-result-object p1

    invoke-virtual {p1}, LP0/b;->C()LQ1/k;

    invoke-virtual {p1}, LP0/b;->g0()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2329

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lj6/a$b;->b:Lj6/a;

    invoke-virtual {p1}, LK7/c;->t()V

    return-void
.end method
