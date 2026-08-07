.class public final synthetic Ly6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ly6/l;


# direct methods
.method public synthetic constructor <init>(Ly6/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/d;->b:Ly6/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly6/d;->b:Ly6/l;

    invoke-static {v0, p1}, Ly6/l;->u1(Ly6/l;Landroid/view/View;)V

    return-void
.end method
