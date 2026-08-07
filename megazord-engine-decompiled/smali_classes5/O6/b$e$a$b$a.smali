.class public LO6/b$e$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$e$a$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$e$a$b;


# direct methods
.method public constructor <init>(LO6/b$e$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LO6/b$e$a$b$a;->a:LO6/b$e$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backup"
        }
    .end annotation

    const-string v0, "Backup created successfully"

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    const-string v0, "Export project"

    const-string v1, "zip"

    invoke-static {p1, v0, v1}, Lbd/i;->t(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "Backup failed"

    invoke-static {v0, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
