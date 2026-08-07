.class public LS4/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS4/a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LS4/a$b$a;


# direct methods
.method public constructor <init>(LS4/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LS4/a$b$a$a;->a:LS4/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LS4/a$b$a$a;->a:LS4/a$b$a;

    iget-object p1, p1, LS4/a$b$a;->b:LS4/a$b;

    iget-object p1, p1, LS4/a$b;->b:LS4/d;

    iget-object p1, p1, LS4/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lbd/i;->s(Ljava/lang/String;)V

    return-void
.end method
