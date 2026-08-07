.class public Lyb/e$a$m$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$m$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$m$c;


# direct methods
.method public constructor <init>(Lyb/e$a$m$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$c$a;->a:Lyb/e$a$m$c;

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

    if-nez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    new-instance p2, Lyb/e$a$m$c$a$a;

    invoke-direct {p2, p0, p1}, Lyb/e$a$m$c$a$a;-><init>(Lyb/e$a$m$c$a;F)V

    const/4 p1, 0x1

    invoke-static {p1, p2}, LI7/a;->t1(ZLI7/a$d;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lyb/e$a$m$c$a$b;

    invoke-direct {p1, p0}, Lyb/e$a$m$c$a$b;-><init>(Lyb/e$a$m$c$a;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
