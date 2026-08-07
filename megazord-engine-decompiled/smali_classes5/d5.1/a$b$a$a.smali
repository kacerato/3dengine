.class public Ld5/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld5/a$b$a;


# direct methods
.method public constructor <init>(Ld5/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld5/a$b$a$a;->a:Ld5/a$b$a;

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

    iget-object p1, p0, Ld5/a$b$a$a;->a:Ld5/a$b$a;

    iget-object p1, p1, Ld5/a$b$a;->b:Ld5/a$b;

    iget-object p1, p1, Ld5/a$b;->b:Ld5/c;

    iget-object p1, p1, Ld5/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lbd/i;->s(Ljava/lang/String;)V

    return-void
.end method
