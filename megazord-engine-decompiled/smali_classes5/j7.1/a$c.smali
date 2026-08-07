.class public Lj7/a$c;
.super LJAVARuntime/AOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj7/a;


# direct methods
.method public constructor <init>(Lj7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj7/a$c;->b:Lj7/a;

    invoke-direct {p0}, LJAVARuntime/AOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEvent(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-static {p1}, Lj7/a;->o1(Z)Z

    iget-object p1, p0, Lj7/a$c;->b:Lj7/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
