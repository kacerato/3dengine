.class public Lyb/e$a$m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$m;


# direct methods
.method public constructor <init>(Lyb/e$a$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$c;->a:Lyb/e$a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lyb/e$a$m$c$a;

    invoke-direct {p1, p0}, Lyb/e$a$m$c$a;-><init>(Lyb/e$a$m$c;)V

    const-string v0, "Decimate percentage"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v1, p1}, Lr7/e;->A1(Ljava/lang/String;FFFLr7/e$i;)V

    return-void
.end method
