.class public LC5/b$l$a$a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$l$a$a$a;->b(Landroid/view/View;LN5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN5/l;

.field public final synthetic c:LC5/b$l$a$a$a;


# direct methods
.method public constructor <init>(LC5/b$l$a$a$a;LN5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$4",
            "val$panel"
        }
    .end annotation

    iput-object p1, p0, LC5/b$l$a$a$a$a;->c:LC5/b$l$a$a$a;

    iput-object p2, p0, LC5/b$l$a$a$a$a;->b:LN5/l;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/b$l$a$a$a$a;->b:LN5/l;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object p1, p0, LC5/b$l$a$a$a$a;->c:LC5/b$l$a$a$a;

    iget-object p1, p1, LC5/b$l$a$a$a;->a:LC5/b$l$a$a;

    iget-object p1, p1, LC5/b$l$a$a;->b:LC5/b$l$a;

    iget-object p1, p1, LC5/b$l$a;->a:LC5/b$l;

    iget-object p1, p1, LC5/b$l;->d:LC5/b;

    invoke-virtual {p1}, Lz5/d;->D()V

    return-void
.end method
