.class public Le7/d$a$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7/d$a;->c(Le7/c;Le7/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le7/b;

.field public final synthetic c:Le7/d$a;


# direct methods
.method public constructor <init>(Le7/d$a;Le7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Le7/d$a$c;->c:Le7/d$a;

    iput-object p2, p0, Le7/d$a$c;->b:Le7/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Le7/d$a$c;->c:Le7/d$a;

    iget-object p1, p1, Le7/d$a;->b:Le7/a;

    iget-object v0, p0, Le7/d$a$c;->b:Le7/b;

    invoke-interface {p1, v0}, Le7/a;->a(Le7/b;)V

    return-void
.end method
