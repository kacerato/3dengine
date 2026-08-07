.class public LO6/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$f;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$f;


# direct methods
.method public constructor <init>(LO6/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO6/b$f$a;->a:LO6/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LO6/b$f$a;->a:LO6/b$f;

    iget-object v0, v0, LO6/b$f;->b:LO6/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
