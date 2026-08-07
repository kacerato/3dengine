.class public Lb6/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bozapro/circularsliderrange/CircularSliderRange$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/b;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public final synthetic d:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, -0x3191d80b

    iput p1, p0, Lb6/b$b;->a:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lb6/b$b;->c:F

    return-void
.end method


# virtual methods
.method public a(Lw/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lw/b;->THUMB_RELEASED:Lw/b;

    const v1, -0x3191d80b

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p1}, Lb6/b;->w1(Lb6/b;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lb6/b$b;->c:F

    iput v1, p0, Lb6/b$b;->a:F

    goto :goto_0

    :cond_0
    sget-object v0, Lw/b;->THUMB_PRESSED:Lw/b;

    if-ne p1, v0, :cond_1

    iput v2, p0, Lb6/b$b;->c:F

    iput v1, p0, Lb6/b$b;->a:F

    iget-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p1}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object v0

    invoke-interface {v0}, Lb6/b$g;->get()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lb6/b;->p1(Lb6/b;F)F

    :cond_1
    :goto_0
    return-void
.end method

.method public b(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    double-to-float p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotE:F

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p2}, Lb6/b;->t1(Lb6/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget p2, p0, Lb6/b$b;->c:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iput p1, p0, Lb6/b$b;->c:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {v0, p2, p1}, Lb6/b;->x1(Lb6/b;FF)F

    move-result p2

    iput p2, p0, Lb6/b$b;->c:F

    :goto_0
    iget p2, p0, Lb6/b$b;->a:F

    const v0, -0x3191d80b

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p2}, Lb6/b;->o1(Lb6/b;)F

    move-result p2

    iput p2, p0, Lb6/b$b;->a:F

    :cond_1
    iget p2, p0, Lb6/b$b;->c:F

    sub-float p2, p1, p2

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {v0}, Lb6/b;->u1(Lb6/b;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lb6/b$b;->b:F

    add-float/2addr v0, p2

    iput v0, p0, Lb6/b$b;->b:F

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    iget v1, p0, Lb6/b$b;->a:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    invoke-static {p2, v0}, Lb6/b;->p1(Lb6/b;F)F

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p2}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object p2

    iget v0, p0, Lb6/b$b;->a:F

    iget v1, p0, Lb6/b$b;->b:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p2, v0}, Lb6/b$g;->b(I)V

    iput p1, p0, Lb6/b$b;->c:F

    iget-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p1}, Lb6/b;->w1(Lb6/b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lb6/b$b;->b:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Lw/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lw/b;->THUMB_RELEASED:Lw/b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p1}, Lb6/b;->w1(Lb6/b;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lw/b;->THUMB_PRESSED:Lw/b;

    :goto_0
    return-void
.end method

.method public d(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {v0}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object v1

    invoke-interface {v1}, Lb6/b$g;->get()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lb6/b;->p1(Lb6/b;F)F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    double-to-float p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p2}, Lb6/b;->t1(Lb6/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p2}, Lb6/b;->u1(Lb6/b;)I

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x41c80000    # 25.0f

    mul-float/2addr p1, p2

    mul-float/2addr p1, p1

    iget-object p2, p0, Lb6/b$b;->d:Lb6/b;

    float-to-int p1, p1

    invoke-static {p2, p1}, Lb6/b;->v1(Lb6/b;I)I

    iget-object p1, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {p1}, Lb6/b;->w1(Lb6/b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb6/b$b;->d:Lb6/b;

    invoke-static {v0}, Lb6/b;->u1(Lb6/b;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lb6/b$b;->c:F

    const p1, -0x3191d80b

    iput p1, p0, Lb6/b$b;->a:F

    return-void
.end method
