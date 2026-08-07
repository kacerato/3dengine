.class public LO6/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->m(LO6/a$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP6/c;

.field public final synthetic c:I

.field public final synthetic d:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;LP6/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$project",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LO6/a$a;->d:LO6/a;

    iput-object p2, p0, LO6/a$a;->b:LP6/c;

    iput p3, p0, LO6/a$a;->c:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LO6/a$a;->d:LO6/a;

    invoke-static {p1}, LO6/a;->g(LO6/a;)LO6/a$b;

    move-result-object p1

    iget-object v0, p0, LO6/a$a;->b:LP6/c;

    iget v1, p0, LO6/a$a;->c:I

    invoke-interface {p1, v0, v1}, LO6/a$b;->a(LP6/c;I)V

    return-void
.end method
