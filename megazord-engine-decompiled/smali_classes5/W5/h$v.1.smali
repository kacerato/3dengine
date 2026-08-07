.class public LW5/h$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;LW5/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(LW5/b;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$context",
            "val$positionInAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW5/h$v;->b:LW5/b;

    iput-object p2, p0, LW5/h$v;->c:Landroid/content/Context;

    iput p3, p0, LW5/h$v;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lf8/c;->Y()V

    iget-object v0, p0, LW5/h$v;->b:LW5/b;

    iget-object v0, v0, LW5/b;->Q:LW5/a;

    iget-object v0, v0, LW5/a;->h:LX5/g;

    iget-object v1, p0, LW5/h$v;->c:Landroid/content/Context;

    iget v2, p0, LW5/h$v;->d:I

    invoke-interface {v0, p1, v1, v2}, LX5/g;->a(Landroid/view/View;Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
