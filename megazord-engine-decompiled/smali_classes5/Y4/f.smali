.class public final synthetic LY4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LY4/d$e;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LY4/d$e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY4/f;->b:LY4/d$e;

    iput-object p2, p0, LY4/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LY4/f;->b:LY4/d$e;

    iget-object v1, p0, LY4/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, LY4/d$e;->c(LY4/d$e;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
