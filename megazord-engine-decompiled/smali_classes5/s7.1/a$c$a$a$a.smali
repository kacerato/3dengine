.class public Ls7/a$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls7/a$c$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls7/a$c$a$a;


# direct methods
.method public constructor <init>(Ls7/a$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$c$a$a$a;->a:Ls7/a$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Ls7/a$c$a$a$a;->a:Ls7/a$c$a$a;

    iget-object p1, p1, Ls7/a$c$a$a;->b:Landroid/view/View;

    sget-object v0, LL4/a$e;->Below:LL4/a$e;

    new-instance v1, Ls7/a$c$a$a$a$a;

    invoke-direct {v1, p0}, Ls7/a$c$a$a$a$a;-><init>(Ls7/a$c$a$a$a;)V

    const-string v2, "Delete"

    const-string v3, "Delete this commit?"

    invoke-static {p1, v0, v2, v3, v1}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method
