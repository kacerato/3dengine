.class public Lb6/b$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/b;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb6/b$d;->b:Lb6/b;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Lb6/b$d;->b:Lb6/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lb6/b;->r1(Lb6/b;F)F

    iget-object p1, p0, Lb6/b$d;->b:Lb6/b;

    invoke-static {p1}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object p1

    iget-object v0, p0, Lb6/b$d;->b:Lb6/b;

    invoke-static {v0}, Lb6/b;->o1(Lb6/b;)F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lb6/b$g;->b(I)V

    return-void
.end method
