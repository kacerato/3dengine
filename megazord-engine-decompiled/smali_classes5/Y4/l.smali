.class public final synthetic LY4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LY4/k$c;

.field public final synthetic c:Lw8/c;


# direct methods
.method public synthetic constructor <init>(LY4/k$c;Lw8/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY4/l;->b:LY4/k$c;

    iput-object p2, p0, LY4/l;->c:Lw8/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LY4/l;->b:LY4/k$c;

    iget-object v1, p0, LY4/l;->c:Lw8/c;

    invoke-static {v0, v1, p1}, LY4/k$c;->c(LY4/k$c;Lw8/c;Landroid/view/View;)V

    return-void
.end method
