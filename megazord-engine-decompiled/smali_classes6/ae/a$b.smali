.class public final Lae/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;LVd/b;)V
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

    iput-object p1, p0, Lae/a$b;->b:Lae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lae/a$b;->b:Lae/a;

    invoke-static {p1}, Lae/a;->L(Lae/a;)Lbe/b;

    move-result-object p1

    iget-object v0, p0, Lae/a$b;->b:Lae/a;

    invoke-static {v0}, Lae/a;->H(Lae/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lbe/b;->c(Landroid/view/View;)V

    return-void
.end method
