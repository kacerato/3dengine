.class public Lya/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/a;->g(Lya/H;Lya/a$d;)Lwd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lya/a$d;

.field public final synthetic b:Lya/H;


# direct methods
.method public constructor <init>(Lya/a$d;Lya/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lya/a$b;->a:Lya/a$d;

    iput-object p2, p0, Lya/a$b;->b:Lya/H;

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

    iget-object p1, p0, Lya/a$b;->a:Lya/a$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lya/a$b;->b:Lya/H;

    sget-object v1, Lya/H;->NUMBER:Lya/H;

    invoke-interface {p1, v0, v1}, Lya/a$d;->a(Lya/H;Lya/H;)V

    :cond_0
    return-void
.end method
