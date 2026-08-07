.class public LQ5/j$I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP5/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$I;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LQ5/j$I;


# direct methods
.method public constructor <init>(LQ5/j$I;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$I$a;->b:LQ5/j$I;

    iput-object p2, p0, LQ5/j$I$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "inProjectPath"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object p1

    new-instance v0, LQ5/j$I$a$a;

    invoke-direct {v0, p0, p2, p1}, LQ5/j$I$a$a;-><init>(LQ5/j$I$a;Ljava/lang/String;LI7/a;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
