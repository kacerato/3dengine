.class public final synthetic Lf7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lf7/f;


# direct methods
.method public synthetic constructor <init>(Lf7/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/b;->b:Lf7/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf7/b;->b:Lf7/f;

    invoke-static {v0, p1}, Lf7/f;->p1(Lf7/f;Landroid/view/View;)V

    return-void
.end method
