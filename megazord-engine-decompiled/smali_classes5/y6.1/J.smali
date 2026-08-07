.class public final synthetic Ly6/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ly6/I$b;

.field public final synthetic c:Ly6/I$c;


# direct methods
.method public synthetic constructor <init>(Ly6/I$b;Ly6/I$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/J;->b:Ly6/I$b;

    iput-object p2, p0, Ly6/J;->c:Ly6/I$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ly6/J;->b:Ly6/I$b;

    iget-object v1, p0, Ly6/J;->c:Ly6/I$c;

    invoke-static {v0, v1, p1}, Ly6/I$b;->c(Ly6/I$b;Ly6/I$c;Landroid/view/View;)V

    return-void
.end method
