.class public LE6/a$f$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE6/a$f;->a(LZ7/a;LZ7/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:LE6/a$f;


# direct methods
.method public constructor <init>(LE6/a$f;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$file"
        }
    .end annotation

    iput-object p1, p0, LE6/a$f$a;->c:LE6/a$f;

    iput-object p2, p0, LE6/a$f$a;->b:Ljava/io/File;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, LE6/a$f$a;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LE6/a$f$a$a;

    invoke-direct {v0, p0}, LE6/a$f$a$a;-><init>(LE6/a$f$a;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    iget-object p1, p0, LE6/a$f$a;->c:LE6/a$f;

    iget-object p1, p1, LE6/a$f;->e:LE6/a;

    invoke-static {p1}, LE6/a;->p(LE6/a;)LE6/a$e;

    move-result-object p1

    invoke-interface {p1}, LE6/a$e;->b()V

    return-void
.end method
