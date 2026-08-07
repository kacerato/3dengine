.class public Le8/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/e$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/e$a;


# direct methods
.method public constructor <init>(Le8/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le8/e$a$a;->a:Le8/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le8/e$a$a;->a:Le8/e$a;

    iget-object v0, v0, Le8/e$a;->c:Le8/e;

    iget v1, v0, Le8/e;->o:I

    invoke-static {v0}, Le8/e;->u(Le8/e;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Le8/e;->R(IZ)Le8/e;

    iget-object v0, p0, Le8/e$a$a;->a:Le8/e$a;

    iget-object v0, v0, Le8/e$a;->c:Le8/e;

    invoke-static {v0}, Le8/e;->v(Le8/e;)V

    return-void
.end method
