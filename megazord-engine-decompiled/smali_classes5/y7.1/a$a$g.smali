.class public Ly7/a$a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly7/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly7/a$a;


# direct methods
.method public constructor <init>(Ly7/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ly7/a$a$g;->a:Ly7/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const-string p1, ".java"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbd/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ly7/a$a$g$a;

    invoke-direct {v0, p0}, Ly7/a$a$g$a;-><init>(Ly7/a$a$g;)V

    invoke-static {p1, v0}, Lrd/c;->a(Ljava/lang/String;Lrd/g;)V

    return-void
.end method
