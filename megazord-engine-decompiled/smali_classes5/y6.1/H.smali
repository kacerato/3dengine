.class public final synthetic Ly6/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ly6/I;


# direct methods
.method public synthetic constructor <init>(Ly6/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/H;->b:Ly6/I;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly6/H;->b:Ly6/I;

    invoke-static {v0, p1}, Ly6/I;->o1(Ly6/I;Landroid/view/View;)V

    return-void
.end method
