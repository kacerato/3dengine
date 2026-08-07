.class public LX7/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field public final synthetic c:LX7/m;

.field public final synthetic d:LX7/f;


# direct methods
.method public constructor <init>(LX7/f;LX7/i;LX7/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LX7/f$c;->d:LX7/f;

    iput-object p2, p0, LX7/f$c;->b:LX7/i;

    iput-object p3, p0, LX7/f$c;->c:LX7/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
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

    iget-object p1, p0, LX7/f$c;->d:LX7/f;

    invoke-static {p1}, LX7/f;->i(LX7/f;)LX7/g;

    move-result-object p1

    iget-object v0, p0, LX7/f$c;->b:LX7/i;

    invoke-interface {p1, v0}, LX7/g;->c(LX7/i;)V

    iget-object p1, p0, LX7/f$c;->d:LX7/f;

    iget-object v0, p0, LX7/f$c;->c:LX7/m;

    iget-object v1, p0, LX7/f$c;->b:LX7/i;

    invoke-static {p1, v0, v1}, LX7/f;->j(LX7/f;LX7/m;LX7/i;)V

    return-void
.end method
