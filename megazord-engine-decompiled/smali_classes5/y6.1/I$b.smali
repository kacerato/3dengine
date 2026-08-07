.class public Ly6/I$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/I;->s1()Lw7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw7/a$a<",
        "Ly6/I$c;",
        "Ly6/I$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/I;


# direct methods
.method public constructor <init>(Ly6/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ly6/I$b;->a:Ly6/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ly6/I$b;Ly6/I$c;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ly6/I$b;->e(Ly6/I$c;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw7/b;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "entry",
            "position"
        }
    .end annotation

    check-cast p1, Ly6/I$d;

    check-cast p2, Ly6/I$c;

    invoke-virtual {p0, p1, p2, p3}, Ly6/I$b;->d(Ly6/I$d;Ly6/I$c;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lw7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ly6/I$b;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Ly6/I$d;

    move-result-object p1

    return-object p1
.end method

.method public d(Ly6/I$d;Ly6/I$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "entry",
            "position"
        }
    .end annotation

    invoke-static {p1}, Ly6/I$d;->c(Ly6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_1

    invoke-static {p1}, Ly6/I$d;->c(Ly6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2}, Ly6/I$c;->c(Ly6/I$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ly6/I$c;->c(Ly6/I$c;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p1}, Ly6/I$d;->d(Ly6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p1}, Ly6/I$d;->d(Ly6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2}, Ly6/I$c;->d(Ly6/I$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ly6/I$c;->d(Ly6/I$c;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lw7/b;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Ly6/J;

    invoke-direct {p3, p0, p2}, Ly6/J;-><init>(Ly6/I$b;Ly6/I$c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic e(Ly6/I$c;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Ly6/I$b;->a:Ly6/I;

    invoke-static {p2}, Ly6/I;->r1(Ly6/I;)Ly6/X;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ly6/I$c;->e(Ly6/I$c;)Lya/p;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ly6/I$b;->a:Ly6/I;

    invoke-static {p2}, Ly6/I;->r1(Ly6/I;)Ly6/X;

    move-result-object p2

    invoke-static {p1}, Ly6/I$c;->e(Ly6/I$c;)Lya/p;

    move-result-object p1

    invoke-virtual {p2, p1}, Ly6/X;->r(Lya/p;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ly6/I$c;->a(Ly6/I$c;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ly6/I$b;->a:Ly6/I;

    invoke-static {p2}, Ly6/I;->r1(Ly6/I;)Ly6/X;

    move-result-object p2

    invoke-static {p1}, Ly6/I$c;->a(Ly6/I$c;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    invoke-virtual {p2, p1}, Ly6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Ly6/I$b;->a:Ly6/I;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method

.method public f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Ly6/I$d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const v0, 0x7f0c0152

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ly6/I$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ly6/I$d;-><init>(Landroid/view/View;Ly6/I$a;)V

    return-object p2
.end method
