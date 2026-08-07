.class public Le8/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/c$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/c$a;


# direct methods
.method public constructor <init>(Le8/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le8/c$a$a;->a:Le8/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le8/c$a$a;->a:Le8/c$a;

    iget-object v0, v0, Le8/c$a;->c:Le8/c;

    iget v1, v0, Le8/c;->p:I

    invoke-static {v0}, Le8/c;->u(Le8/c;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Le8/c;->Q(IZ)Le8/c;

    iget-object v0, p0, Le8/c$a$a;->a:Le8/c$a;

    iget-object v0, v0, Le8/c$a;->c:Le8/c;

    invoke-static {v0}, Le8/c;->v(Le8/c;)V

    return-void
.end method
