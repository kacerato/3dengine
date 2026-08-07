.class public final Lae/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/a;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lae/a;


# direct methods
.method public constructor <init>(Lae/a;)V
    .locals 0

    iput-object p1, p0, Lae/a$c;->b:Lae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lae/a$c;->b:Lae/a;

    invoke-static {p1}, Lae/a;->F(Lae/a;)Lde/a;

    move-result-object p1

    invoke-virtual {p1}, Lde/a;->l()V

    return-void
.end method
