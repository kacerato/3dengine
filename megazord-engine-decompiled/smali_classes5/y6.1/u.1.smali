.class public final synthetic Ly6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# instance fields
.field public final synthetic a:Ly6/E;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Ly6/E;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/u;->a:Ly6/E;

    iput-object p2, p0, Ly6/u;->b:Ljava/util/List;

    iput-object p3, p0, Ly6/u;->c:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final refresh(I)V
    .locals 3

    iget-object v0, p0, Ly6/u;->a:Ly6/E;

    iget-object v1, p0, Ly6/u;->b:Ljava/util/List;

    iget-object v2, p0, Ly6/u;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, p1}, Ly6/E;->d(Ly6/E;Ljava/util/List;Landroid/widget/LinearLayout;I)V

    return-void
.end method
