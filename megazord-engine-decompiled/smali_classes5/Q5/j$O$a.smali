.class public LQ5/j$O$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$O;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:LQ5/j$O;


# direct methods
.method public constructor <init>(LQ5/j$O;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$O$a;->b:LQ5/j$O;

    iput-object p2, p0, LQ5/j$O$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object v0

    iget-object v1, p0, LQ5/j$O$a;->a:Ljava/io/File;

    new-instance v2, LQ5/j$O$a$a;

    invoke-direct {v2, p0, v0}, LQ5/j$O$a$a;-><init>(LQ5/j$O$a;LI7/a;)V

    invoke-static {v1, p1, v2}, Lj4/e;->e(Ljava/io/File;Ljava/lang/String;Lj4/a;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
