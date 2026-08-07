.class public final Lge/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/b;->h(Landroid/view/ViewGroup;I)Lge/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpinnerAdapter.kt\ncom/skydoves/powerspinner/DefaultSpinnerAdapter$onCreateViewHolder$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
.end annotation


# instance fields
.field public final synthetic b:Lge/b$a;

.field public final synthetic c:Lge/b;

.field public final synthetic d:Lhe/a;


# direct methods
.method public constructor <init>(Lge/b$a;Lge/b;Lhe/a;)V
    .locals 0

    iput-object p1, p0, Lge/b$b;->b:Lge/b$a;

    iput-object p2, p0, Lge/b$b;->c:Lge/b;

    iput-object p3, p0, Lge/b$b;->d:Lhe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lge/b$b;->b:Lge/b$a;

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

    iget-object v0, p0, Lge/b$b;->c:Lge/b;

    invoke-virtual {v0, p1}, Lge/b;->e(I)V

    :cond_1
    return-void
.end method
