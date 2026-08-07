.class public Lyb/e$a$d$g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$d$g$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$g$d;


# direct methods
.method public constructor <init>(Lyb/e$a$d$g$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g$d$a;->a:Lyb/e$a$d$g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lyb/e$a$d$g$d$a$a;

    invoke-direct {p1, p0}, Lyb/e$a$d$g$d$a$a;-><init>(Lyb/e$a$d$g$d$a;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
