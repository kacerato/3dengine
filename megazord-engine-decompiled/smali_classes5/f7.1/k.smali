.class public final synthetic Lf7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lf7/p;


# direct methods
.method public synthetic constructor <init>(Lf7/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/k;->b:Lf7/p;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf7/k;->b:Lf7/p;

    invoke-static {v0, p1}, Lf7/p;->b(Lf7/p;Landroid/view/View;)V

    return-void
.end method
