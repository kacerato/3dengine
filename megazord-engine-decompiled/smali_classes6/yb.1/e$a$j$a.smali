.class public Lyb/e$a$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP5/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$j;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$j;


# direct methods
.method public constructor <init>(Lyb/e$a$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$j$a;->a:Lyb/e$a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
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

    if-nez p1, :cond_0

    const-string p1, "No folder selected"

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lyb/e$a$j$a$a;

    invoke-direct {p2, p0, p1}, Lyb/e$a$j$a$a;-><init>(Lyb/e$a$j$a;Ljava/io/File;)V

    invoke-static {p2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
