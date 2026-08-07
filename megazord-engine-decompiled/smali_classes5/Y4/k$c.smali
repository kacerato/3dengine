.class public LY4/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY4/k;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw7/a$a<",
        "Lw8/c;",
        "LY4/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LY4/k;


# direct methods
.method public constructor <init>(LY4/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY4/k$c;->a:LY4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(LY4/k$c;Lw8/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LY4/k$c;->e(Lw8/c;Landroid/view/View;)V

    return-void
.end method

.method private synthetic e(Lw8/c;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, LY4/k$c;->a:LY4/k;

    invoke-static {p2, p1}, LY4/k;->q1(LY4/k;Lw8/c;)V

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
            "officialClass",
            "position"
        }
    .end annotation

    check-cast p1, LY4/g;

    check-cast p2, Lw8/c;

    invoke-virtual {p0, p1, p2, p3}, LY4/k$c;->d(LY4/g;Lw8/c;I)V

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

    invoke-virtual {p0, p1, p2}, LY4/k$c;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LY4/g;

    move-result-object p1

    return-object p1
.end method

.method public d(LY4/g;Lw8/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "officialClass",
            "position"
        }
    .end annotation

    iget-object p3, p1, LY4/g;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lw8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LY4/g;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, LY4/k$c;->a:LY4/k;

    invoke-virtual {p2}, Lw8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, LY4/k;->p1(LY4/k;LY4/g;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, LY4/l;

    invoke-direct {p3, p0, p2}, LY4/l;-><init>(LY4/k$c;Lw8/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LY4/g;
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

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY4/g;

    invoke-direct {p2, p1}, LY4/g;-><init>(Landroid/view/View;)V

    return-object p2
.end method
