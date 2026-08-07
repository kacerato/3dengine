.class public LX7/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX7/f;->q(LX7/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LX7/i;

.field public final synthetic c:LX7/f;


# direct methods
.method public constructor <init>(LX7/f;LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LX7/f$e;->c:LX7/f;

    iput-object p2, p0, LX7/f$e;->b:LX7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lf8/c;->Y()V

    iget-object v0, p0, LX7/f$e;->c:LX7/f;

    invoke-static {v0}, LX7/f;->i(LX7/f;)LX7/g;

    move-result-object v0

    iget-object v1, p0, LX7/f$e;->b:LX7/i;

    invoke-interface {v0, v1, p1}, LX7/g;->b(LX7/i;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
