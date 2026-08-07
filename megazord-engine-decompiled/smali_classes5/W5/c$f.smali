.class public LW5/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c;->k(LW5/c$i;ILandroid/content/Context;LW5/d;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/c;


# direct methods
.method public constructor <init>(LW5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW5/c$f;->a:LW5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LW5/c$f;->a:LW5/c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
