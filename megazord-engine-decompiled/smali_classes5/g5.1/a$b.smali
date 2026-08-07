.class public Lg5/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg5/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg5/a;


# direct methods
.method public constructor <init>(Lg5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg5/a$b;->b:Lg5/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lg5/a$b;->b:Lg5/a;

    invoke-static {p1}, Lg5/a;->o1(Lg5/a;)Lg5/a$c;

    move-result-object p1

    invoke-interface {p1}, Lg5/a$c;->onCancel()V

    iget-object p1, p0, Lg5/a$b;->b:Lg5/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg5/a;->p1(Lg5/a;Lg5/a$c;)Lg5/a$c;

    iget-object p1, p0, Lg5/a$b;->b:Lg5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
