.class public final synthetic Ly6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/a$d;


# instance fields
.field public final synthetic a:Ly6/l;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ly6/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/f;->a:Ly6/l;

    iput-object p2, p0, Ly6/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lya/H;Lya/H;)V
    .locals 2

    iget-object v0, p0, Ly6/f;->a:Ly6/l;

    iget-object v1, p0, Ly6/f;->b:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Ly6/l;->y1(Ly6/l;Landroid/view/View;Lya/H;Lya/H;)V

    return-void
.end method
