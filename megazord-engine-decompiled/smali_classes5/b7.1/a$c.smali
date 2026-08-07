.class public Lb7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb7/a;


# direct methods
.method public constructor <init>(Lb7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb7/a$c;->a:Lb7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChange(Landroid/view/View;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "line",
            "selectionStart",
            "selectionEnd",
            "x",
            "y"
        }
    .end annotation

    iget-object p1, p0, Lb7/a$c;->a:Lb7/a;

    invoke-static {p1}, Lb7/a;->q1(Lb7/a;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lb7/a$c;->a:Lb7/a;

    invoke-static {p2}, Lb7/a;->p1(Lb7/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb7/a$c;->a:Lb7/a;

    invoke-static {p1}, Lb7/a;->p1(Lb7/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    iget-object p2, p0, Lb7/a$c;->a:Lb7/a;

    invoke-static {p2}, Lb7/a;->q1(Lb7/a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
