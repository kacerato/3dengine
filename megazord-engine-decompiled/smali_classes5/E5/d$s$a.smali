.class public LE5/d$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/d$s;->a(Landroid/view/View;Landroid/content/Context;Le8/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LE5/d$D;

.field public final synthetic b:Le8/e;

.field public final synthetic c:LE5/d$s;


# direct methods
.method public constructor <init>(LE5/d$s;LE5/d$D;Le8/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$aspect",
            "val$tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/d$s$a;->c:LE5/d$s;

    iput-object p2, p0, LE5/d$s$a;->a:LE5/d$D;

    iput-object p3, p0, LE5/d$s$a;->b:Le8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LE5/d$s$a;->c:LE5/d$s;

    iget-object p1, p1, LE5/d$s;->a:LE5/d;

    iget-object v0, p0, LE5/d$s$a;->a:LE5/d$D;

    iput-object v0, p1, LE5/d;->l:LE5/d$D;

    iget-object p1, p0, LE5/d$s$a;->b:Le8/e;

    iget-object v0, v0, LE5/d$D;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le8/e;->h0(Ljava/lang/String;)V

    return-void
.end method
