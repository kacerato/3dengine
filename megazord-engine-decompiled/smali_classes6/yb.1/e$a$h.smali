.class public Lyb/e$a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a;


# direct methods
.method public constructor <init>(Lyb/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$h;->a:Lyb/e$a;

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

    sget-object v0, LL4/a$e;->Right:LL4/a$e;

    new-instance v1, Lyb/e$a$h$a;

    invoke-direct {v1, p0}, Lyb/e$a$h$a;-><init>(Lyb/e$a$h;)V

    const-string v2, "Select new parent"

    invoke-static {p1, v0, v2, v1}, Lp7/b;->B1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Lp7/b$f;)Lp7/b;

    return-void
.end method
