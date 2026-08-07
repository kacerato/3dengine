.class public Lc8/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc8/a;


# direct methods
.method public constructor <init>(Lc8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc8/a$c;->a:Lc8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radioGroup",
            "i"
        }
    .end annotation

    iget-object p1, p0, Lc8/a$c;->a:Lc8/a;

    invoke-static {p1, p2}, Lc8/a;->p1(Lc8/a;I)I

    iget-object p1, p0, Lc8/a$c;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->q1(Lc8/a;)Lo6/a;

    move-result-object p1

    invoke-static {}, Lo6/a$a;->values()[Lo6/a$a;

    move-result-object p2

    iget-object v0, p0, Lc8/a$c;->a:Lc8/a;

    invoke-static {v0}, Lc8/a;->o1(Lc8/a;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo6/a;->r(Lo6/a$a;)V

    iget-object p1, p0, Lc8/a$c;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->r1(Lc8/a;)Lc8/a$f;

    move-result-object p1

    invoke-interface {p1}, Lc8/a$f;->a()V

    return-void
.end method
