.class public LW4/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW4/a;->l(LW4/a$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LX4/b;

.field public final synthetic c:I

.field public final synthetic d:LW4/a;


# direct methods
.method public constructor <init>(LW4/a;LX4/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$build",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LW4/a$a;->d:LW4/a;

    iput-object p2, p0, LW4/a$a;->b:LX4/b;

    iput p3, p0, LW4/a$a;->c:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LW4/a$a;->d:LW4/a;

    iget-object v1, p0, LW4/a$a;->b:LX4/b;

    iget v2, p0, LW4/a$a;->c:I

    invoke-static {v0, p1, v1, v2}, LW4/a;->g(LW4/a;Landroid/view/View;LX4/b;I)V

    return-void
.end method
