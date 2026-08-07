.class public Lg6/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg6/j$a;


# direct methods
.method public constructor <init>(Lg6/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lg6/j$a$a;->a:Lg6/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lg6/j$a$a;->a:Lg6/j$a;

    iget-object v0, v0, Lg6/j$a;->b:Lg6/j;

    invoke-virtual {v0, p1}, Lf6/b;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf6/b;->n(Ljava/lang/String;)V

    return-void
.end method
