.class public final synthetic LY4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LY4/d$d;

.field public final synthetic c:Lw8/c;


# direct methods
.method public synthetic constructor <init>(LY4/d$d;Lw8/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY4/e;->b:LY4/d$d;

    iput-object p2, p0, LY4/e;->c:Lw8/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LY4/e;->b:LY4/d$d;

    iget-object v1, p0, LY4/e;->c:Lw8/c;

    invoke-static {v0, v1, p1}, LY4/d$d;->c(LY4/d$d;Lw8/c;Landroid/view/View;)V

    return-void
.end method
