.class public Lyb/e$a$d$g$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$d$g$h;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$g$h;


# direct methods
.method public constructor <init>(Lyb/e$a$d$g$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$g$h$a;->a:Lyb/e$a$d$g$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "canceled"
        }
    .end annotation

    new-instance p2, Lyb/e$a$d$g$h$a$a;

    invoke-direct {p2, p0, p1}, Lyb/e$a$d$g$h$a$a;-><init>(Lyb/e$a$d$g$h$a;F)V

    invoke-static {p2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
