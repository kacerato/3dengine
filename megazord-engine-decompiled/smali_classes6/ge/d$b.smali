.class public final Lge/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/d;->h(Landroid/view/ViewGroup;I)Lge/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSpinnerAdapter.kt\ncom/skydoves/powerspinner/IconSpinnerAdapter$onCreateViewHolder$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation


# instance fields
.field public final synthetic b:Lge/d$a;

.field public final synthetic c:Lge/d;

.field public final synthetic d:Lhe/a;


# direct methods
.method public constructor <init>(Lge/d$a;Lge/d;Lhe/a;)V
    .locals 0

    iput-object p1, p0, Lge/d$b;->b:Lge/d$a;

    iput-object p2, p0, Lge/d$b;->c:Lge/d;

    iput-object p3, p0, Lge/d$b;->d:Lhe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lge/d$b;->b:Lge/d$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lge/d$b;->c:Lge/d;

    invoke-virtual {v0, p1}, Lge/d;->e(I)V

    :cond_1
    return-void
.end method
