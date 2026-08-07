.class public LO6/b$e$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO6/b$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$e$a;


# direct methods
.method public constructor <init>(LO6/b$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LO6/b$e$a$c;->a:LO6/b$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LO6/b$e$a$c;->a:LO6/b$e$a;

    iget-object p1, p1, LO6/b$e$a;->b:LO6/b$e;

    iget-object p1, p1, LO6/b$e;->b:LO6/b;

    invoke-static {p1}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object p1

    iget-object p1, p1, LP6/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LO6/b$e$a$c;->a:LO6/b$e$a;

    iget-object v0, v0, LO6/b$e$a;->b:LO6/b$e;

    iget-object v0, v0, LO6/b$e;->b:LO6/b;

    invoke-static {v0}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object v0

    iget-object v0, v0, LP6/c;->a:Ljava/lang/String;

    iget-object v1, p0, LO6/b$e$a$c;->a:LO6/b$e$a;

    iget-object v1, v1, LO6/b$e$a;->b:LO6/b$e;

    iget-object v1, v1, LO6/b$e;->b:LO6/b;

    invoke-static {v1}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object v1

    iget-object v1, v1, LP6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->g(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    return-void
.end method
