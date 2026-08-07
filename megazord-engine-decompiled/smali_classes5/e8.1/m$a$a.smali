.class public Le8/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/m$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/m$a;


# direct methods
.method public constructor <init>(Le8/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le8/m$a$a;->a:Le8/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le8/m$a$a;->a:Le8/m$a;

    iget-object v0, v0, Le8/m$a;->c:Le8/m;

    iget v1, v0, Le8/m;->o:I

    invoke-static {v0}, Le8/m;->u(Le8/m;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Le8/m;->R(IZ)Le8/m;

    iget-object v0, p0, Le8/m$a$a;->a:Le8/m$a;

    iget-object v0, v0, Le8/m$a;->c:Le8/m;

    invoke-static {v0}, Le8/m;->v(Le8/m;)V

    return-void
.end method
